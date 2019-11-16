import 'package:flutter/material.dart';
import 'package:flutter_mfw/model/hote_model.dart';
import 'package:flutter_mfw/screen_adapter.dart';

class HomeHoteTopicWidget extends StatefulWidget {
  var hoteList = <HoteItemModel>[];

  HomeHoteTopicWidget({Key key,this.hoteList}) : super(key:key);
  @override
  _HomeHoteTopicWidgetState createState() => _HomeHoteTopicWidgetState();
}

class _HomeHoteTopicWidgetState extends State<HomeHoteTopicWidget> {
  

  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    
  }
  
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Container(
     
      width: double.infinity,
      color: Colors.white,
      height: ScreenAdapter.setHeight(148),
      child: _hoteItemsWidget(),
    );
  }

  Widget _hoteItemsWidget(){
    return ListView(

      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
      scrollDirection: Axis.horizontal,
      children:widget.hoteList.map((item){

        return item.title == "热门玩法" ? _hoteWidget(item) : _itemWidget(item);
      }).toList(),
    );
  }

  Widget _positionWidget(){

    return  Positioned(
      left: 12,
      right: 12,
      bottom: 2,
      height: 10,
      child: Container(

        decoration: BoxDecoration(
            color: Color.fromRGBO(233, 235, 236, 1.0),
            borderRadius: BorderRadius.circular(10)
        ),

      ),
    );
  }
  ///热门玩法
  Widget _hoteWidget(HoteItemModel itemModel){
    return Stack(
      children: <Widget>[
     _positionWidget(),

    Container(
         margin: EdgeInsets.fromLTRB(10, 0, 10, 5),

         width: ScreenAdapter.setWidth(134),

         decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(4),

          ),
    child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
            Text("${itemModel.title}",style: TextStyle(color:Colors.white,fontSize: 12,fontWeight: FontWeight.w600)),
            Container(
                margin: EdgeInsets.only(top: 5),
                decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
                  ),
                 width: ScreenAdapter.setWidth(40),
                 height: ScreenAdapter.setHeight(40),
                child: Icon(Icons.keyboard_arrow_right,color: Colors.red,size: 20),
              )
         ],
       ),
    )
      ],
    );
  }

  Widget _itemWidget(HoteItemModel itemModel){
    return Stack(
      children: <Widget>[
        _positionWidget(),
    Container(
    margin: EdgeInsets.fromLTRB(0, 0, 10, 5),
    decoration: BoxDecoration(
    image:DecorationImage(
    image: NetworkImage("${itemModel.image}")
    ),

    ),
    width: ScreenAdapter.setWidth(190),
    child: Stack(
    children: <Widget>[
    Container(

    decoration: BoxDecoration(
    color: Color.fromRGBO(0, 0, 0, 0.5),
    borderRadius: BorderRadius.circular(4),
    ),
    ),
    Positioned(
    top: 5,
    left: 10,
    right: 10,
    child: Text("${itemModel.title}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),maxLines: 2),
    ),
    Positioned(
    bottom: 5,
    left: 5,
    right: 5,
    child: Text("${itemModel.subTitle}",maxLines: 1,overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 10,color: Color.fromRGBO(255, 255, 255, 0.7))),
    )
    ],
    ),
    )
      ],
    );
  }
}
