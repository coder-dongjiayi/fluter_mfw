import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';

class DetailBottomBarWidget extends StatefulWidget {
  @override
  _DetailBottomBarWidgetState createState() => _DetailBottomBarWidgetState();
}

class _DetailBottomBarWidgetState extends State<DetailBottomBarWidget> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Container(
      
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(249, 249, 249, 1.0),
              offset: Offset(0, -5), //阴影xy轴偏移量
              blurRadius: 1.0, //
            ),
          ]
      ),
      height: ScreenAdapter.setHeight(120),
      child: _bottom(),

    );
  }

  Widget _bottom(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        _icon(Icons.message),
        _icon(Icons.favorite_border),
        _icon(Icons.star_border),
        _button()
      ],
    );
  }
  Widget _button(){

    return Container(
      alignment: Alignment.center,
       margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
       padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
       decoration: BoxDecoration(
         color: Colors.yellow,
         borderRadius: BorderRadius.circular(30)
       ),

        child: Text("文中提及",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),),

    );
  }

  Widget _icon(icon){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Icon(icon),
        Text("14",style: TextStyle(fontWeight: FontWeight.w600),)
      ],
    );
  }
}
