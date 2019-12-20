import 'package:flutter/material.dart';

class DetailContentWidget extends StatefulWidget {

  String content;

  DetailContentWidget({Key key,this.content}) : super(key : key);

  @override
  _DetailContentWidgetState createState() => _DetailContentWidgetState();
}

class _DetailContentWidgetState extends State<DetailContentWidget> {

  var _maxLine = 12;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: (){
        setState(() {
          _maxLine = _maxLine == 12 ? 100 : 12;
        });
      },
      child: Padding(
          padding: EdgeInsets.only(left: 15,top: 0,right: 15,bottom: 10),
          child: Text("${widget.content}",maxLines: _maxLine,style: TextStyle(fontSize: 18,wordSpacing: 8),)
      ),
    );
  }
}
