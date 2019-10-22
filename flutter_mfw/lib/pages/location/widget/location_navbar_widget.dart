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
    
    return Container(
        color: Color.fromRGBO(255, 255, 255, 0.5),
        padding: EdgeInsets.only(top: ScreenAdapter.getStatusBarHeight(),left: 10,bottom: 10),
        child: _navbarWidget()
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


}

