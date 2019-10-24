import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';
class LocationStyckyCategoryWidget extends StatefulWidget {
  var selectIndex = 0;
  LocationStyckyCategoryWidget({Key key,this.selectIndex}) : super(key:key);


  @override
  _LocationStyckyCategoryWidgetState createState() => _LocationStyckyCategoryWidgetState();
}

class _LocationStyckyCategoryWidgetState extends State<LocationStyckyCategoryWidget> {


  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return _scrollCategory();
  }

  Widget _scrollCategory(){
    var index= 0;
    var list = ["综合","近期好展","帝都赏秋","周边玩什么","美食"];
    return Container(
      margin: EdgeInsets.only(top: 0,bottom: 10),
      height: ScreenAdapter.setHeight(66),
      child: ListView(

          padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
          scrollDirection:Axis.horizontal,
          children: list.map((item){
            var itemWidget =   _scrollItemCategroy(index,item);
            index ++;
            return  itemWidget;
          }).toList()
      ),
    );
  }

  Widget _scrollItemCategroy(index ,title){
    return GestureDetector(
      onTap: (){
        setState(() {
          widget.selectIndex = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: Text("${title}",style: TextStyle(fontWeight: index == widget.selectIndex ? FontWeight.w700 : FontWeight.w400),),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: index == widget.selectIndex ? Colors.white : Color.fromRGBO(237, 237, 237, 1.0),width: 0.5),
            color: index == widget.selectIndex ? Color.fromRGBO(253, 213, 63, 1.0) :Colors.white
        ),

      ),
    );
  }
}
