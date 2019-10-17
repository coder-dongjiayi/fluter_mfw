import 'package:flutter/material.dart';
import 'package:flutter_mfw/pages/my/widget/my_navbar_widget.dart';
import 'package:flutter_mfw/pages/my/widget/my_logout_widget.dart';
import 'package:flutter_mfw/pages/my/widget/my_items_widget.dart';
class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 242, 242, 1.0),

      body: Column(
        children: <Widget>[
          MyNavbarWidget(),
          MyLogoutWidget(),
          MyItemsWidget()
        ],
      ),
    );
  }


}
