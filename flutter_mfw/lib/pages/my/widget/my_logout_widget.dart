import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';
import 'package:flutter_mfw/pages/my/widget/my_items_widget.dart';
class MyLogoutWidget extends StatefulWidget {
  @override
  _MyLogoutWidgetState createState() => _MyLogoutWidgetState();
}

class _MyLogoutWidgetState extends State<MyLogoutWidget> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    //    MyItemsWidget(),
    return Container(
      height: ScreenAdapter.setHeight(530),
      child: Stack(
        children: <Widget>[
          _unLog(),
         Positioned(
           bottom: 10,
             left: 0,
             right: 0,
             child:  MyItemsWidget()
         )
        ],
      ),
    );
  }

  Widget _unLog(){
   return Container(
     child: Container(
       alignment: Alignment.topLeft,
       width: double.infinity,
       padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
       height: ScreenAdapter.setHeight(400),
       color:  Color.fromRGBO(254, 217, 49, 1.0),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
           Text("Hi~欢迎来到马蜂窝",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w700)),
           Padding(
             padding: EdgeInsets.fromLTRB(0, 5, 0, 30),
             child:  Text("愿每一个旅行愿望得以达成"),
           ),
           Container(
             alignment: Alignment.center,
             width: ScreenAdapter.setWidth(260),
             height: ScreenAdapter.setWidth(90),
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(30),
                 color: Color.fromRGBO(36, 38, 41, 1.0)

             ),
             child: Text(
                 "登录/注册",
                 style: TextStyle(color: Color.fromRGBO(248, 215, 62, 1.0),fontSize: 16,fontWeight: FontWeight.w500)),
           )
         ],
       ),
     ),
   );
  }
}
