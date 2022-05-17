import 'package:flutter/material.dart';

class drawerDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Drawer(
       child: ListView(
         padding: EdgeInsets.zero,
         children: <Widget>[
           //用户账户类型drawer头
           UserAccountsDrawerHeader(
             accountName: Text("段宇昕",style: TextStyle(fontWeight:FontWeight.bold),),
             accountEmail:  Text("d_yuxin@126.com",style: TextStyle(fontWeight:FontWeight.bold),),
             currentAccountPicture: CircleAvatar(
               backgroundImage: NetworkImage('https://wx4.sinaimg.cn/orj360/8f555804gy1h2b86i5p75j21jk1jktz6.jpg'),
             ),
             decoration: BoxDecoration(
                 color: Colors.yellow[400],
                 image: DecorationImage(
                   image: NetworkImage('https://wx1.sinaimg.cn/mw2000/005FG1EDgy1h271xcw58tj34a02r1he0.jpg'),
                   fit: BoxFit.cover,
                   colorFilter: ColorFilter.mode(
                       Colors.green[100]!.withOpacity(0.6),
                       BlendMode.hardLight
                   ),
                 )
             ),
           ),
           // DrawerHeader(
           //   decoration: BoxDecoration(
           //     color: Colors.grey[100],
           //   ),
           //   child: Text("这是一个Text".toUpperCase()),
           // ),
           ListTile(
             onTap: () => Navigator.pop(context),
             title: const Text(
               '我的消息',
               textAlign: TextAlign.right,
             ),
             trailing: const Icon(
               Icons.message,
               color: Colors.black12,
               size: 22,
             ),
           ),
           ListTile(
             onTap: () => Navigator.pop(context),
             title: const Text(
               '我的喜欢',
               textAlign: TextAlign.right,
             ),
             trailing: const Icon(
               Icons.favorite,
               color: Colors.black12,
               size: 22,
             ),
           ),
           ListTile(
             onTap: () => Navigator.pop(context),
             title: const Text(
               '设置',
               textAlign: TextAlign.right,
             ),
             trailing: const Icon(
               Icons.settings,
               color: Colors.black12,
               size: 22,
             ),
           )
         ],
       )
     // Column(
     //   //竖向布局
     //   mainAxisAlignment: MainAxisAlignment.center, //主轴居中对齐
     //   children: <Widget>[
     //     Text("这是个抽屉"),
     //   ],
     // ),
   );
  }

}