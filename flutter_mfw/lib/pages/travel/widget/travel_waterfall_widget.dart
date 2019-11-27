import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class TravelWaterfallWidget extends StatefulWidget {
  @override
  _TravelWaterfallWidgetState createState() => _TravelWaterfallWidgetState();
}

class _TravelWaterfallWidgetState extends State<TravelWaterfallWidget> {
  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      padding: EdgeInsets.only(top: 10),
      physics: ScrollPhysics(),
      crossAxisCount: 4,
      shrinkWrap: true,
      primary: true,
      itemCount: 10,
      itemBuilder: (context, index) => _articleWaterfallItem(),
      staggeredTileBuilder: (index) => StaggeredTile.fit(2),
    );
  }

  Widget _articleWaterfallItem(){
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          Image.network(
              "https://p1-q.mafengwo.net//s10//M00//4C//D0//wKgBZ1o3fGWAZVPUAAKl_7cO7r080.jpeg?imageMogr2/thumbnail/!350x250r/gravity/Center/crop/!350x250/quality/80"),

          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            color: Colors.white,
            child: _articleContainer(),
          )
        ],
      ),
    );
  }

  Widget _articleContainer(){

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _themeTitle(),
        _title()
      ],
    );

  }

  Widget _productWaterfallItem() {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.network(
              "https://p1-q.mafengwo.net//s10//M00//4C//D0//wKgBZ1o3fGWAZVPUAAKl_7cO7r080.jpeg?imageMogr2/thumbnail/!350x250r/gravity/Center/crop/!350x250/quality/80"),


          _themeTitle(),
          _title(),
          _bottomPrice()
        ],
      ),
    );
  }

  Widget _bottomPrice(){
    return Padding(
      padding: EdgeInsets.only(left: 5,right: 5,top: 10,bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          RichText(
            text: TextSpan(
                children: [
                  TextSpan(
                      text: "￥",
                      style: TextStyle(
                          color: Color.fromRGBO(252, 85, 74, 1.0),
                        fontSize: 10,
                        fontWeight: FontWeight.w600
                      )
                  ),
                  TextSpan(
                      text: "58880",
                      style: TextStyle(
                          color: Color.fromRGBO(252, 85, 74, 1.0),
                        fontWeight: FontWeight.w700,
                        fontSize: 15
                      )
                  ),
                  TextSpan(
                      text: "起",
                      style: TextStyle(
                          color: Color.fromRGBO(160, 160, 160, 1.0),
                          fontSize: 12,

                      )
                  )
                ]
            ),
          ),
          Text("已售12",style: TextStyle(color: Color.fromRGBO(160, 160, 160, 1.0),fontSize: 13),)
        ],
      ),
    );
  }
  Widget _title() {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 5),
      child: Text(
        "满足对冬天一切的幻想，北京往返日本北海道6天自由行",
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 15,

        ),
      ),
    );
  }

  Widget _themeTitle() {
    return Padding(
      padding: EdgeInsets.only(top: 5, left: 5),
      child: Text("北京出发自由行",
          style: TextStyle(
              color: Color.fromRGBO(195, 151, 97, 1.0),
              fontWeight: FontWeight.w600,
              fontSize: 12)),
    );
  }
}
