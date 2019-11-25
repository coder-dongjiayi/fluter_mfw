import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';
class TravelTabControlWidget extends StatefulWidget {
  @override
  _TravelTabControlWidgetState createState() => _TravelTabControlWidgetState();
}

class _TravelTabControlWidgetState extends State<TravelTabControlWidget> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);

    return Container(
      width: double.infinity,
      height: ScreenAdapter.setHeight(120),
      color: Colors.red,
    );
  }
}
