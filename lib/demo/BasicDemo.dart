import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BasicDemo extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return null;
  }
}


//富文本
class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
      text: TextSpan(
          text: "我是",
          style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.deepOrange,
              fontSize: 20,
              fontWeight: FontWeight.w100
          ),
          children: [
            TextSpan(
              text: "好人",
              style: TextStyle(
                  fontStyle: FontStyle.normal,
                  color: Colors.redAccent,
                  fontSize: 30,
                  fontWeight: FontWeight.w100
              ),
            )
          ]
      ),
    );;
  }

}

//普通文本
// ignore: must_be_immutable
class TextDemo extends StatelessWidget{
   TextStyle _textStyle = TextStyle(
      fontSize: 16
  );
  final String _author = "李白";

  @override
  Widget build(BuildContext context) {
    return Text(
      "<<$_author>>SDK联防联控世纪东方流口水的房间里扣水电费就是登陆开发时间都浪费水电费离开都是放假了",
      textAlign: TextAlign.center,
      style: _textStyle,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }

}