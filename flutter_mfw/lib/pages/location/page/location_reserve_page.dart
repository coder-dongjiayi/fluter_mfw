import 'package:flutter/material.dart';
class LocationReservePage extends StatefulWidget {
  @override
  _LocationReservePageState createState() => _LocationReservePageState();
}

class _LocationReservePageState extends State<LocationReservePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _liveWhere()
      ],
    );
  }

  Widget _liveWhere(){
    return Column(

      children: <Widget>[
        _titleWhere()
      ],
    );
  }
  Widget _titleWhere(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text("住哪里",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
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
