import 'package:flutter/material.dart';


import 'package:flutter_mfw/pages/location/widget/location_what_widget.dart';
import 'package:flutter_mfw/pages/location/widget/location_navbar_widget.dart';
import 'package:flutter_mfw/pages/location/widget/location_top_nav_widget.dart';
import 'package:flutter_mfw/pages/location/widget/location_adv_widget.dart';
import 'package:flutter_mfw/pages/location/widget/location_nearly_widget.dart';
class LocationPage extends StatefulWidget {
  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: <Widget>[
        _tabbarController(),
        LocationNavbarWidget(),
      ],
    );
  }

  Widget _tabbarController(){

    return DefaultTabController(

      length: 2,
      child: NestedScrollView(
          headerSliverBuilder: (context,inner){
            return [

              SliverToBoxAdapter(
                child: LocationTopNavWidget(),
              ),
              SliverToBoxAdapter(
                child: LocationNearlyWidget(),
              ),
              SliverToBoxAdapter(
                child: LocationWhatWidget(),
              )
            ];
          },
          body: PageView(

          )
      ),
    );
  }
}
