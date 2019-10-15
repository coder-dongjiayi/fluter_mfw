import 'package:flutter/material.dart';

import 'package:flutter_mfw/model/hote_model.dart';
import 'package:flutter_mfw/model/waterfall_model.dart';
import 'package:flutter_mfw/pages/home/waterfall_widget/water_fallItem_widget.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_mfw/pages/home/widget/home_hote_topic_widget.dart';
import 'package:flutter_mfw/screen_adapter.dart';
class HomeWaterfallPage extends StatefulWidget {

  var id;

  var hoteList = <HoteItemModel>[];

  var waterfallList = <WaterFallItemModel>[];

  HomeWaterfallPage({Key key,this.id,this.hoteList,this.waterfallList}) : super(key:key);

  @override
  _HomeWaterfallPageState createState() => _HomeWaterfallPageState();
}

class _HomeWaterfallPageState extends State<HomeWaterfallPage> with AutomaticKeepAliveClientMixin{

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();


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
                itemCount: widget.waterfallList.length,
                itemBuilder: (context,index) => WaterfallItemWidget(item: widget.waterfallList[index]),
                 staggeredTileBuilder:(index) =>  StaggeredTile.fit(2),
             ),
           widget.id == "55" ? HomeHoteTopicWidget(hoteList: widget.hoteList) : Text("")

      ],
    );
  }
}
