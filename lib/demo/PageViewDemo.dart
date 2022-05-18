import 'package:flutter/material.dart';

import '../model/post.dart';

class PageViewDemo extends StatelessWidget {
  Widget pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand( //SizedBox铺满所有可用空间（SizedBox.expand）
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            verticalDirection: VerticalDirection.up,
            children: [
              Text(
                posts[index].title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                posts[index].author,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          bottom: 8,
          left: 8,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {

    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: pageItemBuilder,
    );
  }
}


///PageView 页面视图，控制页面横竖向滑动
class PageViewDemo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView(
        pageSnapping: false,

        ///滚顿效果是否自动吸附移动(列表样)
        reverse: true,

        ///是否将PageView页面倒置
        scrollDirection: Axis.horizontal,

        ///页面滚动方向
        onPageChanged: (position) => debugPrint(position.toString()),

        ///监听事件
        controller: PageController(

          ///PageView控制器
          // initialPage: 1,///默认显示
            keepPage: true,

            ///是否记住打开页面
            viewportFraction: 1

          ///当前占满屏幕的程度
        ),
        children: [
          Container(
            color: Colors.grey[100],
            alignment: Alignment(0, 0),
            child: Text(
              '一',
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 30,
                  color: Colors.black),
            ),
          ),
          Container(
            color: Colors.green[100],
            alignment: Alignment(0, 0),
            child: Text(
              '二',
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 30,
                  color: Colors.pink),
            ),
          ),
          Container(
            color: Colors.yellow[100],
            alignment: Alignment(0, 0),
            child: Text(
              '三',
              style: TextStyle(
                  fontStyle: FontStyle.italic, fontSize: 30, color: Colors.red),
            ),
          )
        ],
      ),
    );
  }
}
