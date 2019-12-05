import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';
import 'package:flutter_mfw/model/travel_header_model.dart';
class TravelGridWidget extends StatefulWidget {

  var channelData = ChannelData();
  TravelGridWidget({Key key,this.channelData}) : super(key:key);

  @override
  _TravelGridWidgetState createState() => _TravelGridWidgetState();
}

class _TravelGridWidgetState extends State<TravelGridWidget> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    if(widget.channelData == null){
      return Text("");
    }

    return Container(
      width: double.infinity,
    
      color: Color.fromRGBO(240, 240, 240, 1.0),
      child: Container(
        margin: EdgeInsets.fromLTRB(10, 15, 10, 10),
        
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5)
        ),

        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _topCategory(),
            _centerCategory(),
            _bottomCategory()
          ],
        )

      ),

    );
  }

  Widget _topCategory(){
    var topList = widget.channelData.channels.sublist(0,5);
    return Container(
      color: Color.fromRGBO(240, 240, 240, 1.0),
      padding: EdgeInsets.only(bottom: 15),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: topList.map((item){
            return Column(
              children: <Widget>[
                Image.network(
                    item.icon,
                    width: ScreenAdapter.setWidth(90),
                    height: ScreenAdapter.setHeight(90)
                ),
                Text(
                  item.title,
                  style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(70, 70, 70, 1.0)
                  ),
                )
              ],
            );
          }).toList()
      ),
    );
  }

  Widget _centerCategory(){

//    var itemWidth = (ScreenAdapter.getScreenWidth()/2.0-ScreenAdapter.setWidth(20))/5.0;
//
//
   var channeList = widget.channelData.channels.sublist(5);
//
//    var colum = (channeList.length % 5).ceil();

    var containHeight = 470.0;

    return Container(

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10)
      ),

      height: ScreenAdapter.setHeight(containHeight),
      child:  GridView.builder(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
              childAspectRatio: 1.0

          ), itemBuilder: (BuildContext context,int index){

        Channels channels = channeList[index];

        return  _gridCarItem(channels);
      },
          itemCount: channeList.length
      ),
    );
  }

  Widget _bottomCategory(){


    var _index = 0;
    return Row(
      children: widget.channelData.columns.map((item){

        var widget =  _bottomCategoryItem(item.imageUrl,_index);
        _index ++;
        return widget;
      }).toList(),
    );
  }

  Widget _bottomCategoryItem(imageURL,index){
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
              color:index==2 ? Colors.white : Color.fromRGBO(240, 240, 240, 1.0),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 1,right: 1),
            alignment: Alignment.center,
            height: ScreenAdapter.setHeight(70),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(index==0 ? 5 :0),bottomRight: Radius.circular(index==2 ? 5 :0)),
              color: Colors.white,
              image: DecorationImage(
                image: NetworkImage("${imageURL}")
              )
            ),
          ),
        ],
      )
    );
  }

  Widget _gridCarItem(Channels channel){
    return Container(
      //padding: EdgeInsets.only(top: 5,bottom: 5),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.network("${channel.icon}",
          fit: BoxFit.cover,
          width: ScreenAdapter.setWidth(70),
          height: ScreenAdapter.setHeight(70)
          ),
          Text("${channel.title}",
            maxLines: 1,
            style: TextStyle(
                color: Color.fromRGBO(70, 70, 70, 1.0),fontSize: 11),

          )
        ],
      ),
    );
  }

}
