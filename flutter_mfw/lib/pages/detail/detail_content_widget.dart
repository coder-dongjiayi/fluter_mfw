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
          _maxLine = _maxLine == 12 ? 10000 : 12;
        });
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _textContent(),
         Padding(
           padding: EdgeInsets.only(left: 15,top: 0,right: 15,bottom: 0),
           child:  Text("${_maxLine == 12 ? "点击查看全部>>" : ""}",style: TextStyle(color: Color.fromRGBO(86, 164, 251, 1.0)),),
         )
        ],
      )
    );
  }

  Widget _textContent(){

    return Padding(
        padding: EdgeInsets.only(left: 15,top: 0,right: 15,bottom: 10),
        child: Text("${widget.content}",
            maxLines: _maxLine,
            style: TextStyle(fontSize: 18,wordSpacing: 8,color: Colors.black))
    );
  }
}
