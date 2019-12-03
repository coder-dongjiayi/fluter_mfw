import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';
class TravelNavsearchWidget extends StatefulWidget {
  @override
  _TravelNavsearchWidgetState createState() => _TravelNavsearchWidgetState();
}

class _TravelNavsearchWidgetState extends State<TravelNavsearchWidget> {
  @override
  Widget build(BuildContext context) {
  ScreenAdapter.init(context);

    return Opacity(opacity: 0.5,
      child: Container(
          color: Colors.yellow,
          width: double.infinity,
          height: ScreenAdapter.setHeight(180)
      ),
    );
  }
}
