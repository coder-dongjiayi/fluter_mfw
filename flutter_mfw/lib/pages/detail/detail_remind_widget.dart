import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';

class DetailRemmindWidget extends StatefulWidget {
  @override
  _DetailRemmindWidgetState createState() => _DetailRemmindWidgetState();
}

class _DetailRemmindWidgetState extends State<DetailRemmindWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Divider(
            height: 1,
            color: Color.fromRGBO(227, 238, 221, 1.0),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Text(
              "文中提及",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
          ),
          _remindItem(),
          _timeShoot()

        ],
      ),
    );
  }

  //文中提及
  Widget _remindItem() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(249, 249, 249, 1.0),
          offset: Offset(0, -5), //阴影xy轴偏移量
          blurRadius: 1.0, //
        ),
        BoxShadow(
          color: Color.fromRGBO(249, 249, 249, 1.0),
          offset: Offset(0, 5), //阴影xy轴偏移量
          blurRadius: 1.0, //
        ),
        BoxShadow(
          color: Color.fromRGBO(249, 249, 249, 1.0),
          offset: Offset(5, 0), //阴影xy轴偏移量
          blurRadius: 1.0, //
        ),
        BoxShadow(
          color: Color.fromRGBO(249, 249, 249, 1.0),
          offset: Offset(-5, 0), //阴影xy轴偏移量
          blurRadius: 1.0, //
        )
      ]),
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Row(
        children: <Widget>[
          Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(
                    "https://b1-q.mafengwo.net/s13/M00/82/06/wKgEaVx5P-yAdvuGAGAUjwqcy1g26.jpeg?imageMogr2/thumbnail/!400x400r/strip/gravity/Center/crop/!400x400/quality/90",
                    width: ScreenAdapter.setWidth(136),
                    height: ScreenAdapter.setHeight(136)),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5)),
                    color: Colors.green),
                child: Text(
                  "景点",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "红井路",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
                Text("205篇点评"),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Text(
                    "位于房山",
                    style: TextStyle(color: Color.fromRGBO(152, 152, 152, 1.0)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  //拍摄时间
  Widget _timeShoot(){
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child:Text("拍摄于 2014-04-26",style:TextStyle(color: Color.fromRGBO(199, 201, 204, 1.0)) ,));
  }
}
