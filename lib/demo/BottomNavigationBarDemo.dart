import 'package:flutter/material.dart';

class BottonnavigationBarDemo extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return BottomNavigationBarDemoState();
  }
}

class BottomNavigationBarDemoState extends State<BottonnavigationBarDemo>{

  int currentIndex = 0;

  void onTapListener(int index){
      setState((){
        currentIndex=index;
      });
  }

  @override
  Widget build(BuildContext context) {
   return BottomNavigationBar(
     onTap: onTapListener,
     currentIndex: currentIndex,
     type: BottomNavigationBarType.fixed,//大于4切换模式
     fixedColor: Colors.black,
     items: [
       BottomNavigationBarItem(icon: Icon(Icons.explore),label: 'explore'.toUpperCase(),),
       BottomNavigationBarItem(icon: Icon(Icons.history),label: 'history'.toUpperCase(),),
       BottomNavigationBarItem(icon: Icon(Icons.list),label: 'list'.toUpperCase(),),
       BottomNavigationBarItem(icon: Icon(Icons.person),label: 'person'.toUpperCase(),),
     ],
   );
  }
}

