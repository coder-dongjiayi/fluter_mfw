import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';
class HomeTopNavWidget extends StatefulWidget {
  @override
  _HomeTopNavWidgetState createState() => _HomeTopNavWidgetState();
}

class _HomeTopNavWidgetState extends State<HomeTopNavWidget> {

  final _list = [
    {"image":"assets/images/icon_gonglve.png",
    "title":"攻略"
    },
    {"image":"assets/images/icon_hote.png",
      "title":"订酒店"
    },
    {"image":"assets/images/icon_jipiao.png",
      "title":"机票火车票"
    },
    {"image":"assets/images/icon_travel.png",
      "title":"去旅行"
    },
    {"image":"assets/images/icon_youji.png",
      "title":"游记"
    }
  ];

  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Stack(
      children: <Widget>[
           Container(

              height: ScreenAdapter.setHeight(220),
              width: double.infinity,
              child: Padding(
                     padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                     child: _navRowWidget(),
              ),
             decoration: BoxDecoration(
                color: Colors.white,
                 borderRadius: BorderRadius.only(topLeft:Radius.circular(10),topRight: Radius.circular(10))

            ),
          ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          height: 1,
          child: Container(
            color: Color.fromRGBO(245, 247, 248, 1),
          ),
        )
      ],
    );
  }

  Widget _navRowWidget(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: _list.map((item){

        return  _navItemWidget(item["image"],item["title"]);
      }).toList()
    );
  }

  Widget _navItemWidget(String image,String title){
    return Column(
      children: <Widget>[
        Image.asset("${image}"),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
          child:  Text(
              "${title}",
              style: TextStyle(fontSize: 13,color: Color.fromRGBO(120, 120, 120, 1.0))),
        )
      ],
    );
  }
}
