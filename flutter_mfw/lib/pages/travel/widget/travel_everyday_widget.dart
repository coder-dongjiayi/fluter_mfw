import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';
import 'package:flutter_mfw/model/travel_header_model.dart';
class TravelEverydayWidget extends StatefulWidget {

  HotData hotdata;

  TravelEverydayWidget({Key key,this.hotdata}) : super(key:key);

  @override
  _TravelEverydayWidgetState createState() => _TravelEverydayWidgetState();
}

class _TravelEverydayWidgetState extends State<TravelEverydayWidget> {
  @override
  Widget build(BuildContext context) {
   if(widget.hotdata == null){
     return Text("");
   }

    ScreenAdapter.init(context);
    return Container(
      height: ScreenAdapter.setHeight(530),
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
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        _topRigthItemTop(),
        _topRigthItemBottom()
      ],
    );
  }

  Widget _topRigthItemBottom(){

    return Container(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
       alignment:Alignment.centerLeft,
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomRight: Radius.circular(10)),
              color: Color.fromRGBO(68, 145, 251, 1.0)
            ),
            child:  Text("特价酒店",style: TextStyle(color: Colors.white,fontSize: 13),),
          ),
           Padding(
             padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
             child: Text("${widget.hotdata.specialHotel.title}",style: TextStyle(fontSize:15,fontWeight: FontWeight.w600)),
           ),
           Padding(
             padding: EdgeInsets.fromLTRB(10, 5, 0, 20),
             child: Row(
               children: <Widget>[
                 Text("￥",style: TextStyle(color: Colors.red,fontSize: 10),),
                 Text("${widget.hotdata.specialHotel.price.number}",style: TextStyle(color: Colors.red,fontWeight: FontWeight.w600)),
                 Text("${widget.hotdata.specialHotel.price.suffix}",style: TextStyle(color: Color.fromRGBO(144, 147, 155, 1.0),fontSize: 12),),
                 Container(
                  margin: EdgeInsets.only(left: 10),

                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(3),
                       color: Color.fromRGBO(254, 230, 229, 1.0)
                   ),
                   child:   Text("${widget.hotdata.specialHotel.tag}",style: TextStyle(color: Color.fromRGBO(252, 123, 115, 1.0),fontSize: 12)),
                 )
               ],
             )

           )
         ],
       ),
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(5),
           gradient: LinearGradient(
               colors: [
                 Color.fromRGBO(241, 247, 254, 1.0),
                 Color.fromRGBO(191, 218, 253, 1.0),
               ]
           )
       ),
    );
  }

  Widget _topRigthItemTop(){
    return Container(
      alignment: Alignment.topLeft,
      color: Colors.white,
      margin: EdgeInsets.only(right: 10),
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
      child: Text("${widget.hotdata.product.title}",
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
                child: Text("${widget.hotdata.product.discount}",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Color.fromRGBO(180, 116, 35, 1)),)),
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
                  child: Text("￥"+"${widget.hotdata.product.price}"+"起",style: TextStyle(color: Colors.white,fontSize: 12),),
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
                  image: NetworkImage("${widget.hotdata.product.imgUrl}")
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
                  child: Image.network("${widget.hotdata.activity.activityList.first.imgUrl}")
                    )

              ),

              Expanded(
                child: Padding(padding: EdgeInsets.fromLTRB(8, 8, 15, 2),
                child: Image.network("${widget.hotdata.activity.activityList.last.imgUrl}"),)
              )
            
            ],
          )
        ],
      ),
    );
  }
}
