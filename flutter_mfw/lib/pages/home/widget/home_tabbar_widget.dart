import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';
import 'package:flutter_mfw/model/tabar_model.dart';

typedef ValueChanged<T> = void Function(T value);

class HomeTabbarWidget extends StatefulWidget {

  var tabbarList = <TabItemModel>[];

  final ValueChanged<TabItemModel> onTap;

  HomeTabbarWidget({Key key,this.tabbarList,this.onTap}) : super(key:key);

  @override
  _HomeTabbarWidgetState createState() => _HomeTabbarWidgetState();
}

class _HomeTabbarWidgetState extends State<HomeTabbarWidget> {

  var _currentTitle = "推荐";

  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Container(
      width: double.infinity,
      color: Colors.white,

      height: ScreenAdapter.setHeight(90),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          _itemScrollWidget(),
          _downWidget()
        ],
      ),
    );
  }

  Widget _itemScrollWidget(){
    return Expanded(
      child: ListView(
        scrollDirection: Axis.horizontal,

        children: widget.tabbarList.map((item){

          return InkWell(
            onTap: (){
              setState(() {
                _currentTitle = item.name;
              });
              widget.onTap(item);
            },
            child:  _itemWidet(item.name),
          );

        }).toList()
      ),
    );
  }

  Widget _itemWidet(String title){
    var selected =  title == _currentTitle;

    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
      child:Center(

        child:  Text("${title}",
            style: TextStyle(
            color: selected ? Colors.black : Color.fromRGBO(116, 116, 116, 1.0),
            fontSize:  selected ? 18 : 14,
            fontWeight: selected ? FontWeight.w500 : FontWeight.w600
          )
        ),
      )
    );
  }

  Widget _downWidget(){
    return Stack(
      children: <Widget>[
        Container(
          height: double.infinity,
          width: ScreenAdapter.setWidth(84),
          decoration: BoxDecoration(
            color: Colors.white,

          ),
          child: Icon(Icons.keyboard_arrow_down,color: Color.fromRGBO(26, 30, 35, 1.0)),

        ),
        Positioned(
          left: 2,
          top: 10,
          bottom: 10,
          width: 2,
          child: Container(
            color: Color.fromRGBO(248, 249, 249, 0.7)
          ),
        )
      ],
    );
  }
}
