import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ConstraineBoxDemo()
    );
  }

}


//ConstrainedBox : 带有限制的盒子
class ConstraineBoxDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: 200,
            maxWidth: 200
          ),
          child: Container(
            color: Colors.blue,
          ),
        )
      ],
    );
  }

}


//AspectRatio: 宽高比
class AspectRatioDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 3.0/2.0,
              child: Container(
                color: Colors.blueAccent,
                child: Icon(Icons.help_outline),
              ),
            )
          ],
        )
    );
  }

}

//SizeBox: 固定尺寸盒子，Alignment: 盒子内对齐方式
////Stack ： 一摞小部件，positiond: 位置小部件
class SizeBoxDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Stack(
          alignment: Alignment.topRight,
          children: <Widget>[
            SizedBox(
              width: 200,
              height: 200,
              child: Container(
                alignment: Alignment(1.0,1.0),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.history,color: Colors.white,),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              height: 100,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.history),
              ),
            ),
            Positioned(
              child: Icon(Icons.brightness_2,color: Colors.white,),
              left: 10,
              top: 10,
            )
          ],
        ),

      ],
    );
  }

}

// mainAxis【主轴】 : Row横着，Collumn 竖着，crossAxis【交叉轴】:和主轴垂直
class RowCollumn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        IconBadge(
            Icons.pool
        ),
        IconBadge(
            Icons.pool,
          size: 50,
        ),
        IconBadge(
            Icons.pool
        ),
      ],
    );
  }

}

//icon 盒子
class IconBadge extends StatelessWidget{
  final IconData _icon;
  final double size;

  IconBadge(this._icon,{
    this.size=26
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(3, 100, 255, 1.0),
      child: Icon(
        _icon,
        size: size,
      ),
      width: size+60,
      height: size+60,
    );
  }

}