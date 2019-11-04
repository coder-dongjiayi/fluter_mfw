import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';
class MyNavbarWidget extends StatefulWidget {
  @override
  _MyNavbarWidgetState createState() => _MyNavbarWidgetState();
}

class _MyNavbarWidgetState extends State<MyNavbarWidget> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Container(

      padding: EdgeInsets.only(bottom: 10),
      width: double.infinity,
      height: ScreenAdapter.getStatusBarHeight()+ScreenAdapter.setHeight(88),
      color: Color.fromRGBO(254, 217, 49, 1.0),
      child: Stack(
        children: <Widget>[

          Positioned(
            bottom: 5,
            left: 20,
            child: _leadingsWidget(),
          ),
          Positioned(
            right: 20,
            bottom: 5,
            child: Image.asset("assets/images/icon_message.png",width:20,height: 20),
          )

        ],
      ),
    );
  }
  Widget _leadingsWidget(){

    return Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
          child:  Image.asset("assets/images/setting.png"),
        ),
        Image.asset("assets/images/saoma.png")
      ],
    );
  }

}
