import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';
import 'package:flutter_mfw/model/location_model.dart';
class LocationWhatGridWidget extends StatefulWidget {

  var listWhatModel = <ListWhatModel>[];

  LocationWhatGridWidget({Key key,this.listWhatModel}) : super(key:key);

  @override
  _LocationWhatGridWidgetState createState() => _LocationWhatGridWidgetState();
}

class _LocationWhatGridWidgetState extends State<LocationWhatGridWidget> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);

    var firstList = <ListWhatModel>[];
    var seconeList = <ListWhatModel>[];
    var index = 0;
    for(var item in widget.listWhatModel){
      if(index <= 2){
        firstList.add(item);
      }else{
        seconeList.add(item);
      }

      index++;
    }
    return  Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
      Padding(
        padding: EdgeInsets.only(left: 15,right: 0),
        child:  Row(
          children: firstList.map((item){
            return  _gridItem(context,item.thumbnail,item.title,item.subtitle);
          }).toList()
        ),
      ),
        Padding(
          padding: EdgeInsets.only(left: 15,right: 0),
          child:  Row(
            children: seconeList.map((item){
              return  _gridItem(context,item.thumbnail,item.title,item.subtitle);
            }).toList()
          ),
        )

      ],
    );
  }

  Widget _gridItem(context,thumbnail,title,subTitle){
    return Container(

      width:  (MediaQuery.of(context).size.width-(15*2+20))/3.0,
      margin: EdgeInsets.only(right: 10),
      child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

               ClipRRect(
                   borderRadius:BorderRadius.circular(5),
                   child: Image.network("${thumbnail}",
                   width:double.infinity,
                   height: ScreenAdapter.setHeight(174),
                    fit:BoxFit.cover,

                )
               ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text("${title}",style: TextStyle(fontWeight: FontWeight.w600)),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text("${subTitle}",style: TextStyle(color: Color.fromRGBO(147, 147, 147, 1.0),fontSize: 12)),
              )
            ],
      ),
    );
  }



}
