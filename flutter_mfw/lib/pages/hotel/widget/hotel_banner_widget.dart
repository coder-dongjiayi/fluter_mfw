import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';
class HoteBannerWidget extends StatefulWidget {
  @override
  _HoteBannerWidgetState createState() => _HoteBannerWidgetState();
}

class _HoteBannerWidgetState extends State<HoteBannerWidget> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Stack(
      children: <Widget>[
        _bannerImage("")
      ],
    );
  }

  Widget _bannerImage(imageURL){

    return Image.network("https://www.devio.org/io/flutter_app/img/banner/100h10000000q7ght9352.jpg",
        width: double.infinity,
        height: ScreenAdapter.setHeight(470),
        fit: BoxFit.cover,
    );
  }

}
