import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BasicDemo extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return ContainerDeom();
  }
}

//容器:边框，圆角,阴影,形状,渐变,背景
class ContainerDeom extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1590555361636&di=7ab8f72e2145b4436b1f4caef86a8f1e&imgtype=0&src=http%3A%2F%2Fp2.so.qhimgs1.com%2Ft01dfcbc38578dac4c2.jpg"),
          alignment: Alignment.topCenter,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.indigoAccent.withOpacity(0.5), BlendMode.hardLight)
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment:CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Icon(
              Icons.pool,
              size: 32,
              color: Colors.deepPurple,
            ),
            width: 90,
            height: 90,
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
//              borderRadius: BorderRadius.circular(18),
//            borderRadius: BorderRadius.only(
//              topLeft: Radius.circular(18)
//            ),
              border: Border.all(
                  color: Colors.deepOrange,
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0,16),
                  color: Color.fromRGBO(16, 20, 188, 1.0),
                  blurRadius: 25,
                  spreadRadius: -9
                )
              ],
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 28, 128, 1.0)
                ]
              )
            ),
          ),
          Container(
            child: Icon(
              Icons.pool,
              size: 32,
              color: Colors.red,
            ),
            width: 90,
            height: 90,
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(16),
            color: Color.fromRGBO(3, 54, 255, 1),
          ),
        ],
      ),
    );
  }

}

//富文本
class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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