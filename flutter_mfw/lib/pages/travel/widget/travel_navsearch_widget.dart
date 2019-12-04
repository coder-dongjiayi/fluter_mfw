import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';
class TravelNavsearchWidget extends StatefulWidget {



  var scrollOffy;

  TravelNavsearchWidget({Key key,this.scrollOffy}) : super(key:key);


  @override
  _TravelNavsearchWidgetState createState() => _TravelNavsearchWidgetState();
}

class _TravelNavsearchWidgetState extends State<TravelNavsearchWidget> {
  @override
  Widget build(BuildContext context) {
  ScreenAdapter.init(context);

  var marginTop = widget.scrollOffy < 0 ? widget.scrollOffy*-1.0 : 0.0;
  var alpha = widget.scrollOffy <= 0 ? 0.0 : 1.0;

    return Container(
      margin: EdgeInsets.only(top: marginTop),
      color: Color.fromRGBO(255, 255, 255, alpha),
      width: double.infinity,
      height: MediaQuery.of(context).padding.top + ScreenAdapter.setHeight(88),
      child:Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).padding.top,
          ),
          Container(
            margin: EdgeInsets.only(left: 10,right: 10),
            height:  ScreenAdapter.setHeight(88),
            child: _navBar(alpha),
          )
        ],
      ),
    );
  }

  
  Widget _navBar(alpha){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Icon(Icons.access_time,color: alpha == 1.0 ? Colors.black : Colors.white,),
       Expanded(
         child:  Container(
           alignment: Alignment.center,
           decoration: BoxDecoration(
             color: alpha == 1.0 ? Color.fromRGBO(245, 245, 245, 1.0) : Colors.white,
             borderRadius: BorderRadius.circular(20)
           ),
           margin: EdgeInsets.only(left: 10,right: 10),
           height: ScreenAdapter.setHeight(74),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               Icon(Icons.search,color: Color.fromRGBO(139, 139, 139, 1.0)),
               Text("温泉",style: TextStyle(color: Color.fromRGBO(139, 139, 139, 1.0)),)
             ],
           ),
         ),
       ),
        Icon(Icons.more_horiz,color: alpha == 1.0 ? Colors.black : Colors.white)
      ],
    );
  }
}
