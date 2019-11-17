import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';
class TravelGridWidget extends StatefulWidget {
  @override
  _TravelGridWidgetState createState() => _TravelGridWidgetState();
}

class _TravelGridWidgetState extends State<TravelGridWidget> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Container(
      width: double.infinity,
    
      color: Color.fromRGBO(240, 240, 240, 1.0),
      child: Container(
        margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
        
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5)
        ),

        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                _gridTopItem(),
                _gridTopItem(),
                _gridTopItem(),
                _gridTopItem(),
              ],
            ),
           Container(
             padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
             height: ScreenAdapter.setHeight(320),
             child:  GridView.builder(
               physics: NeverScrollableScrollPhysics(),
                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 5,
                 crossAxisSpacing: 5,
                 mainAxisSpacing: 5,
                 childAspectRatio: 1

             ), itemBuilder: (BuildContext context,int index){

               return  _gridCarItem();
             },
                 itemCount: 10
             ),
           ),
            _bottomCategory()
          ],
        ),

      ),

    );
  }

  Widget _bottomCategory(){

    return Row(
      children: <Widget>[
        _bottomCategoryItem(),
        _bottomCategoryItem(),
        _bottomCategoryItem()
      ],
    );
  }

  Widget _bottomCategoryItem(){
    return Expanded(
      flex: 1,
      child: Stack(
        children: <Widget>[
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          height: 1,
          child: Container(
            height: 1,
            color:Color.fromRGBO(240, 240, 240, 1.0),
          ),
        ),
          Positioned(
            right: 0,
            top: 0,
            width: 1,
            bottom: 0,
            child: Container(
              height: 1,
              color:Color.fromRGBO(240, 240, 240, 1.0),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 1,right: 1),
            alignment: Alignment.center,
            height: ScreenAdapter.setHeight(70),
            color: Colors.white,
            child: Text("会员中心"),
          ),
        ],
      )
    );
  }

  Widget _gridCarItem(){
    return Container(
      padding: EdgeInsets.only(top: 5,bottom: 5),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.network("https://b4-q.mafengwo.net/s12/M00/EC/7A/wKgED1uXVo-ARUNuAAAZgIPMiR4786.png",
          width: ScreenAdapter.setWidth(70),
          height: ScreenAdapter.setHeight(70)),
          Text("定制游",style: TextStyle(color: Color.fromRGBO(70, 70, 70, 1.0)),)
        ],
      ),
    );
  }
  Widget _gridTopItem(){
    return Expanded(
      flex: 1,
      child: Column(
        children: <Widget>[
          Image.network("https://n1-q.mafengwo.net/s12/M00/F0/D0/wKgED1uSTR2ANlV5AAAIyhBC28I002.png",
          width: ScreenAdapter.setWidth(150),
            height: ScreenAdapter.setHeight(150),
          ),
          Padding(
            padding: EdgeInsets.only(top: 0),
            child: Text("酒店"),

          )
        ],
      ),
    );
  }
}
