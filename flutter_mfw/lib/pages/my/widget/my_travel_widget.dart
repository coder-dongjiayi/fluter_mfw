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
      color: Colors.blue,
      height: ScreenAdapter.setHeight(300),
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
    );
  }
}
