import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';
class MyItemsWidget extends StatefulWidget {
  @override
  _MyItemsWidgetState createState() => _MyItemsWidgetState();
}

class _MyItemsWidgetState extends State<MyItemsWidget> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Container(

      height: ScreenAdapter.setHeight(160),
      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5)
      ),
      child: Container(
       margin: EdgeInsets.only(top: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: <Widget>[
            _itemWidget("我的收藏","assets/images/start.png"),
            Padding(
              padding: EdgeInsets.fromLTRB(35, 0, 35, 0),
              child:  _itemWidget("我的订单","assets/images/order.png"),
            ),
            _itemWidget("我的历史","assets/images/lishi.png"),
          ],
        ),
      )
    );
  }

  Widget _itemWidget(title,imagePath){
    return Column(
      children: <Widget>[
        Image.asset(imagePath,width: 30,height: 30),
       Padding(
         padding: EdgeInsets.only(top: 5),
         child:  Text("${title}"),
       )
      ],
    );
  }
}
