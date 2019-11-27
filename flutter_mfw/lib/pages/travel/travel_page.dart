import 'package:flutter/material.dart';
import 'package:flutter_mfw/pages/travel/widget/travel_banner_widget.dart';
import 'package:flutter_mfw/pages/travel/widget/travel_grid_widget.dart';
import 'package:flutter_mfw/pages/travel/widget/travel_recommend_widget.dart';
import 'package:flutter_mfw/pages/travel/widget/travel_everyday_widget.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


import 'package:flutter_mfw/pages/travel/widget/travel_waterfall_widget.dart';
import 'package:flutter_mfw/pages/travel/widget/travel_tab_control_widget.dart';
import 'package:flutter_mfw/model/travel_list_model.dart';
import 'package:flutter_mfw/dao/travel_dao.dart';
import 'package:flutter_mfw/pages/travel/widget/travel_destination_widget.dart';
import 'package:flutter_mfw/model/travel_header_model.dart';
import 'package:flutter_mfw/pages/travel/widget/travel_calendar_widget.dart';
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

  //旅行日历
  ColumnData  _columnData;

  HotData _hotSaleData;


  StyleData _styleData;

  FeedData _feedData;

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getData();
    _getRecommendData();
  }

  void _getRecommendData(){
    TravelListDao.fetch().then((result){
      setState(() {

        for(var item in result.data.dataList){
          if(item.style == "recommend_mdd"){
            _styleData = item.styleData;
          }
          if(item.style == "feed_tab"){
            _feedData = item.feedData;
          }
        }

      });

    }).catchError((error){
      print(error);
    });
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
          if(item.style == "column_section"){
            _columnData = item.columnData;
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
       context: context,
       child: CustomScrollView(
         slivers: <Widget>[
           SliverToBoxAdapter(
             child: TravelBannerWidget(
               bannerData: _bannerData,
             ),
           ),
           SliverToBoxAdapter(
             child: TravelGridWidget(
               channelData: _channelData,
             ),
           ),
           SliverToBoxAdapter(
             child:  TravelRecommendWidget(),
           ),
           SliverToBoxAdapter(
             child: TravelEverydayWidget(
               hotdata: _hotSaleData,
             ),
           ),
           SliverToBoxAdapter(
             child: TravelCalendarWidget(
               columnData: _columnData,
             ),
           ),
           SliverToBoxAdapter(
             child: TravelDestinationWidget(
               styleData: _styleData,
             ),

           ),
           SliverToBoxAdapter(
             child: TravelTabControlWidget(
               feedData: _feedData,
             ),
           ),
         SliverToBoxAdapter(
            child: TravelWaterfallWidget(),
       )

         ],
       )
   );
  }
}
