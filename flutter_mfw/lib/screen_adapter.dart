import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenAdapter{
  static init(context){
    ScreenUtil.instance = ScreenUtil(width: 828,height: 1792)..init(context);

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