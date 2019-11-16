import 'package:flutter/material.dart';
import 'package:flutter_mfw/model/location_tababr_model.dart';
import 'package:flutter_mfw/model/waterfall_model.dart';
import 'package:flutter_mfw/dao/home_dao.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_mfw/screen_adapter.dart';
import 'package:flutter_mfw/pages/home/waterfall_widget/water_fallItem_widget.dart';
import 'package:flutter_mfw/pages/location/widget/location_synthesize_widget.dart';
class LocationRecommendPage extends StatefulWidget {

  bool isShowSynthesize;

  var wanfaList = <LocationTababrModelDataDatalistDataBusinesslist>[];

  LocationRecommendPage({Key key,this.isShowSynthesize,this.wanfaList}) : super(key:key);

  @override
  _LocationRecommendPageState createState() => _LocationRecommendPageState();
}

class _LocationRecommendPageState extends State<LocationRecommendPage> with AutomaticKeepAliveClientMixin{

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getWaterFallData();
  }
  var _waterfallList = <WaterFallItemModel>[];
  //瀑布流数据
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
    return CustomScrollView(
      //physics: ScrollPhysics(),
      slivers: <Widget>[
        SliverToBoxAdapter(
          child:  widget.isShowSynthesize == true ? LocationSynthesizeWidget(
            wanfaList: widget.wanfaList,
          ) : Text(""),
        ),
        SliverToBoxAdapter(
          child:StaggeredGridView.countBuilder(
            padding: EdgeInsets.only(top: 1),
            physics: ScrollPhysics(),
            crossAxisCount: 4,
            shrinkWrap: true,
            primary:true,
            itemCount: _waterfallList.length,
            itemBuilder: (context,index) => WaterfallItemWidget(item: _waterfallList[index]),
            staggeredTileBuilder:(index) =>  StaggeredTile.fit(2),
          ),
        )
      ],
    );


  }
}
