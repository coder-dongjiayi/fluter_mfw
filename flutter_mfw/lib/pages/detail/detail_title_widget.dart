import 'package:flutter/material.dart';
class DetailTitleWidget extends StatefulWidget {
  @override
  _DetailTitleWidgetState createState() => _DetailTitleWidgetState();
}

class _DetailTitleWidgetState extends State<DetailTitleWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
        child: Text("北京森林铁轨完全不输乌克兰的克莱文镇！美的像童话",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600)))
      ],
    );
  }
}
