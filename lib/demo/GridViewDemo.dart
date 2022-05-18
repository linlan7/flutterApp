import 'package:dyxflutter/model/post.dart';
import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  List<Widget> buildTitles(int lenght) {
    return List.generate(//创建List
        lenght,
            (index) =>
            Container(
              color: Colors.grey[300],
              alignment: Alignment(0, 0),
              child: Text(
                'Item$index',
                style: TextStyle(fontSize: 18.0, color: Colors.grey),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 3,//横向数量
        crossAxisSpacing: 16,//边距主轴向
        mainAxisSpacing: 16,//边距交叉轴向
        scrollDirection: Axis.horizontal,//列表方向
        ///切换横竖向
        children: buildTitles(100));
  }
}


class GridViewExtentDemo extends StatelessWidget {
  List<Widget> buildTitles(int lenght) {
    return List.generate(
        lenght,
            (index) =>
            Container(
              color: Colors.grey[300],
              alignment: Alignment(0, 0),//相对于这个父布局的位置，可超出
              child: Text(
                'Item$index',
                style: TextStyle(fontSize: 18.0, color: Colors.grey),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
        maxCrossAxisExtent: 90,//交叉轴单个条目最大尺寸
        crossAxisSpacing: 16, //边距主轴向
        mainAxisSpacing: 16,//边距交叉轴向
        scrollDirection: Axis.vertical,//列表方向，主轴和交叉轴跟随改变
        ///切换横竖向
        children: buildTitles(100));
  }
}

//builder方式创建GridView
class GridViewBuilderDemo extends StatelessWidget {
  List<Widget> buildTitles(int lenght) {
    return List.generate(
        lenght,
            (index) =>
            Container(
              color: Colors.grey[300],
              alignment: Alignment(0, 0),//相对于这个父布局的位置，可超出
              child: Text(
                'Item$index',
                style: TextStyle(fontSize: 18.0, color: Colors.grey),
              ),
            ));
  }

  Widget gridItemBuilder(BuildContext context,int index){
      return Container(
        padding: EdgeInsets.all(8),
        child: Image.network(posts[index].imageUrl,fit: BoxFit.cover,),
      );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,    //固定交叉轴数量的网格布局数量
        crossAxisSpacing: 8.0,  //间距
        mainAxisSpacing: 8.0,
      ),
      itemBuilder:gridItemBuilder,
      itemCount: posts.length,
      scrollDirection: Axis.vertical,///切换横竖向
    );
  }
}
