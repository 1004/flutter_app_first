import 'package:flutter/material.dart';
import '../model/post.dart';

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.white,
            margin: EdgeInsets.all(8),
            child: Column(
              children: <Widget>[
                Image.network(posts[index].imgurl),
                SizedBox(height: 16),
                Text(posts[index].title,
                  style: Theme
                      .of(context)
                      .textTheme
                      .title,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                ),
                Text(posts[index].author,
                  style: Theme
                      .of(context)
                      .textTheme
                      .subhead,
                ),
                SizedBox(height: 16,)
              ],
            ),
          );
        }
    );
  }
}