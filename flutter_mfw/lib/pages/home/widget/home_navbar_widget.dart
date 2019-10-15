import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';

class HomeNavbarWidget extends StatefulWidget {
  @override
  _HomeNavbarWidgetState createState() => _HomeNavbarWidgetState();
}

class _HomeNavbarWidgetState extends State<HomeNavbarWidget> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Column(
      children: <Widget>[
        Container(
          height:  ScreenAdapter.getStatusBarHeight(),
          color: Colors.white,
        ),
    Container(

           color: Colors.white,
           width: double.infinity,
           height: ScreenAdapter.setHeight(96),
           child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
               children: <Widget>[
                 _searchWidget(),
                 _messageWidget()
            ],
          ),
    )
      ],
    );
  }

  Widget _searchWidget(){
    return Expanded(
      flex: 1,
      child: Container(

        height: ScreenAdapter.setHeight(78),
        margin: EdgeInsets.fromLTRB(13, 0, 0, 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
            color: Color.fromRGBO(246, 246, 249, 1)
        ),
        child: TextField(

              decoration: InputDecoration(
                icon: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Icon(Icons.search,color: Colors.grey,),
                ),
                contentPadding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                hintText: "西安",
                hintStyle: TextStyle(
                  fontSize: 14
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none
                )
              ),

        ),

      ),
    );
  }

  Widget _messageWidget(){

    return Padding(
      padding: EdgeInsets.fromLTRB(13, 0, 13, 0),
      child: Image.asset("assets/images/icon_message.png",width:20,height: 20)
    );
  }
}
