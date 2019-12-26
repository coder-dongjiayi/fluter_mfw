import 'package:flutter/material.dart';
class TravelDetailWidget extends StatefulWidget {

  final id;
  TravelDetailWidget({Key key,this.id}) : super(key:key);
  @override
  _TravelDetailWidgetState createState() => _TravelDetailWidgetState();
}

class _TravelDetailWidgetState extends State<TravelDetailWidget> {
  @override
  Widget build(BuildContext context) {
    var id=ModalRoute.of(context).settings.arguments;

    return Scaffold(

     body: Center(
       child:Text("${widget.id}"),
     ),
    );
  }
}

