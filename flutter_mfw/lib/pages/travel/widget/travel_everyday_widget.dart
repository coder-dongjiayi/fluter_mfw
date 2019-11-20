import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';
class TravelEverydayWidget extends StatefulWidget {
  @override
  _TravelEverydayWidgetState createState() => _TravelEverydayWidgetState();
}

class _TravelEverydayWidgetState extends State<TravelEverydayWidget> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Container(
      height: ScreenAdapter.setHeight(520),
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: Column(
        children: <Widget>[
          _topRow(),
          _bottom()
        ],
      ),
    );
  }

  Widget _topRow(){

    return Row(
        children: <Widget>[
         Expanded(
           flex: 1,
           child:  _topLeftItem(),
         ),
          Expanded(
            flex: 1,
            child: _topRightItem(),
          )
        ],
    );
  }

  Widget _topRightItem(){
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.topLeft,
          height: ScreenAdapter.setHeight(220),
          color: Colors.white,
          padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(229, 239, 252, 1.0),
                  borderRadius: BorderRadius.circular(5)
                ),
                padding: EdgeInsets.fromLTRB(10, 0, 5, 0),
                child: Text("特价机票",style: TextStyle(color: Color.fromRGBO(79, 155, 251, 1.0),fontWeight: FontWeight.w600),),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color:Color.fromRGBO(224, 224, 224, 1.0),
                      offset: Offset(0, 2), //阴影xy轴偏移量
                      blurRadius: 2.0, //阴影模糊程度

                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                   Padding(padding: EdgeInsets.fromLTRB(5, 0, 0, 5),
                   child:  Text("北京出发",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600))),
                    Row(
                      children: <Widget>[
                       Padding(padding: EdgeInsets.fromLTRB(5, 0, 0, 10),
                       child:  Text("低价出发最划算",style: TextStyle(color: Color.fromRGBO(124, 124, 124, 1.0),fontSize: 12),)
                       ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 0, 10),
                        padding: EdgeInsets.fromLTRB(3, 0, 3, 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Color.fromRGBO(254, 230, 229, 1.0)
                        ),
                        child:   Text("特价",style: TextStyle(color: Color.fromRGBO(252, 123, 115, 1.0),fontSize: 12)),
                      )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
         height:  ScreenAdapter.setHeight(1),
         color: Color.fromRGBO(236, 236, 236, 1.0),
        ),
          Container(
          height: ScreenAdapter.setHeight(180),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(241, 247, 254, 1.0),
                    Color.fromRGBO(191, 218, 253, 1.0),
                  ]
              )
          ),


       )
      ],
    );
  }

  Widget _topLeftItem(){

    return Stack(
      children: <Widget>[
       Positioned(
         top: 0,
         bottom: 0,
         width: ScreenAdapter.setWidth(1),
         right: 0,
           child: Container(

         color: Color.fromRGBO(236, 236, 236, 1.0),
       )),
         Column(
            children: <Widget>[
             _topLeftTitle(),
            _topLeftImage(),
            _topLeftDesc()
        ],
      )
      ],
    );
  }

  Widget _topLeftDesc(){
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: Text("大理丽江4日深度纯玩全景游（一价包全0自费 3大古城 洱海全景旅拍 特色美食 高端住宿 拉市海湿地公园 洱海游船+骑行 24h管家式服务！）",
      maxLines: 2,overflow: TextOverflow.ellipsis,
      style: TextStyle(fontWeight: FontWeight.w500)),
    );
  }

  Widget _topLeftImage(){
    return Padding(padding: EdgeInsets.only(left: 10,top: 5,right: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Container(
          child: Stack(
            children: <Widget>[
              Positioned(
                bottom: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    alignment: Alignment.center,
                height: ScreenAdapter.setHeight(48),
                child: Padding(padding: EdgeInsets.only(left: 30),
                child: Text("已减1292元",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Color.fromRGBO(180, 116, 35, 1)),)),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(253, 224, 79, 1.0),
                        Color.fromRGBO(254, 240, 112, 1.0),
                      ]
                  ),
                ),
              )),
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: Text("￥388起",style: TextStyle(color: Colors.white,fontSize: 12),),
                  height: ScreenAdapter.setHeight(48),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)),
                    gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(251, 81, 71, 1.0),
                          Color.fromRGBO(252, 142, 73, 1.0),
                        ]
                    ),
                  ),
                ),
              )
            ],
          ),
          height: ScreenAdapter.setHeight(220),
          decoration: BoxDecoration(
              color: Colors.yellow,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage("https:\/\/p1-q.mafengwo.net\/s15\/M00\/33\/55\/CoUBGV3BNFeAGlv0AAw7GugMi6s625.png?imageMogr2/thumbnail/!714x330r/gravity/Center/crop/!714x330/quality/90/format/jpg")
              )
          ),
        ),
      ),
    );
  }

  Widget _topLeftTitle(){
    return Padding(padding: EdgeInsets.fromLTRB(10,10, 0, 0),
    child: Row(
      children: <Widget>[
        Text("每日蜂抢",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),

        Container(
          margin: EdgeInsets.only(left: 10),
          padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
         decoration: BoxDecoration(
           color: Colors.yellow,
           borderRadius: BorderRadius.circular(5)
         ),
          child: Text("天天有蜂抢券",style: TextStyle(fontSize: 10)),
        )
      ],
    ));
  }
  Widget _bottom(){
    return Container(
      height: ScreenAdapter.setHeight(95),

      color: Colors.white,
      child: Column(
        children: <Widget>[
      Container(
        height: ScreenAdapter.setHeight(1),

      color: Color.fromRGBO(236, 236, 236, 1.0),
    ),
          Row(

            children: <Widget>[
              Expanded(

                  child: Padding(padding: EdgeInsets.fromLTRB(15, 8, 8, 2),
                  child: Image.network("https://n1-q.mafengwo.net//s14//M00//17//B0//wKgE2l1eQrSAHqonAAAQXf6QRKk568.png?imageMogr2/format/jpg")
                    )

              ),

              Expanded(
                child: Padding(padding: EdgeInsets.fromLTRB(8, 8, 15, 2),
                child: Image.network("https:\/\/p2-q.mafengwo.net\/s14\/M00\/17\/CD\/wKgE2l1eQrqAWMHvAAAQlC_Nuo0253.png?imageMogr2/format/jpg"),)
              )
            
            ],
          )
        ],
      ),
    );
  }
}
