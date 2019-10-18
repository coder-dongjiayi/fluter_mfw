import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';
class LocationNavbarWidget extends StatefulWidget {
  @override
  _LocationNavbarWidgetState createState() => _LocationNavbarWidgetState();
}

class _LocationNavbarWidgetState extends State<LocationNavbarWidget> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    
    return Stack(
      children: <Widget>[
        _backgroundWidget(),
        Positioned(
          left: 10,
          right: 10,
          bottom: 50,
          child: _navbarWidget(),
        )

      ],
    );
  }


  Widget _navbarWidget(){
    return Row(
      children: <Widget>[
        _locationWidget(),
        Expanded(
          flex: 1,
          child: _searchWidget(),
        )

      ],
    );
  }

  Widget _searchWidget(){
    return Container(
       height: ScreenAdapter.setHeight(72),
       margin: EdgeInsets.fromLTRB(10, 0, 10, 0),

       decoration: BoxDecoration(
           color: Colors.white,
           borderRadius: BorderRadius.circular(20)
       ),
      
    );
  }

   //显示地理位置
  Widget _locationWidget(){
    return Row(
      children: <Widget>[
        Text("北京",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white)),
        Container(
          margin: EdgeInsets.only(left: 5),
          width: ScreenAdapter.setWidth(30),
          height: ScreenAdapter.setHeight(30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(ScreenAdapter.setWidth(15)),
            color: Colors.white
          ),
          child: Center(
            child: Icon(Icons.keyboard_arrow_down,color:Colors.blue,size: ScreenAdapter.setWidth(30)),
          ),
        )
      ],
    );
  }

  Widget _backgroundWidget(){

    return Container(
      alignment: Alignment.bottomLeft,
      width: double.infinity,
      height: ScreenAdapter.setHeight(280),
      child: Row(

        children: <Widget>[
          Expanded(flex: 1, child: _temperatureWidget()),
          _travelWidget()

        ],
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color(0xFF3197F0),
              Color(0xFF79CBFF)
            ]
        ),
        image:DecorationImage(
            image: NetworkImage("https://n1-q.mafengwo.net/s12/M00/29/5B/wKgED1uWUxaAf8fKAAA6GG5wip0726.png")
        ),
      ),
    );
  }

  /// 显示温度和天气图标
  Widget _temperatureWidget(){

    return Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 5, 10),
          child: Image.network(
            "https://n3-q.mafengwo.net/s9/M00/72/B3/wKgBs1hXq-eAJEdoAAAHGFDiKyI182.png",
            width: ScreenAdapter.setWidth(50),
            height: ScreenAdapter.setHeight(50),
          ),
        ),
       Padding(
         padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
         child:  Text("14",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600)),
       )
      ],
    );
  }

  ///正在履行人数
  Widget _travelWidget(){

    return Row(
      children: <Widget>[
      Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
    child: Text("8989人正在旅行",style: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.w600))),
      Container(
       margin: EdgeInsets.only(bottom: 10),
      width: ScreenAdapter.setWidth(40),
      height: ScreenAdapter.setWidth(40),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage("https://b3-q.mafengwo.net/s10/M00/AB/8E/wKgBZ1mMZ4KAU8kCAABNBOlPNpQ09.jpeg?imageMogr2%2Fthumbnail%2F%2160x60r%2Fgravity%2FCenter%2Fcrop%2F%2160x60%2Fquality%2F90")
        ),
      ),
    ),
       Padding(
         padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
         child:  Icon(Icons.chevron_right,color: Colors.white),
       ),

      ],
    );
  }
}

