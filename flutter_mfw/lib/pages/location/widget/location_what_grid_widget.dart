import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';
class LocationWhatGridWidget extends StatefulWidget {
  @override
  _LocationWhatGridWidgetState createState() => _LocationWhatGridWidgetState();
}

class _LocationWhatGridWidgetState extends State<LocationWhatGridWidget> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);

    return  Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
      Padding(
        padding: EdgeInsets.only(left: 15,right: 0),
        child:  Row(
          children: <Widget>[
            _gridItem(context),
            _gridItem(context),
            _gridItem(context),

          ],
        ),
      ),
        Padding(
          padding: EdgeInsets.only(left: 15,right: 0),
          child:  Row(
            children: <Widget>[
              _gridItem(context),
              _gridItem(context),
              _gridItem(context),

            ],
          ),
        )

      ],
    );
  }

  Widget _gridItem(context){
    return Container(

      width:  (MediaQuery.of(context).size.width-(15*2+20))/3.0,
      margin: EdgeInsets.only(right: 10),
      child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

               ClipRRect(
                   borderRadius:BorderRadius.circular(5),
                   child: Image.network("https://p2-q.mafengwo.net/s1/M00/D8/1C/wKgIC1zr1aaAb2P2ABFckSkg-x8041.jpg?imageMogr2%2Fthumbnail%2F%21327x234r%2Fgravity%2FCenter%2Fcrop%2F%21327x234%2Fquality%2F90",
                   width:double.infinity,
                   height: ScreenAdapter.setHeight(174),
                    fit:BoxFit.cover,

                )
               ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text("北京必打卡",style: TextStyle(fontWeight: FontWeight.w600)),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text("3229人推鉴",style: TextStyle(color: Color.fromRGBO(147, 147, 147, 1.0),fontSize: 12)),
              )
            ],
      ),
    );
  }



}
