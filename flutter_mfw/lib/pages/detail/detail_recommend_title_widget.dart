import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';
class DetailRecommendTitleWidget extends StatefulWidget {
  @override
  _DetailRecommendTitleWidgetState createState() => _DetailRecommendTitleWidgetState();
}

class _DetailRecommendTitleWidgetState extends State<DetailRecommendTitleWidget> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 10),
          color: Color.fromRGBO(246, 246, 249, 1.0),
          height: ScreenAdapter.setHeight(10),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10,bottom: 10),
          child: Text("相关推荐",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600))

        ),
        Divider(
          height: 1,
          color: Color.fromRGBO(227, 238, 221, 1.0),
        ),

      ],
    );
  }
}
