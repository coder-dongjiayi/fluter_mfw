import 'package:flutter/material.dart';
import 'package:flutter_mfw/pages/hotel/widget/hotel_banner_widget.dart';


class HotelPage extends StatefulWidget {
  @override
  _HotelPageState createState() => _HotelPageState();
}

class _HotelPageState extends State<HotelPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
         HoteBannerWidget()

      ],
    );
  }
}
