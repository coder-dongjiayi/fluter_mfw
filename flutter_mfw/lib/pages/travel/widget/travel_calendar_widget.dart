import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';
class TravelCalendarWidget extends StatefulWidget {
  @override
  _TravelCalendarWidgetState createState() => _TravelCalendarWidgetState();
}

class _TravelCalendarWidgetState extends State<TravelCalendarWidget> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Container(
     decoration: BoxDecoration(
       color: Colors.white,
       borderRadius: BorderRadius.circular(5)
     ),
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Column(
        children: <Widget>[
          _titleDate(),
          _monthCarListView()
        ],
      ),
    );
  }

  Widget _monthCarListView(){

    return Container(
      height: ScreenAdapter.setHeight(400),
      margin: EdgeInsets.only(bottom: 10,top: 10),
      child: ListView(
        padding: EdgeInsets.only(left: 10),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _monthCarItem(),
          _monthCarItem(),
          _monthCarItem(),
          _monthCarItem(),
          _monthCarItem()
        ],
      ),
    );
  }
  Widget _monthCarItem(){
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(5)
      ),
      padding: EdgeInsets.only(top: 20,left: 10),
      margin: EdgeInsets.only(right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _monthCarItemTitle(),
          _monthCarItemSubTitle(),
          _monthColumList()
        ],
      )
    );
  }

  Widget _monthCarItemTitle(){
   return  Row(
     children: <Widget>[
       Text("海岛度假",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),),
       Container(
         margin: EdgeInsets.only(left: 10),
         alignment: Alignment.center,
         width: ScreenAdapter.setWidth(30),
         height: ScreenAdapter.setHeight(30),
         decoration: BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.circular(15)

         ),
         child: Icon(Icons.keyboard_arrow_right,size: 10,),
       )
     ],
   );
  }
  Widget _monthCarItemSubTitle(){
    return Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
    child: Text("避寒出行",style: TextStyle(fontSize: 11,color: Colors.white),));
  }

  Widget _monthColumList(){
    return Column(
        children: <Widget>[
          _monthColumItem(),
          _monthColumItem()
        ],
    );
  }

  Widget _monthColumItem(){
    return Container(
     decoration: BoxDecoration(
       color: Colors.white,
       borderRadius: BorderRadius.circular(5)
     ),
      margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              Padding(padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
              child:  Text("芽庄ㆍ6天",style: TextStyle(fontWeight: FontWeight.w600))),

              RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "￥",
                        style: TextStyle(color: Colors.red,fontSize: 10,fontWeight: FontWeight.w600)
                      ),
                      TextSpan(
                        text: "1890",
                        style: TextStyle(color: Colors.red,fontSize: 13,fontWeight: FontWeight.w600)
                      ),
                      TextSpan(
                          text: "起",
                          style: TextStyle(color: Color.fromRGBO(160, 160, 160, 1.0),fontSize: 11)
                      )
                    ]
                  ),
              ),

            ],
          ),
          Padding(padding: EdgeInsets.only(bottom: 0),
            child: Text("精选网红店",style: TextStyle(color: Color.fromRGBO(160, 160, 160, 1.0),fontSize: 12)),)
        ],
      ),
    );
  }
  Widget _titleDate(){
    
    return Padding(padding: EdgeInsets.only(left: 10,top: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text("旅行月历",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
        _monthList()
      ],
    ),);
  }

  Widget _monthList(){
    return Row(
      children: <Widget>[
        _monthItem(),
        _monthItem(),
        _monthItem()
      ],
    );
  }
  Widget _monthItem(){
    return Padding(padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
          child: Column(
            children: <Widget>[
              Text("11月",style: TextStyle(fontWeight: FontWeight.w500),),
              Container(
                color: Colors.yellow,
                width: ScreenAdapter.setWidth(40),
                height: ScreenAdapter.setHeight(5),
              )
            ],
          ),
    );
  }
}
