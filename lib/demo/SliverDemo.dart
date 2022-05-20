import 'package:dyxflutter/view/image_build_view.dart';
import 'package:flutter/material.dart';

import '../model/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      ///自定义滚动视图  CustomScrollView
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            //AppBarlayout,页面顶部标题
            // title: Text("你好Flitter"),
            floating: true, //不同模式，向下滑动出现，向上滑动消失
            expandedHeight: 200.0,
            pinned: true,//当SliverAppBar内容滑出屏幕时，将始终渲染一个固定在顶部的收起状态
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(posts[6].imageUrl,fit: BoxFit.cover,),
              title: Visibility(
                visible: true,
                child: Text(
                  "你好Flitter".toUpperCase(),
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 3.0,
                  ),
                ),
              )
            ),
          ),
          SliverSafeArea(
            ///安全区，预留出系统状态栏等（SliverSafeArea）
            sliver: SliverPadding(
              padding: EdgeInsets.all(8),
              sliver: SliverGridViewDemo(),
            ),
          )
        ],
      ),
    );
  }
}

class SliverGridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
        delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
          return Container(
            child: Image.network(
              posts[index].imageUrl,
              fit: BoxFit.cover,
            ),
          );
        }, childCount: posts.length),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.8));
  }
}

//线性ListView
class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Padding(
          //设置padding   EdgeInsets
          padding: EdgeInsets.only(bottom: 32.0),
          //风格组件
          child: Material(
              //阴影
              elevation: 8.0,
              //圆角
              borderRadius: BorderRadius.circular(30),
              //阴影颜色
              shadowColor: Colors.grey.withOpacity(0.5),
              // child: Container(///一个容器【Container】
              // child: AspectRatio(///纵横比【AspectRatio】(xx/xx)固定宽高比
              //   aspectRatio: 16/9,
              //   child: Image.network(
              //     posts[index].imageUrl,
              //     fit: BoxFit.cover,
              //   ),
              // ),

              child: Stack(
                children: [
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: ImageBuildView(posts[index].imageUrl),
                  ),
                  Positioned(
                      top: 32,
                      left: 32,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            posts[index].title,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            posts[index].author,
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ))
                ],
              )),
        );
      }, childCount: posts.length),
    );
  }
}
