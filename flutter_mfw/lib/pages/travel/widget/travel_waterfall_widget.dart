import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_mfw/dao/travel_dao.dart';
import 'package:flutter_mfw/model/travel_list_model.dart';
class TravelWaterfallWidget extends StatefulWidget {

  var tableId;


  TravelWaterfallWidget({Key key,this.tableId}) : super(key:key);


  @override
  _TravelWaterfallWidgetState createState() => _TravelWaterfallWidgetState();
}

class _TravelWaterfallWidgetState extends State<TravelWaterfallWidget> {


  var _list = <DataList>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getData(widget.tableId);

  }
  void getData(tableId){
        TravelListDao.fetch().then((value){

        setState(() {
        for(var item in value.data.dataList){

        if(item.style == "simple_product"){
        _list.add(item);
        }

        }});

        });
  }
  @override
  Widget build(BuildContext context) {



    return StaggeredGridView.countBuilder(
      padding: EdgeInsets.only(top: 10),
      physics: ScrollPhysics(),
      crossAxisCount: 4,
      shrinkWrap: true,
      primary: true,
      itemCount: _list.length,
      itemBuilder: (context, index) => _productWaterfallItem(_list[index].productData),

      staggeredTileBuilder: (index) => StaggeredTile.fit(2),
    );
  }

  Widget _articleWaterfallItem(imageURL){

    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          Image.network(
              "${imageURL}"
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            color: Colors.white,
            //child: _articleContainer(""),
          )
        ],
      ),
    );
  }

  Widget _articleContainer( ProductData productData){

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _themeTitle("_themeTitle"),
        _title("_title")
      ],
    );

  }

  Widget _productWaterfallItem(ProductData productData) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.network(
          "${productData.imgUrl}"
      ),
          _themeTitle(productData.theme),
          _title(productData.title),
          _bottomPrice(productData.price,productData.priceSuffix,productData.soldPrefix,productData.salesNum)
        ],
      ),
    );
  }

  Widget _bottomPrice(price,priceSuffix,soldPrefix,salesNum){
    return Padding(
      padding: EdgeInsets.only(left: 5,right: 5,top: 10,bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          RichText(
            text: TextSpan(
                children: [
                  TextSpan(
                      text: "￥",
                      style: TextStyle(
                          color: Color.fromRGBO(252, 85, 74, 1.0),
                        fontSize: 10,
                        fontWeight: FontWeight.w600
                      )
                  ),
                  TextSpan(
                      text: "${price}",
                      style: TextStyle(
                          color: Color.fromRGBO(252, 85, 74, 1.0),
                        fontWeight: FontWeight.w700,
                        fontSize: 15
                      )
                  ),
                  TextSpan(
                      text: "${priceSuffix}",
                      style: TextStyle(
                          color: Color.fromRGBO(160, 160, 160, 1.0),
                          fontSize: 12,

                      )
                  )
                ]
            ),
          ),
          Text("${soldPrefix}${salesNum}",style: TextStyle(color: Color.fromRGBO(160, 160, 160, 1.0),fontSize: 13),)
        ],
      ),
    );
  }
  Widget _title(title) {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 5),
      child: Text(
        "${title}",
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 15,

        ),
      ),
    );
  }

  Widget _themeTitle(theme) {
    return Padding(
      padding: EdgeInsets.only(top: 5, left: 5),
      child: Text("${theme}",
          style: TextStyle(
              color: Color.fromRGBO(195, 151, 97, 1.0),
              fontWeight: FontWeight.w600,
              fontSize: 12)),
    );
  }
}
