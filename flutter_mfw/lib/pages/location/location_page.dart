import 'package:flutter/material.dart';

import 'package:flutter_mfw/dao/location_dao.dart';
import 'package:flutter_mfw/model/location_model.dart';
import 'package:flutter_mfw/pages/location/widget/location_what_widget.dart';
import 'package:flutter_mfw/pages/location/widget/location_navbar_widget.dart';
import 'package:flutter_mfw/pages/location/widget/location_top_nav_widget.dart';
import 'package:flutter_mfw/pages/location/widget/location_adv_widget.dart';
import 'package:flutter_mfw/pages/location/widget/location_nearly_widget.dart';
class LocationPage extends StatefulWidget {
  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> with AutomaticKeepAliveClientMixin{



  var _scrollController;

  var _opacity = 0.0;

  WeatherModel _weatherModel;

  var _commListModel = <ListNavModel>[];
  var _categoryListModel = <ListNavModel>[];
  var _nearlyNavModel;
  var _cityGuideModel;

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _scrollController = ScrollController();
    _scrollController.addListener((){

      var offy =  _scrollController.position.pixels;
      _opacity = offy / 80.0;

      setState(() {
        _opacity = _opacity > 1.0 ? 1.0 : _opacity;
      });

    });

    LocationDao.fetch().then((reslut){

    setState(() {

      _weatherModel = reslut.data.ex;
      _commListModel = reslut.data.listModel[0].dataNavModel.listNavModel;
      _categoryListModel = reslut.data.listModel[1].dataNavModel.listNavModel;
      _nearlyNavModel = reslut.data.listModel[2].dataNavModel;
      _cityGuideModel = reslut.data.listModel[3].dataNavModel;

    });


    }).catchError((error){
      print(error);
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: <Widget>[
        _tabbarController(),
        LocationNavbarWidget(opacity: _opacity),
      ],
    );
  }

  Widget _tabbarController(){

    return DefaultTabController(

      length: 2,
      child: NestedScrollView(
        controller: _scrollController,
          headerSliverBuilder: (context,inner){
            return [

              SliverToBoxAdapter(
                child: LocationTopNavWidget(
                    weatherModel: _weatherModel,
                    commonList:_commListModel,
                    categorylList: _categoryListModel
                ),
              ),
              SliverToBoxAdapter(
                child: LocationNearlyWidget(
                  nearlyNavModel: _nearlyNavModel,
                ),
              ),
              SliverToBoxAdapter(
                child: LocationWhatWidget(
                  cityGuideModel: _cityGuideModel,
                ),
              )
            ];
          },
          body: PageView(

          )
      ),
    );
  }
}
