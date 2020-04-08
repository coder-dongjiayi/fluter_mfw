import 'package:flutter/material.dart';
import 'package:flutter_mfw/model/travel_detail_model.dart';
import 'package:flutter_mfw/screen_adapter.dart';
class DetailCarouselWidget extends StatefulWidget {
  
  var medias = <MediaModel>[];
  DetailCarouselWidget({Key key,this.medias}) : super(key:key);
  @override
  _DetailCarouselWidgetState createState() => _DetailCarouselWidgetState();
}

class _DetailCarouselWidgetState extends State<DetailCarouselWidget> {

 var _index = 0;

 var _controller =PageController(initialPage: 1, viewportFraction: 1.0);



 @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    ScreenAdapter.init(context);

    return Stack(
      children: <Widget>[
        _carousel(),
        Positioned(
          right: 15,
          bottom: 15,
          child: _control(),

        )
      ],
    );
  }

  Widget _control(){
   return Container(
     padding: EdgeInsets.fromLTRB(5, 2, 5, 2),
     alignment: Alignment.center,
     decoration: BoxDecoration(
       color: Color.fromRGBO(0, 0, 0, 0.5),
       borderRadius: BorderRadius.circular(20)

     ),
     child: Text("${_index+1}" + "/" + "${widget.medias.length}",style:TextStyle(color: Colors.white,fontSize: 10),),
   );
  }
  Widget _carousel(){

    double image_width = widget.medias[_index].width.toDouble();
    double image_height = widget.medias[_index].height.toDouble();

    double rate = image_width / image_height;
    // MediaQuery.of(context).size.width
    double real_height = MediaQuery.of(context).size.height / rate;

   return Container(

     height:ScreenAdapter.setHeight(real_height),
     width:ScreenAdapter.getScreenWidth(),
     color: Colors.yellow,
     child: PageView(

       controller: _controller,
       onPageChanged: (index){
         setState(() {
           _index = index;

         });
       },
       children: widget.medias.map((value){
         return Image.network(value.bimg,fit: BoxFit.fill,);
       }).toList(),
     ),
   );
  }

}
