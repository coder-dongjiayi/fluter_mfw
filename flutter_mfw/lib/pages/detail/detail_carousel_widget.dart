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

 var _controller = PageController();

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    double image_width = widget.medias[_index].width.toDouble();
    double image_height = widget.medias[_index].height.toDouble();

    double rate = image_width / image_height;
    double real_height = ScreenAdapter.getScreenWidth() / rate;

    ScreenAdapter.init(context);
    return Container(

      height:ScreenAdapter.setHeight(real_height),
      width: double.infinity,
      child: PageView(
        controller: _controller,
        onPageChanged: (index){
          setState(() {
            _index = index;

          });
        },
        children: widget.medias.map((value){
          return Image.network(value.bimg);
        }).toList(),
      ),
    );
  }

}
