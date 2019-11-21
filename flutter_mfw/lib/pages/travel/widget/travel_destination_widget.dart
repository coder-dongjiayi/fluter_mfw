import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';
class TravelDestinationWidget extends StatefulWidget {
  @override
  _TravelDestinationWidgetState createState() => _TravelDestinationWidgetState();
}

class _TravelDestinationWidgetState extends State<TravelDestinationWidget> {
  @override
  Widget build(BuildContext context) {
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
            _travelCarList(),
            _travelGridList()
          ],
      ),
    );
  }

  Widget _travelGridList(){

    return Container(
      margin: EdgeInsets.only(top: 5,bottom: 10),
      height: ScreenAdapter.setHeight(220),
      child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              childAspectRatio: 2.5

          ), itemBuilder: (BuildContext context,int index){


        return _travelGridItem();
      },
          itemCount: 6
      ),
    );
  }

  Widget _travelGridItem(){

    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
          child: Text("丽江",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600)),
        ),
        Container(
          padding: EdgeInsets.only(left: 5,right: 5),
         decoration: BoxDecoration(
           color: Color.fromRGBO(245, 247, 249, 1.0),
           borderRadius: BorderRadius.circular(8)
         ),
          child: Text("艳遇之都",style: TextStyle(color: Color.fromRGBO(112, 115, 117, 1.0),fontSize: 12)),
        )
      ],
    );
  }


 Widget _travelCarList(){

    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: Row(
        children: <Widget>[
          _travelCarItem(),
          _travelCarItem(),
          _travelCarItem()
        ],
      ),
    );
 }
 Widget _travelCarItem(){
    return Expanded(
      flex: 1,
      child: Container(
        
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 60),
        margin: EdgeInsets.only(right: 10,bottom: 10),
          decoration: BoxDecoration(
              color: Colors.red,
                  borderRadius: BorderRadius.circular(5)
          ),
        child: Column(
          children: <Widget>[
           Padding(
             padding: EdgeInsets.only(bottom: 10),
             child:  Text("吉普岛",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 18)),

           ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text("斯米兰开岛",style: TextStyle(color: Colors.white),maxLines: 1,),
            )
          ],
        )

      ),
    );
 }

 Widget _title(){
    return Padding(padding: EdgeInsets.only(left: 10,top: 10,bottom: 10),
      child: Text("推荐目的地",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18)),
    );
  }
}
