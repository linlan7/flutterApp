import 'package:dyxflutter/configure/configure.dart';
import 'package:dyxflutter/demo/BasicDemo.dart';
import 'package:dyxflutter/demo/DrawerDemo.dart';
import 'package:dyxflutter/demo/FormDemo.dart';
import 'package:dyxflutter/demo/LayoutDemo.dart';
import 'package:dyxflutter/demo/ListviewDemo.dart';
import 'package:dyxflutter/demo/NavigatorDemo.dart';
import 'package:dyxflutter/demo/SliverDemo.dart';
import 'package:dyxflutter/demo/ViewDemo.dart';
import 'package:flutter/material.dart';
import 'demo/BottomNavigationBarDemo.dart';

//return缩写 只有一行代码，或者返回使用 => fun();
void main() => runApp(App());
//无状态小部件  StatelessWidget
//有状态小部件  StatefulWidget
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //debug条幅
      initialRoute: '/Form',
      routes: {
        '/':(context)=>NavigatorDemo(),
        '/About':(context)=>PageDemo(titile: "About",),
        '/Home':(context)=>home(),
        '/Form':(context)=>FormDemo(),
      },
      // home: NavigatorDemo(),
      theme: ThemeData(
        primarySwatch: Colors.green,
        // highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        highlightColor: Colors.transparent, //点按高亮颜色（所有的material库中）
        splashColor: Colors.transparent, //点击水波纹效果颜色(所有的material库中）
        accentColor: Colors.green
      ),
    );
  }
}

//AS提交
class home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    //Tab标签控制器
    return DefaultTabController(
      length: 4, //标签数量
      child: Scaffold(
        //标签内容
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          //系统默认drawer添加一个menu?
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   //tooltip 说明作用  导航
          //   tooltip: 'Navigation',
          //   onPressed: () => debugPrint('这是导航点击事件'),
          // ),
          title: const Text('你好flutter'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              //tooltip 说明作用  导航
              tooltip: 'Search',
              onPressed: () => debugPrint('这是点击Search事件'),
            )
          ],
          elevation: 100,
          bottom: const TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.blue,
            indicatorWeight: 3.0,
            indicatorSize: TabBarIndicatorSize.label, //label=短 tab=等宽
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.location_history)),
              Tab(icon: Icon(Icons.local_airport)),
              Tab(icon: Icon(Icons.view_quilt))
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            BasicDemo(),
            LayoutDemo(),
            SliverDemo(),
            // Icon(Icons.local_airport, size: 128.0, color: Colors.black)Icon(Icons.local_airport, size: 128.0, color: Colors.black),
          ],
        ),
        drawer:drawerDemo(),
        bottomNavigationBar: BottonnavigationBarDemo()
      ),
    );
  }
}



