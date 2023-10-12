import 'package:flutter/material.dart';

class FavoritedWidget extends StatefulWidget {
  const FavoritedWidget({super.key});

  @override
  State<FavoritedWidget> createState() => _FavoritedWidgetState();
} // end of FavoritedWidget

class _FavoritedWidgetState extends State<FavoritedWidget> {

  // 1. 변수 선언 해보기
  bool _isFavorited = true;
  int _favoritedCount = 41;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: _isFavorited
                ? const Icon(Icons.star)
                : const Icon(Icons.star_border),
            onPressed: () {
              setState(() {
                if(_isFavorited) {
                  _isFavorited = false;
                  _favoritedCount -= 1;
                } else {
                  _isFavorited = true;
                  _favoritedCount += 1;
                }
              });
            },
          ),
        ),
        SizedBox(
          width: 18,
          child: Text('$_favoritedCount'),
        )
      ],
    );
  }
}
