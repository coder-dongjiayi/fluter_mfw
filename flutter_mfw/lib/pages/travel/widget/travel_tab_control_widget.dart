import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';

import 'package:flutter_mfw/model/travel_list_model.dart';

typedef GestureTapCallback<int> = void Function(int value);

class TravelTabControlWidget extends StatefulWidget {

  FeedData feedData;
  Color backGroundColor;
 final GestureTapCallback onTap;

  TravelTabControlWidget({Key key,this.feedData,this.onTap,this.backGroundColor}) : super(key:key);

  @override
  _TravelTabControlWidgetState createState() => _TravelTabControlWidgetState();
}

class _TravelTabControlWidgetState extends State<TravelTabControlWidget> {

   var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    if(widget.feedData == null){
      return Text("");
    }

    ScreenAdapter.init(context);

    var index = 0;
    return Container(
      width: double.infinity,
      height: ScreenAdapter.setHeight(80),
      color: widget.backGroundColor,
      padding: EdgeInsets.only(left: 20,top: 0, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: widget.feedData.tabList.map((item){
          var widget =  _item(item.name,index);
          index ++;
          return widget;
        }).toList()
      ),
    );
  }

  Widget _item(title,index){

    return GestureDetector(
      onTap: (){
        widget.onTap(index);
       setState(() {
         _selectedIndex = index;
       });
      },
      child:  Text("${title}",style: TextStyle(fontWeight: _selectedIndex == index ? FontWeight.w600 : FontWeight.w400,fontSize: _selectedIndex == index ? 18 : 14),),

    );
  }
}
