import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ContainerDemo();
  }
}

/// 布局Container
class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey[200],
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage('https://wx4.sinaimg.cn/large/0069TDIhly1gz2wbmy0ldj343b64ux75.jpg'),
            alignment: Alignment.topCenter,///相对于这个BoxDecoration副布局的位置
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                       Colors.blueAccent[100]!.withOpacity(0.6),
                       BlendMode.hardLight
                   ),
        ),
      ),
      child: Row(//规定子控件横向摆放
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool,size: 32.0,color: Colors.white,),
            // color: Color.fromRGBO(3, 34, 255, 1),///不能个decoration中的color一起设置，否则报错
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(11),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 34, 255, 1),///尽量不与decration共用

              border: Border.all(///边框
                color: Colors.indigoAccent,
                width: 3,
                style: BorderStyle.solid,
              ),
                /**
                 * BorderRadius.circular(19)四周圆角
                 * BorderRadius.only(topLeft: Radius.circular(12)) 单独为某个位置增加圆角
                 */
              // borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  offset: Offset(8,8),
                  color:Colors.green,
                  blurRadius: 25,///模糊程度（半径）（可正负）
                  spreadRadius: 9 ///扩散程度（半径）（可正负）
                )
              ],
              shape: BoxShape.circle,///圆盒子shape（BoxShape.circle）和borderRadius（设置圆角）不能同时使用
              ///镜像渐变(至少两个颜色)
              // gradient: RadialGradient(
              //   colors: [
              //     Color.fromRGBO(7, 102, 255, 1.0),
              //     Color.fromRGBO(100, 11, 255, 1.0)
              //   ]
              // )
              ///线性渐变（可调整方向）
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Colors.red
                ],
                ///开始到结束
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
              )
            ),
          ),
        ],
      ),
    );
  }
}

/// 文本style
class TextDemo extends StatelessWidget {
  final String title = "问题";
  final String author = "张三";

  final TextStyle myTextStyle = TextStyle(fontSize: 18.0, color: Colors.red);

  @override
  Widget build(BuildContext context) {
    return Text(
      '《$title》\n $author\n在实现代码提示功能前，我们先来看看什么是代码提示，当我输入关键字String 时，如果输入到 Stri 的时候，编辑器会为我找出所有包含 Stri 的代码关键词，这个时候，我们只要选中需要输入的关键字，它就会为我补充剩余的单词，这个就是代码提示功能，那么在Flutter 中如何实现这一功能呢？',
      textAlign: TextAlign.center,
      style: myTextStyle,
      maxLines: 6,
      overflow:
          TextOverflow.ellipsis, //超出maxLines使用TextOverflow.ellipsi以【...】显示
    );
  }
}

/// 富文本
class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
          text: '无法卡就那份吧',
          style: TextStyle(
              color: Colors.blue,
              fontSize: 30,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w800),
          children: [
            TextSpan(
              text: '分手你就发觉',
              style: TextStyle(
                color: Colors.red,
                fontSize: 16,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w200,
              ),
            )
          ]),
    );
  }
}
