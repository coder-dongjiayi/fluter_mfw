import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';

import 'package:flutter_mfw/model/travel_header_model.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

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

    return Container(
     width: double.infinity,
      color:Color.fromRGBO(240, 240, 240, 1.0),
      height: ScreenAdapter.setHeight(468),
      child: _bannerSwiper()
    );
  }

  Widget _bannerSwiper() {

    return Swiper(
      itemBuilder: (BuildContext context,int index){
        return  Image.network("${widget.bannerData.imageList[index].src}",fit: BoxFit.fill,);
      },
      autoplay:true,

      itemCount: widget.bannerData.imageList.length,
      pagination: new SwiperPagination(),
      control: new SwiperControl(size: 0),
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



  Widget _bannerImage(imageURL){

    return Image.network("${imageURL}",

      fit: BoxFit.fitWidth,
    );
  }
}
