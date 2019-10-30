import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';
import 'package:flutter_mfw/model/location_tababr_model.dart';
typedef ValueChanged<T> = void Function(T value);

class LocationStickyCategoryWidget extends StatefulWidget {

  var selectIndex = 0;
  final ValueChanged<int> onTap;
  var tabbarTagList = <LocationTababrModelDataTagList>[];

  LocationStickyCategoryWidget({Key key,this.selectIndex,this.tabbarTagList,this.onTap}) : super(key:key);


  @override
  _LocationStickyCategoryWidgetState createState() => _LocationStickyCategoryWidgetState();
}

class _LocationStickyCategoryWidgetState extends State<LocationStickyCategoryWidget> {

  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    if(widget.tabbarTagList.length == 0) return Text("");
    return widget.selectIndex == 0 ? _scrollCategory() : Text("");
  }

  Widget _scrollCategory(){
    var index= 0;

    return Container(
      margin: EdgeInsets.only(top: 0,bottom: 0),

      height: ScreenAdapter.setHeight(86),
      color: Color.fromRGBO(250, 250, 250, 1.0),

      child: ListView(

          padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
          scrollDirection:Axis.horizontal,
          children: widget.tabbarTagList.map((item){
            var itemWidget =   _scrollItemCategroy(index,item.tagName);
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
          _selectedIndex = index;
          widget.onTap(index);
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: Text("${title}",style: TextStyle(fontWeight: index == _selectedIndex ? FontWeight.w700 : FontWeight.w400),),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: index == _selectedIndex ? Colors.white : Color.fromRGBO(237, 237, 237, 1.0),width: 0.5),
            color: index == _selectedIndex ? Color.fromRGBO(253, 213, 63, 1.0) :Colors.white
        ),

      ),
    );
  }
}
