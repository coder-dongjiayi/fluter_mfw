import 'package:flutter_mfw/pages/my/widget/my_travel_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';
class MyTravelWidget extends StatefulWidget {
  @override
  _MyTravelWidgetState createState() => _MyTravelWidgetState();
}

class _MyTravelWidgetState extends State<MyTravelWidget> {
  
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Container(

     decoration: BoxDecoration(
       color: Colors.white,
       borderRadius: BorderRadius.circular(5)
     ),
      height: ScreenAdapter.setHeight(300),
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
      child: Stack(
        children: <Widget>[
         Padding(padding: EdgeInsets.only(top: 20),child:   Center(
           heightFactor: 2.0,
           child:  Column(
             mainAxisAlignment: MainAxisAlignment.center,

             children: <Widget>[
               Container(
                 alignment: Alignment.center,
                 width: ScreenAdapter.setWidth(410),
                 height: ScreenAdapter.setHeight(118),
                 child:Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     Image.asset("assets/images/qianbi.png",width: ScreenAdapter.setWidth(40),height: ScreenAdapter.setHeight(40)),
                     Text("上传照片",style: TextStyle(fontWeight: FontWeight.w700),),
                   ],
                 ),
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(30),
                     color: Color.fromRGBO(254, 234, 128, 1.0)
                 ),
               ),
               Padding(padding: EdgeInsets.only(top: 10),
                   child:  Text("如何使用照片记录旅行?",style: TextStyle(fontSize: 12,color: Color.fromRGBO(0, 137, 251, 1.0)),))
             ],
           ),
         ) ),
          Positioned(
              left: 10,
              top: 10,
              child: Text("我的旅行",style: TextStyle(fontWeight: FontWeight.w600))
          ),

        ],
      ),
    );
  }
}
