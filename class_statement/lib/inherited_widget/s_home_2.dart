import 'package:class_statement/common/w_bottom_bar.dart';
import 'package:flutter/material.dart';

import '../common/models/vo_catalog.dart';
import 'f_cart.dart';
import 'f_catalog.dart';

// 상태가 있는 위젯 생성
class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key}); // 생성자

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

// 상태 관리 - StatefulWidget 활용
// 상태가 있는 위젯 생성
class _HomeScreen2State extends State<HomeScreen2> {

  // bottom navigation bar
  // 현재 선택된 index
  int currentIndex = 0;
  // 선택된 카탈로그 정보를 담을 수 있는 자료 구조 선언
  List<Catalog> catalogList = [
    // Catalog.name(color: Colors.red, title: '테스트 아이템1'),
    // Catalog.name(color: Colors.orange, title: '테스트 아이템2'),
  ]; // CatalogWidget, CartWidget에서 써야해서 부모인 HomeScreen에서 상태 관리

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

  // 콜백 받을 메서드 선언
  void onPressedCatalog(Catalog catalog) { // Obj를 callback으로 넘겨받을 것

    // 여기까지 event가 전달되는지 확인
    print('여기 HomeScreen 위젯 이벤트 발생');

    // 콜백이 일어나면 UI 업데이터 처리
    setState(() {
      if(catalogList.contains(catalog)) {
        // 리스트에 object를 포함하고 있다면 삭제 처리
        catalogList.remove(catalog);
      } else {
        catalogList.add(catalog);
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    print("HomeScreen build() 함수 호출");

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('My Catalog'),
      ),
      // index stack 사용
      body: IndexedStack(
        index: currentIndex,
        children: [
          CatalogWidget(
            responseListData: responseListData,
            cartCatalogList: catalogList,
            onPressedCatalog: onPressedCatalog
          ),
          CartWidget(
            cartList: catalogList,
            onPressedCatalog: onPressedCatalog,
          ),
        ],
      ),
      bottomNavigationBar: BottomBar(
        currentIndex: currentIndex,
        cartTotal: '${catalogList.length}',
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
