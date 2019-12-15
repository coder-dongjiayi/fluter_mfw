import 'package:flutter/material.dart';

import 'package:flutter_mfw/pages/home/home_page.dart';
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
      "title":"发布",
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
    Text(""),
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
    var _index = 0;
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

      floatingActionButton: Container(
        margin: EdgeInsets.only(top: 8),
        width: ScreenAdapter.setWidth(110),
        height: ScreenAdapter.setHeight(110),
        padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(ScreenAdapter.setWidth(55)),
        color: Color.fromRGBO(246, 246, 246, 1.0)
      ),

        child: FloatingActionButton(

          elevation: 0,
          focusElevation: 0,

          onPressed: (){
            print("发布视频");
          },
          child: Icon(Icons.add,size: 25,color: Colors.black,),
          backgroundColor: Color.fromRGBO(253, 219, 69, 1.0),
        ),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar:  BottomNavigationBar(


        currentIndex: _currentIndex,
        onTap: (index) {
          if(index == 2){
            print("发布视频");
          }else{
            setState(() {
              _currentIndex = index;
              _pageController.jumpToPage(index);
            });
          }

        },

        ///用于修复tabbar的item 过多出现的问题
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color.fromRGBO(70, 70, 70, 1.0),
        items:_tabNavList.map((item){
          var bavItem = BottomNavigationBarItem(
            icon: _barItemIcon(_index, item["selectImage"],item["normalImage"]),
            title: Text(item["title"])
          );

          _index ++;
          return bavItem;
        }).toList()
      ),

    );
  }


  Widget _barItemIcon(index,selectedImage,normalImage){

    return Image.asset("${index == _currentIndex ? selectedImage : normalImage}",
      width:ScreenAdapter.setWidth(50),
      height: ScreenAdapter.setHeight(50),
    );
  }

}
