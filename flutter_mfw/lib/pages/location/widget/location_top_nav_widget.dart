import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';
class LocationTopNavWidget extends StatefulWidget {
  @override
  _LocationTopNavWidgetState createState() => _LocationTopNavWidgetState();
}

class _LocationTopNavWidgetState extends State<LocationTopNavWidget> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Container(
      width: double.infinity,
      height: ScreenAdapter.setHeight(602),

      decoration: BoxDecoration(
          color: Color.fromRGBO(253, 253, 253, 1.0),

      ),
      child: Column(
        children: <Widget>[
          _backgroundWidget(),
        _postionTopWidget(),
        _postionBottomWidget()
        ],
      ),
    );
  }
  
  Widget _postionTopWidget(){
    return Stack(
      children: <Widget>[
         Container(
            width: double.infinity,
            height: ScreenAdapter.setHeight(200),

            child: PageView(
                children: <Widget>[
                _pageIteamsWidget(),
                _pageIteamsWidget()
            ],
           ),
         ),
        Positioned(
           left: 0,
            right: 0,
            bottom: 8,
            child:_pageControlWidget(0),
        )
      ],
    );
  }

  Widget _postionBottomWidget(){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 10),
      height: ScreenAdapter.setHeight(85),
      child: ListView(
        padding: EdgeInsets.fromLTRB(15, 0, 10, 5),
        scrollDirection:Axis.horizontal,
        children: <Widget>[
          _listItemWidget(),
          _listItemWidget(),
          _listItemWidget(),
          _listItemWidget(),
          _listItemWidget(),
          _listItemWidget(),
          _listItemWidget(),
          _listItemWidget()
        ],
      ),
    );
  }

  Widget _listItemWidget(){
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
      child: Container(

        width: ScreenAdapter.setWidth(116),

        decoration: BoxDecoration(
        color: Colors.white,
          boxShadow: [
            BoxShadow(
                     color:Color.fromRGBO(224, 224, 224, 1.0),
                     offset: Offset(0, 2), //阴影xy轴偏移量
                     blurRadius: 2.0, //阴影模糊程度

              )
          ],
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Color.fromRGBO(224, 224, 224, 1.0),width: 0.2)
        ),
        child: Stack(
          children: <Widget>[
            Center(

              child: Text("当地游",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 12)),
            ),
            Positioned(
                right: 0,
                bottom: 0,
                child: Image.network(
                    "https://n1-q.mafengwo.net/s13/M00/40/78/wKgEaVzaM0SAMzLHAAANS-_1C4Q587.png",
                width:ScreenAdapter.setWidth(30),
                height: ScreenAdapter.setHeight(30))
            )
          ],
        ),
      ),
    );
  }

  Widget _pageIteamsWidget(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,

      children: <Widget>[
        _navItemWidget("https://n1-q.mafengwo.net/s12/M00/F0/D0/wKgED1uSTR2ANlV5AAAIyhBC28I002.png", "攻略"),
        _navItemWidget("https://n1-q.mafengwo.net/s12/M00/F0/D0/wKgED1uSTR2ANlV5AAAIyhBC28I002.png", "攻略"),
        _navItemWidget("https://n1-q.mafengwo.net/s12/M00/F0/D0/wKgED1uSTR2ANlV5AAAIyhBC28I002.png", "攻略"),
        _navItemWidget("https://n1-q.mafengwo.net/s12/M00/F0/D0/wKgED1uSTR2ANlV5AAAIyhBC28I002.png", "攻略"),
        _navItemWidget("https://n1-q.mafengwo.net/s12/M00/F0/D0/wKgED1uSTR2ANlV5AAAIyhBC28I002.png", "攻略")
      ],
    );
  }

  Widget _navItemWidget(String image,String title){
    return Container(
      width: MediaQuery.of(context).size.width/5.0,
      margin: EdgeInsets.only(top: 10),
      child: Column(

        children: <Widget>[
          Image.network(image,
            width: ScreenAdapter.setWidth(96),
            height: ScreenAdapter.setWidth(96),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child:  Text(
                "${title}",
                style: TextStyle(fontSize: 13,color: Color.fromRGBO(120, 120, 120, 1.0))),
          )
        ],
      ),
    );
  }

  Widget _pageControlWidget(index){

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _selectedControlWidget(),
        _normalControlWidget()
      ],
    );
  }

  Widget _selectedControlWidget(){

    return Container(
      width: ScreenAdapter.setWidth(30),
      height: ScreenAdapter.setHeight(10),
      decoration: BoxDecoration(
        color: Color.fromRGBO(253, 223, 90, 1.0),
        borderRadius: BorderRadius.circular(5)
      ),
    );
  }
  Widget _normalControlWidget(){

    return Container(
      margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
      width: ScreenAdapter.setWidth(10),
      height: ScreenAdapter.setHeight(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color.fromRGBO(226, 230, 238, 1.0)
      ),
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
