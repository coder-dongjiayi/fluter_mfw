import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';

import 'package:flutter_mfw/model/travel_list_model.dart';

class TravelDestinationWidget extends StatefulWidget {

  StyleData styleData;

  TravelDestinationWidget({Key key,this.styleData}) : super(key:key);


  @override
  _TravelDestinationWidgetState createState() => _TravelDestinationWidgetState();
}

class _TravelDestinationWidgetState extends State<TravelDestinationWidget> {



  @override
  Widget build(BuildContext context) {
    if(widget.styleData == null){
      return Text("");
    }
    var _topThreeList = widget.styleData.mddList.sublist(0,3);
    var _gridList = widget.styleData.mddList.sublist(3,widget.styleData.mddList.length);

    ScreenAdapter.init(context);
    return Container(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _title(),
            _travelCarList(_topThreeList),
            _travelGridList(_gridList)
          ],
      ),
    );
  }
  Widget _travelGridList(List<MddList> list){

    return Container(

     // margin: EdgeInsets.only(top: 5,bottom: 10),
      height: ScreenAdapter.setHeight(250),
      child: GridView.builder(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
              childAspectRatio: 1.8

          ), itemBuilder: (BuildContext context,int index){
            var item = list[index];

        return _travelGridItem(item.title,item.subTitle);
      },
          itemCount: list.length
      ),
    );
  }

  Widget _travelGridItem(title,subTitle){

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
          child: Text("${title}",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600)),
        ),
        Container(
          padding: EdgeInsets.only(left: 5,right: 5),
         decoration: BoxDecoration(
           color: Color.fromRGBO(245, 247, 249, 1.0),
           borderRadius: BorderRadius.circular(8)
         ),
          child: Text("${subTitle}",style: TextStyle(color: Color.fromRGBO(112, 115, 117, 1.0),fontSize: 12)),
        )
      ],
    );
  }


 Widget _travelCarList(List<MddList> list){

    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: Row(
        children: list.map((item){

          return _travelCarItem(item.title,item.subTitle,item.imgUrl);

        }).toList()
      ),
    );
 }
 Widget _travelCarItem(title,subTitle,imageUrl){
    return Expanded(
      flex: 1,
      child: Container(
        
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 60),
        margin: EdgeInsets.only(right: 10,bottom: 0),
          decoration: BoxDecoration(

              image: DecorationImage(image: NetworkImage("${imageUrl}")),
                  borderRadius: BorderRadius.circular(8)
          ),
        child: Column(
          children: <Widget>[
           Padding(
             padding: EdgeInsets.only(bottom: 10),
             child:  Text("${title}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 18)),

           ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text("${subTitle}",style: TextStyle(color: Colors.white),maxLines: 1,),
            )
          ],
        )

      ),
    );
 }

 Widget _title(){
    return Padding(padding: EdgeInsets.only(left: 10,top: 10),
      child: Text("推荐目的地",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18)),
    );
  }
}
