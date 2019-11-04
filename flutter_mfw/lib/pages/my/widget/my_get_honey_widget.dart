import 'package:flutter/material.dart';

import 'package:flutter_mfw/screen_adapter.dart';
class MyGetHoneyWidget extends StatefulWidget {
  @override
  _MyGetHoneyWidgetState createState() => _MyGetHoneyWidgetState();
}

class _MyGetHoneyWidgetState extends State<MyGetHoneyWidget> {
  @override
  Widget build(BuildContext context) {
  ScreenAdapter.init(context);
    return Container(

      height: ScreenAdapter.setHeight(150),
      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
      decoration: BoxDecoration(
        image: DecorationImage(image:NetworkImage("https://n2-q.mafengwo.net/s14/M00/BF/00/wKgE2l0Hb2KAKFYXAACjGheCxCU116.png") )
      ),
    );
  }
}
