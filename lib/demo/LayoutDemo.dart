import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBoxDemo();
  }
}

class ConstrainedBoxDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,  //交叉轴的位置
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(//【ConstrainedBox】可以给child限定最大的和最小的宽高
              maxHeight: 200,
              maxWidth: 200,
            ),
            child: Container(//超出限定的宽高，并不会生效
              width: 330,
              height: 300,
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}

class AspectRatioDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 16.0 / 9.0,
            child: Container(
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }

}

//徽章自定义widget
class IconBadge extends StatelessWidget {
  IconData icon;
  double size;

  IconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size + 60,
        height: size + 60,
        color: Color.fromRGBO(3, 54, 255, 1),
        child: Icon(icon, size: size, color: Colors.white));
  }
}

//Stack自定义widget
class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      ///Column 横向排列
      ///Row 竖向排列
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        ///MainAxisAlignment有三种模式，类似约束布局的约束方法
        children: [
          Stack(
            children: [
              SizedBox(
                width: 200,
                height: 200,
                child: Container(
                  alignment: Alignment.bottomRight,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(9)),
                ),
              ),
              Positioned(
                  top: 10,
                  right: 10,
                  child: Icon(Icons.ac_unit, color: Colors.white, size: 10)),
              Positioned(
                  top: 30,
                  right: 30,
                  child: Icon(Icons.ac_unit, color: Colors.white, size: 10)),
              Positioned(
                  top: 50,
                  right: 10,
                  child: Icon(Icons.ac_unit, color: Colors.white, size: 10)),
              Positioned(
                  top: 70,
                  right: 30,
                  child: Icon(Icons.ac_unit, color: Colors.white, size: 10)),
              Positioned(
                  top: 90,
                  right: 10,
                  child: Icon(Icons.ac_unit, color: Colors.white, size: 10)),
              Positioned(
                  top: 110,
                  right: 30,
                  child: Icon(Icons.ac_unit, color: Colors.white, size: 10)),
              Positioned(
                  top: 130,
                  right: 10,
                  child: Icon(Icons.ac_unit, color: Colors.white, size: 10)),
              Positioned(
                  top: 150,
                  right: 30,
                  child: Icon(Icons.ac_unit, color: Colors.white, size: 10)),
              Positioned(
                  top: 170,
                  right: 10,
                  child: Icon(Icons.ac_unit, color: Colors.white, size: 10)),
              Positioned(
                  top: 190,
                  right: 30,
                  child: Icon(Icons.ac_unit, color: Colors.white, size: 10)),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 79,
                height: 79,
                child: Container(
                  ///Alignment子部件的对齐，分别为x和y轴，1为上限，0.0，0.0为中心,
                  ///正负控制上下，可超出父部件区域
                  alignment: Alignment(0, 0),
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      shape: BoxShape.circle,
                      gradient: RadialGradient(colors: [
                        Colors.blueAccent,
                        Colors.red,
                      ])),
                  child: Icon(Icons.close, color: Colors.black, size: 32),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          )
        ],
      ),
    );
  }
}
