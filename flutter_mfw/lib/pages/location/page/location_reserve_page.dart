import 'package:flutter/material.dart';
import 'package:flutter_mfw/screen_adapter.dart';
import 'package:flutter_mfw/dao/location_dao.dart';
import 'package:flutter_mfw/model/location_where_model.dart';
import 'package:flutter_mfw/pages/location/widget/location_where_live_widget.dart';
class LocationReservePage extends StatefulWidget {
  @override
  _LocationReservePageState createState() => _LocationReservePageState();
}

class _LocationReservePageState extends State<LocationReservePage> {

  var _list = <ChildrenList>[];

  DataObject _whereDataObject;

  DataObject _salesDataObject;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getData();
  }
  void _getData(){
    LocationWhereDao.fetch().then((reslut){

      setState(() {
        for(var item in reslut.data.dataList){

          if(item.style == "hotels"){

            _whereDataObject = item.dataObject;

          }
          if(item.style == "sales"){
            _salesDataObject = item.dataObject;
            _list = _salesDataObject.tagList[1].list;
          }
        }
      });


    }).catchError((error){

    });
  }
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);

    return  CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: LocationWhereLiveWidget(
            onTap: (index){
              setState(() {
                _list = _salesDataObject.tagList[index].list;
              });
            },
            whereDataObject: _whereDataObject,
            salesDataObject: _salesDataObject,
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            width: double.infinity,
            height: ScreenAdapter.setHeight(30),
          ),
        ),
        SliverList(

            delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index){

                  var item = _list[index];

                   return _travelItem(item);
                 },
              childCount: _list.length
           )
        )

      ],
    );

  }

  Widget _travelItem(ChildrenList childern){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
      height: ScreenAdapter.setHeight(240),
      child: Row(
        children: <Widget>[

          _leftImageWidget(childern.desc,childern.type,childern.thumbnail),
          Expanded(
            flex: 1,
            child:  _rightContentWidget(

                childern.title,
                childern.subtitle,
                childern.bottom,
                childern.price.number.toString(),
                childern.price.type,
                childern.price.suffix
            ),
          )

        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color:Color.fromRGBO(224, 224, 224, 1.0),
            offset: Offset(2, 2), //阴影xy轴偏移量
            blurRadius: 2.0, //阴影模糊程度

          )
        ]
      ),
    );

  }

  Widget _rightContentWidget(title,subTitle,bottom,number,type,suffix){

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _title(title),
        _store(subTitle),
        _sales(bottom, number,type,suffix)
      ],
    );

  }

  Widget _store(subTitle){
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
      child: Text("${subTitle}",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 12)),
    );
  }

  Widget _sales(bottom,number,type,suffix){

    return Padding(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("${bottom}",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 12)),
         Text.rich(
             TextSpan(
               children: [

                 TextSpan(text: "${type}",style: TextStyle(color: Color.fromRGBO(251, 45, 40, 1.0),fontSize: 10,fontWeight: FontWeight.w600)),
                 TextSpan(text: "${number}",style: TextStyle(color: Color.fromRGBO(251, 45, 40, 1.0),fontSize: 15,fontWeight: FontWeight.w600)),
                 TextSpan(text: " ${suffix}",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300))
               ]
             )
         )
        ],
      ),
    );
  }
  Widget _title(title){
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Text(
          "${title}",

          maxLines: 2,
          style: TextStyle(fontWeight: FontWeight.w600),

          overflow: TextOverflow.ellipsis
      ),
    );
  }


  Widget _leftImageWidget(desc,type,imageUrl){
    return Container(
      width: ScreenAdapter.setWidth(190),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
           padding: EdgeInsets.fromLTRB(5, 2, 5, 2),

            child: Text("${desc}",style: TextStyle(color: Colors.white,fontSize: 11),),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomRight: Radius.circular(10)),
              color: Color.fromRGBO(0, 0, 0, 0.6)
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.fromLTRB(0, 2, 0, 2),
            child: Text("${type}",style: TextStyle(color: Colors.white,fontSize: 12),),

            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5)),
                color: Color.fromRGBO(0, 0, 0, 0.6)
            ),
          )

        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomLeft: Radius.circular(5)),
        image: DecorationImage(
          fit: BoxFit.cover,
            image: NetworkImage(
            "${imageUrl}"))
      ),
    );
  }





}
