import 'package:flutter/material.dart';

import 'package:flutter_mfw/dao/home_dao.dart';
import 'package:flutter_mfw/model/hote_model.dart';
import 'package:flutter_mfw/model/waterfall_model.dart';
import 'package:flutter_mfw/pages/home/waterfall_widget/water_fallItem_widget.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:flutter_mfw/pages/home/widget/home_hote_topic_widget.dart';
import 'package:flutter_mfw/screen_adapter.dart';
class HomeWaterfallPage extends StatefulWidget {

  var id;

  var hoteList = <HoteItemModel>[];



  HomeWaterfallPage({Key key,this.id,this.hoteList}) : super(key:key);

  @override
  _HomeWaterfallPageState createState() => _HomeWaterfallPageState();
}

class _HomeWaterfallPageState extends State<HomeWaterfallPage> with AutomaticKeepAliveClientMixin{

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  var _waterfallList = <WaterFallItemModel>[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getWaterFallData();

  }

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
    return Stack(
      children: <Widget>[
             StaggeredGridView.countBuilder(
                padding: EdgeInsets.only(top: widget.id=="55" ?  ScreenAdapter.setHeight(148) : 0),
                physics: ScrollPhysics(),
                crossAxisCount: 4,
                shrinkWrap: true,
                primary:true,
                itemCount: _waterfallList.length,
                itemBuilder: (context,index) => WaterfallItemWidget(item: _waterfallList[index]),
                 staggeredTileBuilder:(index) =>  StaggeredTile.fit(2),
             ),
           widget.id == "55" ? HomeHoteTopicWidget(hoteList: widget.hoteList) : Text("")

      ],
    );
  }
}
