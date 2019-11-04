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
            _itemWidget("我的收藏","https://n4-q.mafengwo.net/s12/M00/31/C8/wKgED1uXhA-AbQyvAAAiBit6y74637.png"),
            Padding(
              padding: EdgeInsets.fromLTRB(35, 0, 35, 0),
              child:  _itemWidget("我的订单","https://p4-q.mafengwo.net/s12/M00/E6/E1/wKgED1uXUoaAV7-tAAAdXfKX00o716.png"),
            ),
            _itemWidget("我的历史","https://b4-q.mafengwo.net/s12/M00/E7/CD/wKgED1uXUz-AAjHIAAAocBa4sgs237.png"),
          ],
        ),
      )
    );
  }

  Widget _itemWidget(title,imagePath){
    return Column(
      children: <Widget>[
        Image.network(imagePath,width: 30,height: 30),
       Padding(
         padding: EdgeInsets.only(top: 5),
         child:  Text("${title}"),
       )
      ],
    );
  }
}
