import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';
import 'package:flutter_mfw/model/location_tababr_model.dart';
class LocationSynthesizeWidget extends StatefulWidget {

  var wanfaList = <LocationTababrModelDataDatalistDataBusinesslist>[];

  LocationSynthesizeWidget({Key key,this.wanfaList}) : super(key:key);

  @override
  _LocationSynthesizeWidgetState createState() => _LocationSynthesizeWidgetState();
}

class _LocationSynthesizeWidgetState extends State<LocationSynthesizeWidget> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Container(
      height: ScreenAdapter.setHeight(310),
      width: double.infinity,


      child: ListView(
        shrinkWrap:true,
        physics:ScrollPhysics(parent: const BouncingScrollPhysics()),
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 10,bottom: 15,top: 0),
        children: widget.wanfaList.map((item){
          return _scrollViewItem(item.thumbList[0],item.thumbList[1],item.thumbList[2],item.title,item.subtitle);
        }).toList()
      ),
    );
  }
  Widget _scrollViewItem(leftImageUrl,rightTopImageUrl,rightBottomUrl,title,subTitle){
    return Container(


      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
          boxShadow: [
          BoxShadow(
            color:Color.fromRGBO(224, 224, 224, 1.0),
            offset: Offset(2, 4), //阴影xy轴偏移量
           blurRadius: 2.0, //阴影模糊程度

          )
        ],
      ),
      margin: EdgeInsets.only(right: 10),
      width: ScreenAdapter.setWidth(342),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _imageItem(leftImageUrl,rightTopImageUrl,rightBottomUrl),
          _titleItem(title),
          _subTitleItem(subTitle)

        ],
      ),
    );
  }
  Widget _titleItem(title){
    return Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 10,right: 5,top: 5),
          child: Image.asset(
              "assets/images/topic.png",
              width: ScreenAdapter.setWidth(30),
              height: ScreenAdapter.setHeight(30)
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 5,right: 5),
            child:  Text("${title}",style:
            TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500
            ),
                maxLines: 1,

                overflow: TextOverflow.ellipsis),
          ),
        )


      ],
    );
  }
  Widget _subTitleItem(subTitle){
    return Padding(
      padding: EdgeInsets.only(left: 12,top: 5,right: 5),
      child: Text("${subTitle}",style: TextStyle(fontSize: 10,color: Color.fromRGBO(130, 130, 130, 1.0))),
    );
  }

  Widget _imageItem(leftImageUrl,rightTopImageUrl,rightBottomUrl){
    return Container(


      height: ScreenAdapter.setHeight(160),
      decoration: BoxDecoration(
          color: Colors.white,
        borderRadius:BorderRadius.circular(5)
      ),
      child: Stack(
        children: <Widget>[

          Positioned(
            top: 0,
            left: 0,
            bottom: 0,
            width: ScreenAdapter.setWidth(235),
            child: ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(5)),
              child: Image.network("${leftImageUrl}",

                  height: ScreenAdapter.setHeight(160),
                  fit:BoxFit.cover
              ),
            )

          ),
          Positioned(
            right: 0,
            top: 0,
            width: ScreenAdapter.setWidth(105),
            height: ScreenAdapter.setHeight(79),
            child: ClipRRect(
              borderRadius: BorderRadius.only(topRight: Radius.circular(5)),
              child: Image.network("${rightTopImageUrl}",

                  height: ScreenAdapter.setHeight(160),
                  fit:BoxFit.cover
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            width: ScreenAdapter.setWidth(105),
            height: ScreenAdapter.setHeight(79),
            child: Image.network("${rightBottomUrl}",

                height: ScreenAdapter.setHeight(160),
                fit:BoxFit.cover
            )
          )
        ],
      ),
    );
  }
  
}
