import 'package:flutter/material.dart';

import 'package:flutter_mfw/screen_adapter.dart';
import 'package:flutter_mfw/model/travel_detail_model.dart';
class DetailReplyWidget extends StatefulWidget {

  List<RepliesItemModel> replies;



  DetailReplyWidget({Key key,this.replies}) : super(key: key);
  @override
  _DetailReplyWidgetState createState() => _DetailReplyWidgetState();
}

class _DetailReplyWidgetState extends State<DetailReplyWidget> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Container(
      margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _title(),
          
          _myReply(),
          _replyList(),
          _bottomReplyNumber()

        ],
      ),
    );
  }

  Widget _title() {
    return Padding(
      padding: EdgeInsets.only(top: 0),
      child: Text("回复",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
    );
  }

  Widget _replyList(){
    return Column(
      children: widget.replies.map((value){
        return _replyItem(value);

      }).toList()
    );
  }


  Widget _replyItem(RepliesItemModel itemModel){
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child:Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  ClipOval(
                    child: Image.network(
                     "${itemModel.owner.logo}",
                      width: ScreenAdapter.setWidth(80),
                      height: ScreenAdapter.setHeight(80),
                      fit: BoxFit.cover,
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text("${itemModel.owner.name}",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),)
                    ,
                  ),
                  _icon(itemModel.owner.footprint_asset_tag.icon,itemModel.owner.footprint_asset_tag.text),

                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child:Text("2019-12-31",


                        style: TextStyle(
                            color: Color.fromRGBO(170, 170, 170, 1.0),

                            fontWeight: FontWeight.w300)
                    )

                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.thumb_up),
                  Text("${itemModel.num_like}")
                ],
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 50,right: 15),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text( "${itemModel.content}",
                textAlign: TextAlign.left,

                maxLines: 3,
                style: TextStyle(fontSize: 16),),
            )
            ,
          )

        ],
      )

    );
  }

  Widget _myReply() {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Row(
        children: <Widget>[
          ClipOval(
            child: Image.network(
              "https://n1-q.mafengwo.net/s11/M00/55/79/wKgBEFtBztSAbMSyAA_C8_Bjk5U27.jpeg?imageMogr2%2Fthumbnail%2F%2160x60r%2Fgravity%2FCenter%2Fcrop%2F%2160x60%2Fquality%2F90",
              width: ScreenAdapter.setWidth(80),
              height: ScreenAdapter.setHeight(80),
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(246, 246, 249, 1.0),
                  borderRadius: BorderRadius.circular(20)

              ),
              margin: EdgeInsets.only(left: 10,right: 10),
              height: ScreenAdapter.setHeight(80),
              child: Text("想撩？那快聊一聊",style: TextStyle(color: Color.fromRGBO(199, 201, 204, 1.0)),),
            ),
          )
        ],
      ),
    );
  }

  Widget _bottomReplyNumber() {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Column(
        children: <Widget>[
          Divider(height: 1, color: Color.fromRGBO(227, 238, 221, 1.0)),
          Padding(
            padding: EdgeInsets.only(top: 15, bottom: 0),
            child: Text(
              "查看全部72条回复 >",
              style: TextStyle(color: Color.fromRGBO(125, 127, 129, 1.0)),
            ),
          )
        ],
      ),
    );
  }
}

Widget _icon(icon,text){
  return Container(
    margin: EdgeInsets.only(left: 10),
    padding: EdgeInsets.only(right: 5),
    decoration: BoxDecoration(
        color: Color.fromRGBO(221, 224, 243, 1.0),
        borderRadius: BorderRadius.circular(10)),
    child: Row(
      children: <Widget>[
        Image.network(
          "${icon}",
          width: ScreenAdapter.setWidth(40),
          height: ScreenAdapter.setHeight(40),
        ),
        Text("${text}",
            style: TextStyle(
                fontSize: 12, color: Color.fromRGBO(99, 100, 159, 1.0)))
      ],
    ),
  );
}
