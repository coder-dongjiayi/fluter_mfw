import 'package:flutter/material.dart';

import 'package:flutter_mfw/screen_adapter.dart';
class LocationAdvWidget extends StatefulWidget {
  @override
  _LocationAdvWidgetState createState() => _LocationAdvWidgetState();
}

class _LocationAdvWidgetState extends State<LocationAdvWidget> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Container(
      width: double.infinity,
      height: ScreenAdapter.setHeight(220),
      decoration: BoxDecoration(
      color: Colors.white,
        boxShadow: [
          BoxShadow(
            color:Color.fromRGBO(249, 249, 249, 1.0),
            offset: Offset(0, -3), //阴影xy轴偏移量
            blurRadius: 1.0, //阴影模糊程度

          )
        ]
      ),
      child: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
            child: ClipRRect(
              borderRadius:BorderRadius.circular(6.0),
              child:Image.network("https://n3-q.mafengwo.net/s13/M00/65/1E/wKgEaV2heE2AQxaXAABPsykfmdM970.jpg") ,
            ),
          ),
          Positioned(
            bottom: 0,
              left: 0,
              right: 0,
              child: Container(
            color: Color.fromRGBO(233, 233, 233, 1.0),
            height: 0.5,
            width: double.infinity,
          ))
        ],
      ),

    );
  }
}
