import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenAdapter{
  static init(context){
   var ratio =  2.0;

   var screen_width = MediaQuery.of(context).size.width;

   var screen_height = MediaQuery.of(context).size.height;


   ScreenUtil.instance = ScreenUtil(width: screen_width*ratio,height: screen_height*ratio,allowFontScaling: true)..init(context);


    //iphone5s
  //  ScreenUtil.instance = ScreenUtil(width: 640,height: 1136)..init(context);

    //iphone6s
    //ScreenUtil.instance = ScreenUtil(width: 750,height: 1334)..init(context);

    //iphone7pluse

   // ScreenUtil.instance = ScreenUtil(width: 818,height: 1472,allowFontScaling: true)..init(context);

    //iphoneX 及以上设备
   // ScreenUtil.instance = ScreenUtil(width: 828,height: 1792,allowFontScaling: true)..init(context);



  }


  static getStatusBarHeight(){
    return ScreenUtil.statusBarHeight;
  }

  static setHeight(double value){
    return ScreenUtil.getInstance().setHeight(value);
  }

  static setWidth(double value){
    return ScreenUtil.getInstance().setWidth(value);
  }

  static getScreenHeight(){
    return ScreenUtil.screenHeight;
  }

  static getScreenWidth(){
    return ScreenUtil.screenWidth;
  }
}