import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';

import 'package:flutter_mfw/dao/my_dao.dart';

import 'package:flutter_mfw/model/my_channel_model.dart';
class MyServiceCardWidget extends StatefulWidget {
  @override
  _MyServiceCardWidgetState createState() => _MyServiceCardWidgetState();
}

class _MyServiceCardWidgetState extends State<MyServiceCardWidget> {

  var _list = <MyChannelModelDataNormalChannel>[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getListData();
  }

  void _getListData(){

    MyChannelDao.fetch().then((result){
      setState(() {
        _list = result.data.normalChannels;
      });

    }).catchError((error){
      print(error);
    });
  }


  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    if(_list.length == 0){
      return Center(
        child:  Text("正在加载"),
      );
    }
    return Container(
      height:  ScreenAdapter.setHeight(650),
      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
       Padding(
         padding: EdgeInsets.only(top: 10,left: 10,bottom: 20),
         child: Text("更多服务",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16)),
       ),

      Container(


        height: ScreenAdapter.setHeight(520),

        child: _gridService()
       )
        ],
      ),
    );
  }

  Widget _gridService(){

    return GridView.count(
        crossAxisCount: 4,
      physics: NeverScrollableScrollPhysics(),
      children: _list.map((item){

        return _itemService(item);
      }).toList()
    );
  }

  Widget _itemService(MyChannelModelDataNormalChannel item){
    return Column(
      children: <Widget>[
        Image.network("${item.icon}",
        width: ScreenAdapter.setWidth(64),
        height: ScreenAdapter.setHeight(64),
        ),
        Text("${item.title}")
      ],
    );
  }
}
