import 'package:flutter/material.dart';

import '../Configure/configure.dart';

class NavigatorDemo extends StatelessWidget {
  NavigatorDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: (){
                Navigator.pushNamed(context, '/Home');
              },
              child: Text('Home'),
            ),
            FlatButton(
              onPressed: (){
                Navigator.pushNamed(context, '/About');
              },
              child: Text('About'),
            ),
          ],
        ),
      ),
    );
  }
}





class PageDemo extends StatelessWidget {

  final String titile;


  PageDemo({this.titile=""});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(titile),
      ),floatingActionButton: FloatingActionButton(
      child: Icon(Icons.arrow_back),
      onPressed: (){
        Navigator.pop(context);
      },
    ),
    );
  }
}
