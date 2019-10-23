import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';
import 'package:flutter_mfw/model/location_model.dart';
import 'package:flutter_mfw/pages/location/widget/location_what_grid_widget.dart';
class LocationWhatWidget extends StatefulWidget {

  DataNavModel cityGuideModel;


  LocationWhatWidget({Key key,this.cityGuideModel}) : super(key:key);


  @override
  _LocationWhatWidgetState createState() => _LocationWhatWidgetState();
}

class _LocationWhatWidgetState extends State<LocationWhatWidget> {

  var _selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    if(widget.cityGuideModel == null){
      return Text("");
    }
    ScreenAdapter.init(context);
    return Column(
      children: <Widget>[
        _whatNav(),
        _scrollCategory(),
        LocationWhatGridWidget(
          listWhatModel: widget.cityGuideModel.tagList[_selectIndex].listWhatModel,
        ),
        _bottomSwitch()
      ],
    );
  }
  //上方导航
  Widget _whatNav(){
    return Container(
      margin: EdgeInsets.only(left: 15,right: 15),

      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Color.fromRGBO(237, 237, 237, 1.0),width: 1),
          bottom: BorderSide(color: Color.fromRGBO(237, 237, 237, 1.0),width: 1)
        )
      ),
      child: Row(
        children: widget.cityGuideModel.tabList.map((item){

          return _wahtItemNav(item.name);

        }).toList()
      ),
    );
  }
  
  Widget _wahtItemNav(title){
    
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 10, 20, 10),
      child: Text("${title}"),
    );
  }
  Widget _scrollCategory(){
    var index= 0;
    return Container(
      margin: EdgeInsets.only(top: 10,bottom: 10),
      height: ScreenAdapter.setHeight(66),
      child: ListView(

        padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
        scrollDirection:Axis.horizontal,
        children: widget.cityGuideModel.tagList.map((item){
          var itemWidget =   _scrollItemCategroy(index,item.title);
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
          _selectIndex = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: Text("${title}",style: TextStyle(fontWeight: index == _selectIndex ? FontWeight.w700 : FontWeight.w400),),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: index == _selectIndex ? Colors.white : Color.fromRGBO(237, 237, 237, 1.0),width: 0.5),
            color: index == _selectIndex ? Color.fromRGBO(253, 213, 63, 1.0) :Colors.white
        ),

      ),
    );
  }

  Widget _bottomSwitch(){
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: 15,right: 15),
      height: ScreenAdapter.setHeight(100),
      decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(color: Color.fromRGBO(237, 237, 237, 1.0),width: 1)
        )
      ),
      child: Text("查看更多",style: TextStyle(color:  Color.fromRGBO(81, 153, 251, 1.0))),
    );
  }
}
