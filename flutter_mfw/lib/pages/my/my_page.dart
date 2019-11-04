import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';
import 'package:flutter_mfw/pages/my/widget/my_navbar_widget.dart';
import 'package:flutter_mfw/pages/my/widget/my_logout_widget.dart';

import 'package:flutter_mfw/pages/my/widget/my_get_honey_widget.dart';
import 'package:flutter_mfw/pages/my/widget/my_travel_widget.dart';
class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> with AutomaticKeepAliveClientMixin {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 242, 242, 1.0),

      body: Stack(
        children: <Widget>[

          Padding(
            padding: EdgeInsets.only(top:ScreenAdapter.setHeight(88)),
            child: ListView(

              children: <Widget>[
                MyLogoutWidget(),
                MyGetHoneyWidget(),
                MyTravelWidget()
              ],
            ),
          ),
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: MyNavbarWidget()
          ),
        ],
      )
    );
  }


}
