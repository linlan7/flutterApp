//ListViewde类
import 'package:flutter/material.dart';
import '../model/post.dart';
//[ ../  ]表示上一级目录

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: listItemBuilder,
      itemCount: posts.length,
    );
  }

  Widget listItemBuilder(BuildContext context, int position) {
    //Container 容器
    return Container(
      color: Colors.white,
      //EdgeInsets 边缘
      margin: const EdgeInsets.all(8),
      //Column 柱子？竖向排列
      child: Column(
        children: <Widget>[
          Image.network(posts[position].imageUrl),
          const SizedBox(height: 16),
          Text(
            '标题：${posts[position].title}',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            '作者：${posts[position].author}',
            style: Theme.of(context).textTheme.subtitle2,
          ),
          const SizedBox(
            height: 16.0,
          )
        ],
      ),
    );
  }
}
