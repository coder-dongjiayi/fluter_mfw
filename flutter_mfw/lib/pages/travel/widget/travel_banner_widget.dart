import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';

import 'package:flutter_mfw/model/travel_header_model.dart';

class TravelBannerWidget extends StatefulWidget {

  BannerData bannerData;

  TravelBannerWidget({Key key,this.bannerData}) : super(key:key);

  @override
  _TravelBannerWidgetState createState() => _TravelBannerWidgetState();
}

class _TravelBannerWidgetState extends State<TravelBannerWidget> {
  @override
  Widget build(BuildContext context) {
    if(widget.bannerData.imageList.length == 0){
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
      height: ScreenAdapter.setHeight(278+470.0),
      child: Stack(
        children: <Widget>[
          _bannerImage(_imageURL,_screenWidth,_imageHeight),
         Positioned(
           left: 0,
           right: 0,
           bottom: 10,
           child:  _carContainer(),
         )
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
      children: <Widget>[
          _carItem(),
        _carItem(),
        _carItem(),
        _carItem()
      ],
    );
  }

  Widget _carItem(){
    return Expanded(
      flex: 1,
      child: Container(

        decoration: BoxDecoration(
            color: Colors.red,
          borderRadius: BorderRadius.circular(5)
        ),
        margin: EdgeInsets.only(right: 5),
        height: ScreenAdapter.setHeight(268),
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 0,
              top: 5,
              right: 0,
              child: _carItemText(),
            ),
            Positioned(
              bottom: 5,
              left: 5,
              right: 5,
              child: _carBottom(),
            )
          ],
        ),

      )
      
    );
  }

  Widget _carItemText(){
    return Text("境内会场",
      style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15,color: Colors.white),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.center,
    );
  }

  Widget _carBottom(){
    
    return Container(
      alignment: Alignment.center,
      height: ScreenAdapter.setHeight(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromRGBO(0, 0, 0, 0.3)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
         Expanded(
           flex: 1,
           child:  Padding(padding: EdgeInsets.only(left: 5),
           child: RichText(

             text: TextSpan(
                 children: [
                   TextSpan(
                       text: "最高省",
                       style:TextStyle(color: Colors.white,fontSize: 10)
                   ),
                   TextSpan(
                       text: "200",
                       style:TextStyle(color: Colors.yellow,fontSize: 12,fontWeight: FontWeight.w500)
                   ),
                   TextSpan(
                       text: "元",
                       style:TextStyle(color: Colors.white,fontSize: 10)
                   ),

                 ]
             ),
           ),
           )
         ),
          Container(
            margin: EdgeInsets.only(right: 5),
            alignment: Alignment.center,
            width: ScreenAdapter.setWidth(20),
            height: ScreenAdapter.setHeight(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
              
            ),
            child: Icon(Icons.chevron_right,size: 10),
          )
        ],
      ),
    );
  }

  Widget _bannerImage(imageURL,imageWidth,imageHeight){

    return Image.network("${imageURL}",
      width: double.infinity,
      height: ScreenAdapter.setHeight(470),
      fit: BoxFit.cover,
    );
  }
}
