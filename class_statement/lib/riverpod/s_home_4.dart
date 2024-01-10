import 'package:class_statement/common/w_bottom_bar.dart';
import 'package:class_statement/riverpod/state/riverpod_badge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../common/models/vo_catalog.dart';
import 'f_cart.dart';
import 'f_catalog.dart';

// 상태가 있는 위젯 생성
class HomeScreen4 extends StatefulWidget {
  const HomeScreen4({super.key});

  @override
  State<HomeScreen4> createState() => _HomeScreen4State();
}

// 상태 관리 - StatefulWidget 활용
// 상태가 있는 위젯 생성
class _HomeScreen4State extends State<HomeScreen4> {

  // bottom navigation bar
  // 현재 선택된 index
  int currentIndex = 0;

  // 샘플 데이터 (local DB, 통신을 통해 데이터를 가져왔다고 가정)
  // late -> lazy loading
  late List<Catalog> responseListData; // null safety라서 초기화 안되면 오류가 나지만 late는 lazy loading이므로 가능

  // 메모리에 올라갈 때 딱 한번만 초기화되는 부분
  @override
  void initState() {
    super.initState();
    // 주의. initState <- 위젯을 업데이트 하는 코드를 사용하면 안된다!! (버그 발생할 가능성이 높음)
    // 가능한 데이터 초기화 처리만 사용하자
    responseListData = catalogListSample;
  }

  @override
  Widget build(BuildContext context) {
    // 3 - 위젯 트리에 등록
    return ProviderScope(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('My Catalog'),
        ),
        body: IndexedStack(
          index: currentIndex,
          children: const [
            // 자동으로 렌더링 되어야 하는 것들
            CatalogWidget(),
            CartWidget(),
          ],
        ),
        /// ref.watch 하면 build 전체가 다 렌더링 -> const 안쓰면 전체가 다 메모리에 다시 올라가야 됨
        /// 특정 부분만 렌더링 하고싶다면 (ex. bottom bar의 장바구니 개수 배지만)
        bottomNavigationBar: Consumer(
          //                 ref가 riverpod 참조 instance를 들고 있음
          builder: (context, ref, child) => BottomBar(
            currentIndex: currentIndex,
            // ref.watch(badgeProvider) -> int
            cartTotal: '${ref.watch(badgeProvider)}', // 계속 감지해야 되는 부분
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
