import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  
  // 1. 데이터 선언하기
  bool _isFavorited = true;
  int _favoriteCount = 41;
  
  @override
  Widget build(BuildContext context) {
    print("build 함수 호출 됨???");
    return Row(
      children: [
        Container(
          // padding: EdgeInsets.zero,
          padding: const EdgeInsets.all(0),
          child: IconButton(
            onPressed: () {
              // print("사용자가 버튼을 눌렀어요!!!!");
              setState(() {
                if(_isFavorited) {
                  _favoriteCount -= 1;
                  _isFavorited = false;
                } else {
                  _favoriteCount += 1;
                  _isFavorited = true;
                }
              });
            },
            icon: _isFavorited ? Icon(Icons.star) : Icon(Icons.star_border),
          ),
        ),
        SizedBox(width: 18, child: Text('$_favoriteCount'),)
      ],
    );
  }
}
