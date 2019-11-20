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

    int row = (widget.channelData.channels.length / 5.0).ceil();

    double gridHeight = ScreenAdapter.setHeight(row*140.0);

    double spaceHeight = ScreenAdapter.setHeight((row - 1.0)*5);
    double bottomHeight = ScreenAdapter.setHeight(90);


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

           Container(
             padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
             height: gridHeight + bottomHeight + spaceHeight + 20.0,
             child:  GridView.builder(
               physics: NeverScrollableScrollPhysics(),
                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 5,
                 crossAxisSpacing: 5,
                 mainAxisSpacing: 5,
                 childAspectRatio: 0.9

             ), itemBuilder: (BuildContext context,int index){
               Channels channels = widget.channelData.channels[index];

               return  _gridCarItem(channels,index);
             },
                 itemCount: widget.channelData.channels.length
             ),
           ),
            _bottomCategory()
          ],
        ),

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

  Widget _gridCarItem(Channels channel,int index){
    return Container(
      padding: EdgeInsets.only(top: 5,bottom: 5),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.network("${channel.icon}",
          fit: BoxFit.cover,
          width: ScreenAdapter.setWidth(index < 5 ? 90 : 70),
          height: ScreenAdapter.setHeight(index < 5 ? 90 : 70)
          ),
          Text("${channel.title}",style: TextStyle(color: Color.fromRGBO(70, 70, 70, 1.0),fontSize: 12),)
        ],
      ),
    );
  }

}
