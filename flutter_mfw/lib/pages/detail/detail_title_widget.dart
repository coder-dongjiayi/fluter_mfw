import 'package:flutter/material.dart';
class DetailTitleWidget extends StatefulWidget {

  String poin;
  String mmd;
  String title;
  DetailTitleWidget({Key key,this.poin,this.mmd,this.title}): super(key:key);

  @override
  _DetailTitleWidgetState createState() => _DetailTitleWidgetState();
}

class _DetailTitleWidgetState extends State<DetailTitleWidget> {
  @override
  Widget build(BuildContext context) {

    if (widget.title.length == 0){
       widget.title = "";
    }

    return Column(
      children: <Widget>[
        Padding(padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
        child: Text("${widget.title}",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w600))),

        Padding(padding: EdgeInsets.only(left: 10,top: 15),
          child:  Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                    color: Color.fromRGBO(246, 246, 246, 1.0)
                ),
                child: Text("董里",style: TextStyle(color: Color.fromRGBO(86, 164, 251, 1.0)),),
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color.fromRGBO(246, 246, 246, 1.0)
                ),
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.location_on,color: Color.fromRGBO(86, 164, 251, 1.0),size: 20,),
                    Text("洛克岛浮潜",style: TextStyle(color: Color.fromRGBO(86, 164, 251, 1.0)),)
                  ],
                ),
              )

            ],
          ),
        ),

        Padding(padding: EdgeInsets.only(left: 10,right: 10,top: 10),
        child: Divider(
          color: Color.fromRGBO(236, 236, 236, 1.0),

          height: 2,
        ))

      ],
    );
  }
}
