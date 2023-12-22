import 'package:flutter/material.dart';
import 'package:flutter_class_04/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Card 위젯 활용 연습
class MyCarrotHeader extends StatelessWidget {
  const MyCarrotHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0.5,
      margin: EdgeInsets.zero,
      // round 처리 제거
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16),
        child: Column(
          children: [
            _buildProfileRow(),
            const SizedBox(height: 30,),
            _buildRoundTextButton(),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 동일하게 공간을 차지하라
              children: [
                _buildRoundMenuButton('판매내역', FontAwesomeIcons.receipt),
                _buildRoundMenuButton('구매내역', FontAwesomeIcons.shoppingBag),
                _buildRoundMenuButton('관심목록', FontAwesomeIcons.heart),
              ],
            )
            //
          ],
        ),
      ),
    );
  }
  
  Widget _buildProfileRow() {
    return Row(
      children: [
        Stack( 
          children: [ // Stack -> 겹칠 수 있는 위젯 구성 가능하므로 children 가질 수 있음
            SizedBox(
              width: 65,
              height: 65,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32.5),
                child: Image.network(
                  'https://picsum.photos/200/100',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[100]
                ),
                child: const Icon(
                  Icons.camera_alt_outlined,
                  size: 15
                ),
              ),
            )
          ], // children
        ),
        const SizedBox(width: 16),
        Column(
          children: [
            Text('developer', style: textTheme().displayMedium),
            SizedBox(height: 4),
            Text('좌동 #00912'),
          ],
        )
      ],
    );
  }

  Widget _buildRoundTextButton() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFD4D5DD),
          width: 1.0
        ),
        borderRadius: BorderRadius.circular(6.0)
      ),
      height: 45,
      child: Center(
          child: Text(
            '프로필 보기', style: textTheme().titleMedium,
        ),
      ),
    );
  }

  Widget _buildRoundMenuButton(String title, IconData iconData) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Color.fromRGBO(255, 226, 208, 1),
            border: Border.all(color: Color(0xFFD4D5DD), width: 0.5),
          ),
          child: Icon(iconData, color: Colors.orange,),
        ),
        SizedBox(
          height: 10,
        ),
        Text(title),
      ],
    );
  }

} // end of class
