import 'package:flutter/material.dart';

import 'package:flutter_mfw/pages/home/home_page.dart';
import 'package:flutter_mfw/pages/hotel/hotel_page.dart';
import 'package:flutter_mfw/pages/location/location_page.dart';
import 'package:flutter_mfw/pages/travel/travel_page.dart';
import 'package:flutter_mfw/pages/my/my_page.dart';


class TabbarPage extends StatefulWidget {
  @override
  _TabbarPageState createState() => _TabbarPageState();
}

class _TabbarPageState extends State<TabbarPage> {

  var _currentIndex = 0;

  var _pageController;

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
    return Scaffold(
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            _pageController.jumpToPage(index);
          });
        },

        ///用于修复tabbar的item 过多出现的问题
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        items: [
          BottomNavigationBarItem(icon: Image.asset("assets/images/tab_homepage_normal.png"), title: Text("首页")),
          BottomNavigationBarItem(icon: Icon(Icons.local_activity), title: Text("北京")),
          BottomNavigationBarItem(icon: Icon(Icons.card_travel), title: Text("去旅行")),
          BottomNavigationBarItem(icon: Icon(Icons.my_location), title: Text("我的"))
        ],
      ),
    );
  }
}
