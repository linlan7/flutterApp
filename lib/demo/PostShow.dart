import 'package:dyxflutter/model/post.dart';
import 'package:flutter/material.dart';

import '../view/image_build_view.dart';

class PostShow extends StatelessWidget {
  final Post post;

  PostShow({
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(post.title),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Image.network(post.imageUrl,width: double.infinity,height: 450,fit: BoxFit.fill,),
          Container(
            padding: EdgeInsets.all(32.0),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(post.title,style: Theme.of(context).textTheme.titleLarge,),
                Text(post.author,style: Theme.of(context).textTheme.titleSmall,),
                SizedBox(
                  height: 32.0,
                ),
                Text(post.description,style: Theme.of(context).textTheme.bodyText1)
              ],
            ),
          )
        ],
      ),
    );
  }
}
