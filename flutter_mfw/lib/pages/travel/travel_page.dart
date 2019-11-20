import 'package:flutter/material.dart';
import 'package:flutter_mfw/pages/travel/widget/travel_banner_widget.dart';
import 'package:flutter_mfw/pages/travel/widget/travel_grid_widget.dart';
import 'package:flutter_mfw/pages/travel/widget/travel_recommend_widget.dart';
import 'package:flutter_mfw/pages/travel/widget/travel_everyday_widget.dart';


import 'package:flutter_mfw/dao/travel_dao.dart';
import 'package:flutter_mfw/model/travel_header_model.dart';
class TravelPage extends StatefulWidget {
  @override
  _TravelPageState createState() => _TravelPageState();
}

class _TravelPageState extends State<TravelPage> with AutomaticKeepAliveClientMixin{


  //轮播图信息
  BannerData _bannerData;

  //轮播图下面的卡片信息
  DynamicData _dynamicData;
  //渠道
  ChannelData _channelData;


  HotData _hotSaleData;

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getData();
  }

  void _getData(){

    TravelHeaderDao.fetch().then((response){
      setState(() {

        for(var item in response.data.bannerList){
          if(item.style == "banner"){
            _bannerData = item.bannerData;

          }
          if(item.style == "dynamic_activity"){
            _dynamicData = item.dynamicData;
          }
          if(item.style == "channel"){
            _channelData = item.channelData;
          }
          if(item.style == "hot_sale"){
            _hotSaleData = item.hotData;
          }
        }
      });

      }
    ).catchError((error){
      print(error);
    });

  }

  @override
  Widget build(BuildContext context) {

   return MediaQuery.removePadding(
      removeTop: true,
       context: context, child: ListView(

     children: <Widget>[
       TravelBannerWidget(
         bannerData: _bannerData,
         dynamicData: _dynamicData,
       ),
       TravelGridWidget(
         channelData: _channelData,
       ),
       TravelRecommendWidget(),
       TravelEverydayWidget(
         hotdata: _hotSaleData,
       )
     ],
   )
   );
  }
}
