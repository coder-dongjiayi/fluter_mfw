import 'package:flutter/material.dart';

import 'package:flutter_mfw/pages/home/home_page.dart';
import 'package:flutter_mfw/pages/hotel/hotel_page.dart';
import 'package:flutter_mfw/pages/location/location_page.dart';
import 'package:flutter_mfw/pages/travel/travel_page.dart';
import 'package:flutter_mfw/pages/my/my_page.dart';

import 'package:flutter_mfw/screen_adapter.dart';

class TabbarPage extends StatefulWidget {
  @override
  _TabbarPageState createState() => _TabbarPageState();
}

class _TabbarPageState extends State<TabbarPage> {

  var _currentIndex = 0;

  var _pageController;


  var _tabNavList = [
    {
      "title":"首页",
      "selectImage":"assets/images/tab_homepage_selected.png",
      "normalImage":"assets/images/tab_homepage_normal.png",
    },
    {
      "title":"北京",
      "selectImage":"assets/images/tab_destination_selected.png",
      "normalImage":"assets/images/tab_destination_normal.png",
    },

    {
      "title":"去旅行",
      "selectImage":"assets/images/tab_focused_mall.png",
      "normalImage":"assets/images/tab_default_mall.png",
    },
    {
      "title":"我的",
      "selectImage":"assets/images/tab_mine_selected.png",
      "normalImage":"assets/images/tab_mine_normal.png",
    }
  ];

  var _pages = [
    HomePage(),
    LocationPage(),
    TravelPage(),
    MyPage()
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
  }
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 246, 246, 1.0),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: _pages,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      //Image.asset("assets/images/tab_homepage_normal.png")
      bottomNavigationBar: _bottomNavigationBar()
    );
  }

  Widget _bottomNavigationBar(){
    var _index = 0;
    return SafeArea(
        child: Container(
            padding: EdgeInsets.only(top: 8),
            width: double.infinity,
            height:ScreenAdapter.setHeight(98) ,
            color: Color.fromRGBO(246, 246, 246, 1.0),
            child: Row(
              children: _tabNavList.map((item){

                var bar = _bottomItemBar(item["title"],item["selectImage"],item["normalImage"],_index);
                _index ++;
                return bar;
              }).toList()
            ),
         )
    );
  }

  Widget _bottomItemBar(title,selectedImage,normalImage,index){

    return  Expanded(
      child: GestureDetector(
        onTap: (){

          setState(() {
            _currentIndex = index;

          });


          _pageController.jumpToPage(_currentIndex);
        },
        child: Column(
          children: <Widget>[
            Image.asset("${index == _currentIndex ? selectedImage : normalImage}",
              width:ScreenAdapter.setWidth(40),
              height: ScreenAdapter.setHeight(40),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2),
              child: Text("${title}",
                style: TextStyle(
                    fontSize: 11,
                    color: _currentIndex == index ? Colors.black : Color.fromRGBO(118, 118, 118, 1.0)
                ),
              ),
            )
          ],
        ),
      )
    );

  }
}
