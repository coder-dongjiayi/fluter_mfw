import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dart:typed_data';
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
  var item = Map();

  WaterfallItemWidget({Key key,this.item}) : super(key:key);
  @override
  _WaterfallItemWidgetState createState() => _WaterfallItemWidgetState();
}

class _WaterfallItemWidgetState extends State<WaterfallItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior:Clip.antiAlias ,
      child: Column(
        children: <Widget>[
          _itemImageWidget(widget.item["imageUrl"]),
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
            "昆明市中心的金马笔记挂兵工厂老字号一线的米小米昆明市中心的金马笔记挂兵工厂老字号一线的米小米",
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
                        image: "https://b1-q.mafengwo.net/s13/M00/FB/FA/wKgEaVyuEUiARjtEAAC8XesBXZI87.jpeg?imageMogr2%2Fthumbnail%2F%21120x120r%2Fgravity%2FCenter%2Fcrop%2F%21120x120%2Fquality%2F90"),
                  ),

                  Padding(

                      padding: EdgeInsets.only(left: 5),
                      child: LimitedBox(
                        maxWidth: 70,
                        child: Text("我做程序员的那些年",
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
                    Text("400",
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
                      maxWidth: 140,
                      child: Text(
                        "昆明.大观公园",
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
