import 'package:flutter/material.dart';


import 'package:flutter_mfw/pages/location/widget/location_navbar_widget.dart';
import 'package:flutter_mfw/pages/location/widget/location_top_nav_widget.dart';
class LocationPage extends StatefulWidget {
  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        LocationNavbarWidget(),
        LocationTopNavWidget()
      ],
    );
  }
}
