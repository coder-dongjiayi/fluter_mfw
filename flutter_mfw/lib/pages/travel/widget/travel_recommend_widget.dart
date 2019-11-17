import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';
class TravelRecommendWidget extends StatefulWidget {
  @override
  _TravelRecommendWidgetState createState() => _TravelRecommendWidgetState();
}

class _TravelRecommendWidgetState extends State<TravelRecommendWidget> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
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
    
      height: ScreenAdapter.setHeight(330),
      child: ListView(
        padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _titleCarItem(),
          _titleCarItem(),
          _titleCarItem(),
          _titleCarItem(),
          _titleCarItem(),
          _titleCarItem(),
           _titleCarItem()
        ],
      ),

    );
  }

  Widget _titleCarItem(){
    return Container(
      width: ScreenAdapter.setWidth(220),
      margin: EdgeInsets.only(right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _titleCarImageItem(),
         Padding(
           padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
           child:  Text("北京首都宾馆北你您的",style: TextStyle(fontSize: 15),maxLines: 2,overflow: TextOverflow.ellipsis,),
         ),
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: RichText(
              text: TextSpan(
                  children: [
                    TextSpan(
                        text: "￥",
                        style:TextStyle(color: Color.fromRGBO(252, 85, 79, 1.0),fontSize: 10)
                    ),
                    TextSpan(
                        text: "200",
                        style:TextStyle(color: Color.fromRGBO(252, 85, 79, 1.0),fontSize: 18,fontWeight: FontWeight.w700)
                    ),
                    TextSpan(
                        text: " 起",
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
  
  Widget _titleCarImageItem(){

    return Stack(
      children: <Widget>[
        

        
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.network("https://p1-q.mafengwo.net/s11/M00/88/C3/wKgBEFrd42-ACzWbAAHPcaq6M5U60.jpeg?imageMogr2%2Fthumbnail%2F%21240x180r%2Fgravity%2FCenter%2Fcrop%2F%21240x180%2Fquality%2F85%2Fformat%2Fjpg",
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
          child: Text("酒店",style: TextStyle(color: Colors.white,fontSize: 12)),
        ),
        
      ],
    );

  }

  //酒店、当地玩乐、门票、定制旅行
  Widget _titleTypeListView(){
    return Container(
      height: ScreenAdapter.setHeight(90),
      child: ListView(
        padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _titleTypeItem(),
          _titleTypeItem(),
          _titleTypeItem(),
          _titleTypeItem()
        ],
      ),
    );
  }

  Widget _titleTypeItem(){

    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
       border: Border.all(
         color: Color.fromRGBO(232 , 232 , 232, 1.0),
         width: 1
       )

      ),
      child: Text("酒店",style:TextStyle(fontWeight: FontWeight.w500,fontSize: 15) ,),
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
