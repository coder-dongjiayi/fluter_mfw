import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';

import 'package:flutter_mfw/model/travel_header_model.dart';

class TravelBannerWidget extends StatefulWidget {

  BannerData bannerData;
  DynamicData dynamicData;

  TravelBannerWidget({Key key,this.bannerData,this.dynamicData}) : super(key:key);

  @override
  _TravelBannerWidgetState createState() => _TravelBannerWidgetState();
}

class _TravelBannerWidgetState extends State<TravelBannerWidget> {
  @override
  Widget build(BuildContext context) {
    if(widget.bannerData == null){
      return Text("");
    }

    ScreenAdapter.init(context);
    var _imageURL = widget.bannerData.imageList.first.src;
    double _imageHeight = widget.bannerData.config.imgHeight.toDouble();
    double _imageWidth = widget.bannerData.config.imgWidth.toDouble();

    double radio = _imageHeight / _imageWidth;

    double _screenWidth = ScreenAdapter.getScreenWidth();

    _imageHeight = radio * _screenWidth;

    return Container(
     width: double.infinity,
      color:Color.fromRGBO(240, 240, 240, 1.0),
      height: ScreenAdapter.setHeight(_imageHeight),
      child: Stack(
        children: <Widget>[
          _bannerImage(_imageURL,_screenWidth,_imageHeight),
//         Positioned(
//           left: 0,
//           right: 0,
//           bottom: 0,
//           child:  _carContainer(),
//         )
        ],
      ),
    );
  }

  Widget _carContainer(){
    return Container(
        width: double.infinity,
        height: ScreenAdapter.setHeight(288),
      padding: EdgeInsets.fromLTRB(10, 10, 5, 0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(240, 240, 240, 1.0),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
      ),
      child: _carRow(),
    );
  }


  Widget _carRow(){
    return Row(
      children: widget.dynamicData.dynamicList.first.singleList.map((item){
        
        return _carItem(item.singleData.imgUrl);
        
      }).toList()
    );
  }

  Widget _carItem(imageURL){
    return Expanded(
      flex: 1,
      child: Container(

        decoration: BoxDecoration(
          image: DecorationImage(

            image: NetworkImage("${imageURL}")
          ),
          borderRadius: BorderRadius.circular(5)
        ),
        margin: EdgeInsets.only(right: 5),
        height: ScreenAdapter.setHeight(268),


      )
      
    );
  }



  Widget _bannerImage(imageURL,imageWidth,imageHeight){

    return Image.network("${imageURL}",
      width: double.infinity,
      height: ScreenAdapter.setHeight(imageHeight),
      fit: BoxFit.cover,
    );
  }
}
