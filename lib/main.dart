import 'package:flutter/material.dart';
import 'demo/BasicDemo.dart';
import 'model/post.dart';
import 'demo/listviewdemo.dart';
import 'demo/BottomNavigationBarDemo.dart';
void main()=>runApp(App());

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Home()
      ),
    theme: ThemeData(
      primarySwatch: Colors.yellow,
      highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
      splashColor: Colors.white70
    ),
    );
  }
}

class CustomeWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("hellworld",
      textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.blue
        ),
      ),
    );
  }
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
     length: 3,
     child: Scaffold(
       appBar: AppBar(
         title: Text("测试"),
         actions: <Widget>[
           IconButton(
             icon: Icon(Icons.search),
             tooltip: "Search",
             onPressed: ()=>debugPrint('Search button is pressed'),
           )
         ],
         bottom: TabBar(
           unselectedLabelColor: Colors.black38,
           indicatorColor: Colors.black54,
           indicatorSize: TabBarIndicatorSize.label,
           indicatorWeight: 1.0,
           tabs: <Widget>[
             Tab(
               icon: Icon(Icons.local_florist),
             ),
             Tab(
               icon: Icon(Icons.change_history),
             ),
             Tab(
               icon: Icon(Icons.directions_bike),
             ),
           ],
         ),
       ),
       body: TabBarView(
         children: <Widget>[
           Icon(Icons.local_florist,size: 128,color: Colors.black12),
           Icon(Icons.change_history,size: 128,color: Colors.black12),
           BasicDemo()
         ],
       ),
       drawer: Container(
         padding: EdgeInsets.all(8),
         margin: EdgeInsets.fromLTRB(0, 0, 100, 0),
         color: Colors.white,
         child: ListView(
           padding: EdgeInsets.zero,
           children: <Widget>[
             UserAccountsDrawerHeader(
               accountName: Text("xky",
                 style: TextStyle(
                   fontWeight: FontWeight.bold
                 ),
               ),
               accountEmail: Text(
                 "xiky@ke.com",
               ),
               currentAccountPicture: CircleAvatar(
                 backgroundImage: NetworkImage("https://www.baidu.com/img/pc_cc75653cd975aea6d4ba1f59b3697455.png")
               ),
               decoration: BoxDecoration(
                 color: Colors.yellow[400],
                 image: DecorationImage(
                   image: NetworkImage("https://www.baidu.com/img/pc_cc75653cd975aea6d4ba1f59b3697455.png"),
                   fit: BoxFit.cover,
                   colorFilter: ColorFilter.mode(
                       Colors.yellow[400].withOpacity(0.6),
                       BlendMode.hardLight)
                 )
               ),
             ),
             ListTile(
               title: Text(
                 "message",
                 textAlign: TextAlign.right,),
               trailing: Icon(
                 Icons.favorite,
                 color: Colors.black12,
                 size: 22,
               ),
               onTap: ()=>Navigator.pop(context),
             ),
             ListTile(
               title: Text(
                 "message",
                 textAlign: TextAlign.right,),
               trailing: Icon(
                 Icons.favorite,
                 color: Colors.black12,
                 size: 22,
               ),
             ),
             ListTile(
               title: Text(
                 "message",
                 textAlign: TextAlign.right,),
               trailing: Icon(
                 Icons.favorite,
                 color: Colors.black12,
                 size: 22,
               ),
             )
           ],
         ),
       ),
       bottomNavigationBar:BottomNavigationBarDemo()
     )
   );
  }
}


