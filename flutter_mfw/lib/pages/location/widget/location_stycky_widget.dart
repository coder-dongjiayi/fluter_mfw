import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';

typedef ValueChanged<T> = void Function(T value);

class LocationStyckyWidget extends StatefulWidget {

  final ValueChanged<int> onTap;
  var selectedIndex;

  LocationStyckyWidget({Key key,this.onTap,this.selectedIndex}) : super(key:key);


  @override
  _LocationStyckyWidgetState createState() => _LocationStyckyWidgetState();
}

class _LocationStyckyWidgetState extends State<LocationStyckyWidget> {
  

  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Container(
      width: double.infinity,
      height: ScreenAdapter.setHeight(110),
      color: Color.fromRGBO(250, 250, 250, 1.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _item("推荐",0),
          _item("预定",1)
        ],
      ),
    );
  }
  
  Widget _item(title,index){

    return InkWell(
      onTap: (){
        widget.onTap(index);

        setState(() {
          widget.selectedIndex = index;
        });
      },
      child: Text(
          "${title}",
          style: TextStyle(
              color: Colors.black,
              fontWeight: widget.selectedIndex == index ? FontWeight.w700 : FontWeight.w400,
              fontSize: widget.selectedIndex == index ? 25 : 16
          )
      ),
    );
  }
}
