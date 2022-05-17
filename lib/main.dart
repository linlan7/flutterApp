import 'package:dyxflutter/model/post.dart';
import 'package:flutter/material.dart';

//return缩写 只有一行代码，或者返回使用 => fun();
void main() => runApp(App());

//无状态小部件  StatelessWidget
//有状态小部件  StatefulWidget
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

//AS提交
class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: const Text('标题：你好'),
          elevation: 8,
        ),
        body: ListView.builder(
          itemBuilder: listItemBuilder,
          itemCount: posts.length,
        ));
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

class hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Hello World',
        textDirection: TextDirection.ltr, //文字从左到右
        style: TextStyle(
            fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.black87),
      ),
    );
  }
}
