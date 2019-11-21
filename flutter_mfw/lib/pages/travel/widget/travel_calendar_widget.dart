import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';
import 'package:flutter_mfw/model/travel_header_model.dart';
class TravelCalendarWidget extends StatefulWidget {

  ColumnData  columnData;

  TravelCalendarWidget({Key key,this.columnData}) : super(key:key);

  @override
  _TravelCalendarWidgetState createState() => _TravelCalendarWidgetState();
}

class _TravelCalendarWidgetState extends State<TravelCalendarWidget> {

  var _selectMonthIndex = 0;

  @override
  Widget build(BuildContext context) {
    if(widget.columnData == null){
      return Text("");
    }
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
        children: widget.columnData.columnList[_selectMonthIndex].tabList.map((item){

          return  _monthCarItem(item);
        }).toList()
      ),
    );
  }
  Widget _monthCarItem(TabList tabItem){
    return Container(
      decoration: BoxDecoration(

        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage("${tabItem.bgImg}")
        ),
        borderRadius: BorderRadius.circular(5)
      ),
      padding: EdgeInsets.only(top: 20,left: 10),
      margin: EdgeInsets.only(right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _monthCarItemTitle(tabItem.title),
          _monthCarItemSubTitle(tabItem.subTitle),
          _monthColumList(tabItem.tabSubList)
        ],
      )
    );
  }

  Widget _monthCarItemTitle(title){
   return  Row(
     children: <Widget>[
       Text("${title}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),),
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
  Widget _monthCarItemSubTitle(subTitle){
    return Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
    child: Text("${subTitle}",style: TextStyle(fontSize: 11,color: Colors.white),));
  }

  Widget _monthColumList(List<TabSubList> subList){
    var list = subList.length > 2 ? subList.sublist(0,2) : subList;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
        children: list.map((item){
          return  _monthColumItem(item);
        }).toList()
    );
  }

  Widget _monthColumItem(TabSubList subItem){
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
              child:  LimitedBox(
                maxWidth: ScreenAdapter.setWidth(150),
                child: Text("${subItem.title}",style: TextStyle(fontWeight: FontWeight.w600),maxLines: 1),
              )),

              RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "￥",
                        style: TextStyle(color: Colors.red,fontSize: 10,fontWeight: FontWeight.w600)
                      ),
                      TextSpan(
                        text: "${subItem.price}",
                        style: TextStyle(color: Colors.red,fontSize: 13,fontWeight: FontWeight.w600)
                      ),
                      TextSpan(
                          text: "${subItem.priceSuffix}",
                          style: TextStyle(color: Color.fromRGBO(160, 160, 160, 1.0),fontSize: 11)
                      )
                    ]
                  ),
              ),

            ],
          ),
          Padding(padding: EdgeInsets.only(bottom: 0),
            child: Text("${subItem.subTitle}",style: TextStyle(color: Color.fromRGBO(160, 160, 160, 1.0),fontSize: 12)),)
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
    var index = 0;
    return Row(
      children: widget.columnData.columnList.map((item){
        var widget = _monthItem(item.tabName,index);
        index++;
        return widget;

      }).toList()
    );
  }
  Widget _monthItem(title,index){
    return GestureDetector(
      onTap: (){
        setState(() {
          _selectMonthIndex = index;
        });
      },
      child: Padding(padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
        child: Column(
          children: <Widget>[
            Text("${title}",style: TextStyle(fontWeight: FontWeight.w500),),
            Container(
              color: index == _selectMonthIndex ? Colors.yellow : Colors.white,
              width: ScreenAdapter.setWidth(40),
              height: ScreenAdapter.setHeight(5),
            )
          ],
        ),
      ),
    );
  }
}
