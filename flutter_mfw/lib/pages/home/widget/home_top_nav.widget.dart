import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';

import 'package:flutter_mfw/dao/home_dao.dart';
import 'package:flutter_mfw/model/home_main_icon_model.dart';
class HomeTopNavWidget extends StatefulWidget {
  @override
  _HomeTopNavWidgetState createState() => _HomeTopNavWidgetState();
}

class _HomeTopNavWidgetState extends State<HomeTopNavWidget> {

  
  var _list = <ListWithColor>[];
 
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getData();
  }
  _getData(){
    MainIconDao.fetch().then((result){
      setState(() {
        _list = result.data.mainIcons.listWithColor;
      });
      
    }).catchError((error){
      
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Stack(
      children: <Widget>[
           Container(

              height: ScreenAdapter.setHeight(280),
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

        return  _navItemWidget(item.icon,item.title);
      }).toList()
    );
  }

  Widget _navItemWidget(String image,String title){
    return Column(
      children: <Widget>[
        Image.network(image,width: ScreenAdapter.setWidth(100),height: ScreenAdapter.setHeight(100)),
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
