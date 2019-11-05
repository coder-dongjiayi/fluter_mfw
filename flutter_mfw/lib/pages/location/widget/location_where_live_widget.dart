import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';
class LocationWhereLiveWidget extends StatefulWidget {
  @override
  _LocationWhereLiveWidgetState createState() => _LocationWhereLiveWidgetState();
}

class _LocationWhereLiveWidgetState extends State<LocationWhereLiveWidget> {

  var _selectedIndex = 0;
  var _selectedTagIndex = 1;
  var _list = [
    {"title":"天安门周边",
      "subtitle":"29%的选择"
    },
    {"title":"北京站周边",
      "subtitle":"18%的选择"
    },
    {"title":"后海、南锣鼓巷周边",
      "subtitle":"16%的选择"
    },

  ];

  var _listTag = [
    "热门",
    "当地玩乐",
    "门票",
    "交通用车"
  ];

  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Column(
      children: <Widget>[

        _titleWhere("住哪里"),
        _livePrence(),
        _hotelListView(),
        _titleWhere("旅行商城"),
        _travelTagListView()
      ],
    );
  }



  Widget _travelTagListView(){
    var index  = 0;
    return Container(
      height: ScreenAdapter.setHeight(65),
      margin: EdgeInsets.only(top: 20),
      width: double.infinity,
      child: ListView(
        padding: EdgeInsets.only(left: 20),
        scrollDirection: Axis.horizontal,
        children: _listTag.map((item){


          var widget =  _travelTageItem(item,index);
          index ++;

          return widget;
        }).toList()
      ),
    );
  }

  Widget _travelTageItem(title,index){

    return GestureDetector(
      onTap: (){
        setState(() {
          _selectedTagIndex  = index;
        });
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Color.fromRGBO(230, 230, 230, 1.0),width:_selectedTagIndex == index ? 0 :  0.5),
          borderRadius: BorderRadius.circular(5),
          color: _selectedTagIndex == index ? Color.fromRGBO(254, 221, 83, 1.0) : Colors.white
        ),
        alignment: Alignment.center,
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Text("${title}",style:TextStyle(fontWeight: FontWeight.w700,fontSize: 15)),
      ),
    );
  }

  Widget _hotelListView(){

    return Column(
      children: <Widget>[
           Container(
                height: ScreenAdapter.setHeight(450),
                width: double.infinity,
                child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.fromLTRB(20, 20, 10, 0),
                children: <Widget>[
                       _hotelItem(),
                       _hotelItem(),
                       _hotelItem(),
                      _hotelItem(),
                      _hotelItem()
                ],
              ),

            ),
        Container(
          color: Color.fromRGBO(239, 239, 239, 1.0),
          margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
          height: ScreenAdapter.setHeight(2),
          width: double.infinity,
        )
      ],
    );
  }

  Widget _hotelItem(){
    return Container(
      width: ScreenAdapter.setWidth(310),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color:Color.fromRGBO(224, 224, 224, 1.0),
            offset: Offset(2, 4), //阴影xy轴偏移量
            blurRadius: 2.0, //阴影模糊程度

          )
        ]
      ),
      margin: EdgeInsets.only(right: 10,bottom: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          ClipRRect(
            borderRadius:BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5)),
            child: Image.network("https://p4-q.mafengwo.net/s12/M00/8A/3B/wKgED1wmvbmAIuErABz7fugWZd814.jpeg?imageMogr2%2Fthumbnail%2F%21300x300r%2Fgravity%2FCenter%2Fcrop%2F%21300x300%2Fquality%2F90",
              height: ScreenAdapter.setHeight(220),
              width: ScreenAdapter.setWidth(310),
              fit: BoxFit.cover,
            ),
          ),
         Padding(
           padding: EdgeInsets.only(left: 10,top: 5),
           child:  Text(
             "北京王府半岛酒店",
             maxLines: 1,
             overflow:TextOverflow.ellipsis,
             style: TextStyle(
               fontSize: 15,
               fontWeight: FontWeight.w600
             ),
           ),
         ),
          Padding(
            padding: EdgeInsets.only(left: 10,top: 0),
            child: Text("今日有102人关注",style: TextStyle(
                color: Color.fromRGBO(36, 38, 41, 1.0),
              fontSize: 12
            ),)
          ),
          Padding(
            padding: EdgeInsets.only(top: 15,left: 10),
            child: Row(
              children: <Widget>[
                Text("￥2047",style: TextStyle(
                  color: Color.fromRGBO(252, 75, 64, 1.0),
                  fontWeight: FontWeight.w700,
                  fontSize: 17
                ),),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("参考价格",style: TextStyle(
                      color: Color.fromRGBO(75, 76, 80, 1.0),
                      fontSize: 12
                  ),),
                )

              ],
            ),
          )

        ],
      ),
    );
  }
  
  Widget _livePrence(){
    var index = 0;
    return Container(
      height: ScreenAdapter.setHeight(132),
      width:  double.infinity,

      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
        children: _list.map((item){

          var widget = _livePrenceItem(item["title"],item["subtitle"],index);
          index ++;
          return  widget;
        }).toList()
      ),
    );
  }
  
  Widget _livePrenceItem(title,subTitle,index){
    
    return GestureDetector(
      onTap: (){
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.fromLTRB(5, 10, 5, 5),
        decoration: BoxDecoration(
            color: _selectedIndex == index ? Color.fromRGBO(254, 221, 83, 1.0) : Colors.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: _selectedIndex == index?Color.fromRGBO(254, 221, 83, 1.0):Color.fromRGBO(230, 230, 230, 1.0),width: 0.5)
        ),
        child: Column(
          children: <Widget>[
            Text("${title}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700)),
            Text("${subTitle}",style: TextStyle(fontSize: 12,color: Color.fromRGBO(84, 84, 84, 1.0)))
          ],
        ),

      ),
    );
  }
  
  Widget _titleWhere(title){

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text("${title}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
        ),
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text("查看更多",style: TextStyle(fontWeight: FontWeight.w200),),
              Icon(Icons.keyboard_arrow_right)
            ],
          ),
        )
      ],
    );
  }
}
