import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';
import 'package:flutter_mfw/pages/location/widget/location_where_live_widget.dart';
class LocationReservePage extends StatefulWidget {
  @override
  _LocationReservePageState createState() => _LocationReservePageState();
}

class _LocationReservePageState extends State<LocationReservePage> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);

    return  CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: LocationWhereLiveWidget(),
        ),
        SliverToBoxAdapter(
          child: Container(
            width: double.infinity,
            height: ScreenAdapter.setHeight(30),
          ),
        ),
        SliverList(

            delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index){
                   return _travelItem();
                 },
              childCount: 200
           )
        )

      ],
    );

  }

  Widget _travelItem(){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
      height: ScreenAdapter.setHeight(240),
      child: Row(
        children: <Widget>[
          _leftImageWidget()
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color:Color.fromRGBO(224, 224, 224, 1.0),
            offset: Offset(2, 2), //阴影xy轴偏移量
            blurRadius: 2.0, //阴影模糊程度

          )
        ]
      ),
    );

  }

  Widget _leftImageWidget(){
    return Container(
      width: ScreenAdapter.setWidth(190),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
           padding: EdgeInsets.fromLTRB(5, 2, 5, 2),

            child: Text("北京出发",style: TextStyle(color: Colors.white,fontSize: 11),),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomRight: Radius.circular(10)),
              color: Color.fromRGBO(0, 0, 0, 0.6)
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.fromLTRB(0, 2, 0, 2),
            child: Text("一日游",style: TextStyle(color: Colors.white,fontSize: 12),),

            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5)),
                color: Color.fromRGBO(0, 0, 0, 0.6)
            ),
          )

        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomLeft: Radius.circular(5)),
        image: DecorationImage(
          fit: BoxFit.cover,
            image: NetworkImage(
            "https://p4-q.mafengwo.net/s12/M00/57/C2/wKgED1wNzQuAep3YAADLvUjDmqk35.jpeg?imageMogr2%2Fthumbnail%2F%21240x180r%2Fgravity%2FCenter%2Fcrop%2F%21240x180%2Fquality%2F85%2Fformat%2Fjpg"))
      ),
    );
  }





}
