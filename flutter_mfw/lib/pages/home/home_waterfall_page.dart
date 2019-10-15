import 'package:flutter/material.dart';

import 'package:flutter_mfw/model/hote_model.dart';
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
  var item1 = {
    "imageUrl":"https://n4-q.mafengwo.net/s14/M00/A3/38/wKgE2l0poF-AJptBAAvVgmZPcaY93.jpeg?imageMogr2%2Fthumbnail%2F%21600x600r%2Fstrip%2Fquality%2F90%2Fformat%2Fwebp%7Cwatermark%2F1%2Fimage%2FaHR0cHM6Ly9wNC1xLm1hZmVuZ3dvLm5ldC9zMTMvTTAwLzkyLzNEL3dLZ0VhVnhfaFRXQUFrVEVBQUJmN1M4NUt2MDI2Mi5wbmc_aW1hZ2VNb2dyMiUyRnRodW1ibmFpbCUyRjgxeCUyRnN0cmlwJTJGcXVhbGl0eSUyRjkw%2Fgravity%2FSouthWest%2Fdx%2F18%2Fdy%2F18",
    "width":2000,
    "height":1333
  };
  var item2 = {
    "imageUrl":"https://b1-q.mafengwo.net/s5/M00/C8/3D/wKgB3F2O8KiAThOKAANd1F6FZDA308.jpg?imageMogr2%2Fthumbnail%2F%21600x600r%2Fstrip%2Fquality%2F90%2Fformat%2Fwebp",
    "width":639,
    "height":853
  };
  var item3 = {
    "imageUrl":"https://b4-q.mafengwo.net/s14/M00/F5/19/wKgE2l0tTBaAQhHFAAu7Xzztbf8780.jpg?imageMogr2%2Fthumbnail%2F%21600x600r%2Fstrip%2Fquality%2F90%2Fformat%2Fwebp%7Cwatermark%2F1%2Fimage%2FaHR0cHM6Ly9wNC1xLm1hZmVuZ3dvLm5ldC9zMTMvTTAwLzkyLzNEL3dLZ0VhVnhfaFRXQUFrVEVBQUJmN1M4NUt2MDI2Mi5wbmc_aW1hZ2VNb2dyMiUyRnRodW1ibmFpbCUyRjgxeCUyRnN0cmlwJTJGcXVhbGl0eSUyRjkw%2Fgravity%2FSouthWest%2Fdx%2F18%2Fdy%2F18",
    "width":1920,
    "height":2560
  };
  var item4 = {
    "imageUrl":"https://b2-q.mafengwo.net/s9/M00/54/D9/wKgBs12JYiGACEYvAAEw11GtgGM302.jpg?imageMogr2%2Fthumbnail%2F%21400x400r%2Fstrip%2Fquality%2F90",
    "width":720,
    "height":1280
  };
  var item5 = {
    "imageUrl":"https://b3-q.mafengwo.net/s14/M00/41/51/wKgE2lz5BUeAa-iAAD3snF8QFE059.jpeg?imageMogr2%2Fthumbnail%2F%21600x600r%2Fstrip%2Fquality%2F90%2Fformat%2Fwebp%7Cwatermark%2F1%2Fimage%2FaHR0cHM6Ly9wNC1xLm1hZmVuZ3dvLm5ldC9zMTMvTTAwLzkyLzNEL3dLZ0VhVnhfaFRXQUFrVEVBQUJmN1M4NUt2MDI2Mi5wbmc_aW1hZ2VNb2dyMiUyRnRodW1ibmFpbCUyRjgxeCUyRnN0cmlwJTJGcXVhbGl0eSUyRjkw%2Fgravity%2FSouthWest%2Fdx%2F18%2Fdy%2F18",
    "width":1920,
    "height":2880
  };
  var item6 = {
    "imageUrl":"https://b3-q.mafengwo.net/s14/M00/1D/67/wKgE2l0PbTqAVlKlADuyZ0WIl-c873.jpg?imageMogr2%2Fthumbnail%2F%21600x600r%2Fstrip%2Fquality%2F90%2Fformat%2Fwebp%7Cwatermark%2F1%2Fimage%2FaHR0cHM6Ly9wNC1xLm1hZmVuZ3dvLm5ldC9zMTMvTTAwLzkyLzNEL3dLZ0VhVnhfaFRXQUFrVEVBQUJmN1M4NUt2MDI2Mi5wbmc_aW1hZ2VNb2dyMiUyRnRodW1ibmFpbCUyRjgxeCUyRnN0cmlwJTJGcXVhbGl0eSUyRjkw%2Fgravity%2FSouthWest%2Fdx%2F18%2Fdy%2F18",
    "width":2249,
    "height":3000
  };
  var _list = <Map>[];

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _list = [item1,item2,item3,item4,item5,item6,
      item1,item2,item3,item4,item5,item6,
      item1,item2,item3,item4,item5,item6];

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
                itemCount: _list.length,
                itemBuilder: (context,index) => WaterfallItemWidget(item: _list[index]),
                 staggeredTileBuilder:(index) =>  StaggeredTile.fit(2),
             ),
           widget.id == "55" ? HomeHoteTopicWidget(hoteList: widget.hoteList) : Text("")

      ],
    );
  }
}
