import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';
class LocationNearlyWidget extends StatefulWidget {
  @override
  _LocationNearlyWidgetState createState() => _LocationNearlyWidgetState();
}

class _LocationNearlyWidgetState extends State<LocationNearlyWidget> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Container(
      width: double.infinity,
  
      height: ScreenAdapter.setHeight(530),
      child: Container(
        child: Column(
                children: <Widget>[
                  _titleWidget(),
                  _nearlyListWidget()
                ],
        ),
        margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
        decoration: BoxDecoration(
          
          boxShadow: [
            BoxShadow(
              color:Color.fromRGBO(224, 224, 224, 1.0),
              offset: Offset(0, 2), //阴影xy轴偏移量
              blurRadius: 2.0, //阴影模糊程度

            )
          ],
          color: Color.fromRGBO(251, 251, 251, 1.0),
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Color.fromRGBO(224, 224, 224, 1.0),width: 0.2)
        ),
      ),
    );
  }


  //附近景点
  Widget _nearlyListWidget(){

    return Container(
      margin: EdgeInsets.only(top: 5),
      height: ScreenAdapter.setHeight(210),
      width: double.infinity,
      color: Colors.yellow,
      child: ListView(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _nearlyItemWidget(),

        ],
      ),

    );
  }

  //每一个景点选项
  Widget _nearlyItemWidget(){
    return Column(
      children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network("https://n4-q.mafengwo.net/s1/M00/6F/50/wKgIC1xWmuKAIRc8ABvON1lfBS461.jpeg?imageMogr2%2Fthumbnail%2F%21300x300r%2Fgravity%2FCenter%2Fcrop%2F%21300x300%2Fquality%2F90",
                  width: ScreenAdapter.setWidth(186),
                  height: ScreenAdapter.setHeight(135),
                  fit:BoxFit.cover,),
                )
              ],
            )
      ],
    );
  }

  //我的附近 地图
  Widget _titleWidget(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
            padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
            child: Text("我的附近",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600)),
        ),

        Container(
          width: ScreenAdapter.setWidth(120),
          height: ScreenAdapter.setHeight(50),
          margin: EdgeInsets.only(right: 10),

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
          ),
          child:  Row(
            children: <Widget>[
             Padding(padding:EdgeInsets.only(left: 10),child: Icon(Icons.local_library,size: 15)),
              Text("地图",style: TextStyle(fontSize: 10))
            ],
          ),
        )
      ],
    );
  }
}
