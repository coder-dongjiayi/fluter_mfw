import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mfw/model/waterfall_model.dart';
import 'dart:typed_data';

import 'package:flutter_mfw/screen_adapter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
final Uint8List kTransparentImage = new Uint8List.fromList(<int>[
  0x89,
  0x50,
  0x4E,
  0x47,
  0x0D,
  0x0A,
  0x1A,
  0x0A,
  0x00,
  0x00,
  0x00,
  0x0D,
  0x49,
  0x48,
  0x44,
  0x52,
  0x00,
  0x00,
  0x00,
  0x01,
  0x00,
  0x00,
  0x00,
  0x01,
  0x08,
  0x06,
  0x00,
  0x00,
  0x00,
  0x1F,
  0x15,
  0xC4,
  0x89,
  0x00,
  0x00,
  0x00,
  0x0A,
  0x49,
  0x44,
  0x41,
  0x54,
  0x78,
  0x9C,
  0x63,
  0x00,
  0x01,
  0x00,
  0x00,
  0x05,
  0x00,
  0x01,
  0x0D,
  0x0A,
  0x2D,
  0xB4,
  0x00,
  0x00,
  0x00,
  0x00,
  0x49,
  0x45,
  0x4E,
  0x44,
  0xAE,
]);
class WaterfallItemWidget extends StatefulWidget {
  WaterFallItemModel item;

  WaterfallItemWidget({Key key,this.item}) : super(key:key);
  @override
  _WaterfallItemWidgetState createState() => _WaterfallItemWidgetState();
}

class _WaterfallItemWidgetState extends State<WaterfallItemWidget> {
  @override
  Widget build(BuildContext context) {
    var imageURL = "";
    if(widget.item.data.image is String){

      imageURL = widget.item.data.image;
    }
    if(widget.item.data.image is Map){
      Map images = widget.item.data.image;

      imageURL =images["img_url"];
    }
    return Card(
      clipBehavior:Clip.antiAlias ,
      child: Column(
        children: <Widget>[
          _itemImageWidget("${imageURL}"),
          _itemTextWidget()
        ],
      ),
    );
  }

  Widget _itemTextWidget(){

    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
          child: Text(

            "${widget.item.data.content}",
            textDirection:TextDirection.ltr,
            style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.w600),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 15),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(

                children: <Widget>[
                  PhysicalModel(
                    color: Colors.transparent,
                    clipBehavior: Clip.antiAlias,
                    borderRadius: BorderRadius.circular(10),
                    child: FadeInImage.memoryNetwork(
                        placeholder: kTransparentImage,
                        width: 20,
                        height: 20,
                        image: "${widget.item.data.user?.logo}"),
                  ),

                  Padding(

                      padding: EdgeInsets.only(left: 5),
                      child: LimitedBox(
                        maxWidth: 70,
                        child: Text("${widget.item.data.user?.name}",
                          style: TextStyle(fontSize: 12,color:  Color.fromRGBO(122, 133, 147, 1.0)),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                  )
                ],
              ),
              Row(
                  children: <Widget>[
                    Icon(Icons.favorite_border,color: Color.fromRGBO(122, 133, 147, 1.0),size: 14),
                    Text("${widget.item.data.numLike}",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(122, 133, 147, 1.0)
                        )),


                  ]
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _itemImageWidget (url){

    var maxWidth = ((ScreenAdapter.getScreenWidth() / ScreenUtil.pixelRatio))/3.0;

    if (url == null){
      return Text("");
    }
    return Stack(
      children: <Widget>[

         FadeInImage.memoryNetwork(placeholder: kTransparentImage,
            image: url,

          ),

        Positioned(
            bottom: 8,
            left: 8,
            child: Container(
              padding: EdgeInsets.fromLTRB(5, 3, 5, 3),

              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(15),

              ),
              child: Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(right: 3),child: Icon(Icons.location_on,color: Colors.white,size: 12)),
                  LimitedBox(
                      maxWidth: maxWidth,
                      child: Text(
                        "${widget.item.data.location}",
                        style: TextStyle(color: Colors.white,fontSize: 10),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      )
                  )
                ],
              ),
            )
        )
      ],
    );
  }
}
