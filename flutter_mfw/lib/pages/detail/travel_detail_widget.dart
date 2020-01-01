import 'package:flutter/material.dart';

import 'package:flutter_mfw/screen_adapter.dart';
import 'package:flutter_mfw/pages/detail/detail_appbar_widget.dart';
import 'package:flutter_mfw/pages/detail/detail_carousel_widget.dart';
import 'package:flutter_mfw/dao/travel_detail_dao.dart';
import 'package:flutter_mfw/model/travel_detail_model.dart';
import 'package:flutter_mfw/pages/detail/detail_title_widget.dart';
import 'package:flutter_mfw/pages/detail/detail_content_widget.dart';
import 'package:flutter_mfw/pages/detail/detail_remind_widget.dart';
import 'package:flutter_mfw/pages/detail/detail_reply_widget.dart';
import 'package:flutter_mfw/pages/detail/detail_recommend_title_widget.dart';
import 'package:flutter_mfw/pages/home/home_waterfall_page.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_mfw/pages/home/waterfall_widget/water_fallItem_widget.dart';

import 'package:flutter_mfw/dao/home_dao.dart';
import 'package:flutter_mfw/model/hote_model.dart';
import 'package:flutter_mfw/model/waterfall_model.dart';

class TravelDetailWidget extends StatefulWidget {


  @override
  _TravelDetailWidgetState createState() => _TravelDetailWidgetState();
}

class _TravelDetailWidgetState extends State<TravelDetailWidget> {



   TravelDetailModel _travelDetailModel;

   var _owner;
   var _medias = <MediaModel>[];

   var _waterfallList = <WaterFallItemModel>[];

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getData();
    _getWaterFallData();
  }

   void _getData(){
     TravelDetailDao.fetch().then((value){
       _travelDetailModel = value;
       setState(() {
         _owner = _travelDetailModel.weng.owner;

         _medias = _travelDetailModel.weng.media;
       });

     });
   }

   void _getWaterFallData(){
     WaterFallDao.fetch().then((result){
       setState(() {

         _waterfallList = result.list;
       });

     });
   }
  @override
  Widget build(BuildContext context) {


  ScreenAdapter.init(context);
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title:DetailAppbarWidget(
            owner: _owner,
          ),
          elevation: 0,
          actions: <Widget>[
            Padding(padding: EdgeInsets.only(right: 10),
                child: Icon(Icons.more_horiz))
          ],
        ),
        body:SafeArea(
            child: Stack(
              children: <Widget>[
                _travelDetailModel == null ? Center(
                  child: Text("加载中"),
                ) :
                CustomScrollView(
                  slivers: <Widget>[
                    ///1、轮播图
                    SliverToBoxAdapter(
                      child: DetailCarouselWidget(
                        medias: _medias,
                      ),
                    ),
                    ///2、位置 坐标
                    SliverToBoxAdapter(
                      child: DetailTitleWidget(
                        title: _travelDetailModel.weng.title_edit,
                      ),
                    ),
                    ///3、 内容文字
                    SliverToBoxAdapter(
                      child: DetailContentWidget(
                        content: _travelDetailModel.weng.content,
                      ),
                    ),
                    ///4、文中提及
                    SliverToBoxAdapter(
                      child: DetailRemmindWidget(
                        favouriteList: _travelDetailModel.weng.favUsers,
                        replyNumber: _travelDetailModel.weng.num_reply,
                      ),
                    ),
                    ///5、回复列表
                    SliverToBoxAdapter(
                      child: DetailReplyWidget(
                        replies: _travelDetailModel.weng.replies,
                      ),
                    ),
                    ///6、相关推荐标题
                    SliverToBoxAdapter(
                      child: DetailRecommendTitleWidget(),
                    ),
                    ///7. 瀑布流
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 90),
                        child: HomeWaterfallPage(
                          id: 23,
                        ),
                      ),
                    )

                  ],
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(249, 249, 249, 1.0),
                            offset: Offset(0, -5), //阴影xy轴偏移量
                            blurRadius: 1.0, //
                          ),
                        ]
                    ),
                    height: ScreenAdapter.setHeight(120),
                  ),
                )
              ],
            )
        )


    );
  }


}


