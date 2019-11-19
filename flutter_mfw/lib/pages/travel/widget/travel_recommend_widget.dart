import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';

import 'package:flutter_mfw/dao/location_dao.dart';
import 'package:flutter_mfw/model/location_where_model.dart';
class TravelRecommendWidget extends StatefulWidget {
  @override
  _TravelRecommendWidgetState createState() => _TravelRecommendWidgetState();
}

class _TravelRecommendWidgetState extends State<TravelRecommendWidget> {


  var _list = <ChildrenList>[];

  var _selectedIndex = 1;

  DataObject _salesDataObject;

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getData();
  }
  void _getData(){
    LocationWhereDao.fetch().then((reslut){

      setState(() {
        for(var item in reslut.data.dataList){

          if(item.style == "sales"){
            _salesDataObject = item.dataObject;
            _list = _salesDataObject.tagList[_selectedIndex].list;
            break;
          }
        }
      });


    }).catchError((error){

    });
  }
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    if(_salesDataObject == null){

      return Text("");
    }
    return Container(
      color: Color.fromRGBO(240, 240, 240, 1.0),
      width: double.infinity,

      child: Container(

        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
        ),
        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
            children: <Widget>[
              _title(),
              _titleTypeListView(),
              _titleCarListView()
            ],
        ),
      ),
    );
  }
  
  Widget _titleCarListView(){
    
    return Container(
    
      height: ScreenAdapter.setHeight(340),
      child: ListView(
        padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
        scrollDirection: Axis.horizontal,
        children: _list.map((item){

          return _titleCarItem(item);
        }).toList()
      ),

    );
  }

  Widget _titleCarItem(ChildrenList item){
    return Container(
      width: ScreenAdapter.setWidth(220),
      margin: EdgeInsets.only(right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _titleCarImageItem(item.type,item.thumbnail),
         Padding(
           padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
           child:  Text("${item.title}",style: TextStyle(fontSize: 15),maxLines: 2,overflow: TextOverflow.ellipsis,),
         ),
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: RichText(
              text: TextSpan(
                  children: [
                    TextSpan(
                        text: "${item.price.type}",
                        style:TextStyle(color: Color.fromRGBO(252, 85, 79, 1.0),fontSize: 10)
                    ),
                    TextSpan(
                        text: "${item.price.number}",
                        style:TextStyle(color: Color.fromRGBO(252, 85, 79, 1.0),fontSize: 18,fontWeight: FontWeight.w700)
                    ),
                    TextSpan(
                        text: " ${item.price.suffix}",
                        style:TextStyle(color: Color.fromRGBO(173, 176, 179, 1.0),fontSize: 12)
                    ),

                  ]
              ),
            ),
          )
        ],
      ),
    );
  }
  
  Widget _titleCarImageItem(type,imageUrl){

    return Stack(
      children: <Widget>[
        

        
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.network("${imageUrl}",
            width: ScreenAdapter.setWidth(220),
            height: ScreenAdapter.setHeight(145),
            fit: BoxFit.cover,

          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomRight: Radius.circular(8)),
              color: Color.fromRGBO(0, 0, 0, 0.7)
          ),
          child: Text("${type}",style: TextStyle(color: Colors.white,fontSize: 12)),
        ),
        
      ],
    );

  }

  //酒店、当地玩乐、门票、定制旅行
  Widget _titleTypeListView(){
     var _index = 0;
    return Container(
      height: ScreenAdapter.setHeight(90),
      child: ListView(
        padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
        scrollDirection: Axis.horizontal,
        children: _salesDataObject.tagList.map((item){

          var widget =   _titleTypeItem(item.title,_index);
          _index ++ ;
          return  widget;
        }).toList()
      ),
    );
  }

  Widget _titleTypeItem(title,index){

    return GestureDetector(
      onTap: (){
        setState(() {
          _selectedIndex = index;
          _list = _salesDataObject.tagList[_selectedIndex].list;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
        height: ScreenAdapter.setHeight(20),
        alignment:Alignment.center,
        decoration: BoxDecoration(
            color: index == _selectedIndex ? Color.fromRGBO(255, 242, 196, 0.8) : Colors.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
                color: Color.fromRGBO(232 , 232 , 232, 1.0),
                width: 1
            )

        ),
        child: Text("${title}",style:TextStyle(fontWeight: FontWeight.w500,fontSize: 12) ,),
      ),
    );
  }
  Widget _title(){

    return Padding(
      padding: EdgeInsets.only(top: 10,left: 10),
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 5),
            child: Text("专属推荐",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18)),

          ),

          Container(

            padding: EdgeInsets.fromLTRB(2, 0, 2, 0),
            decoration: BoxDecoration(
              color: Color.fromRGBO(252, 135, 136, 1.0),
              borderRadius: BorderRadius.circular(2)
            ),
            child: Text("北京",style: TextStyle(color: Colors.white,fontSize: 12)),
          )


        ],
      ),
    );
  }
}
