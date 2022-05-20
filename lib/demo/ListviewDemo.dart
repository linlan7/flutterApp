//ListViewde类
import 'package:dyxflutter/demo/PostShow.dart';
import 'package:dyxflutter/view/image_build_view.dart';
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
        child: Stack(
          children: [
            Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: ImageBuildView(posts[position].imageUrl),
                ),
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
            Positioned.fill(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  splashColor: Colors.white.withOpacity(0.3),
                  highlightColor: Colors.white.withOpacity(0.1),
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PostShow(post: posts[position]),
                  )),
                ),
              ),
            ),
          ],
        ));
  }
}
