import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationBarState();
  }

}

class _BottomNavigationBarState extends State<BottomNavigationBarDemo>{
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.blue,
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        items:[
          BottomNavigationBarItem(
              title: Text(
                "首页",
              ),
              icon: Icon(
                Icons.home,
              )
          ),
          BottomNavigationBarItem(
              title: Text(
                "客源",
              ),
              icon: Icon(
                Icons.history,
              )
          ),
          BottomNavigationBarItem(
              title: Text(
                "房源",
              ),
              icon: Icon(
                Icons.help_outline,
              )
          ),
          BottomNavigationBarItem(
              title: Text(
                "我的",
              ),
              icon: Icon(
                Icons.my_location,
              )
          ),
        ]
    );
  }

}