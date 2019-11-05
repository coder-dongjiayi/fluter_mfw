import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';
import 'package:flutter_mfw/pages/location/widget/location_where_live_widget.dart';
class LocationReservePage extends StatefulWidget {
  @override
  _LocationReservePageState createState() => _LocationReservePageState();
}

class _LocationReservePageState extends State<LocationReservePage> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return  LocationWhereLiveWidget();
  }





}
