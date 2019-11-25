import 'package:dio/dio.dart';
import 'package:flutter_mfw/model/travel_header_model.dart';
import 'package:flutter_mfw/model/travel_list_model.dart';

const TRAVEL_HEADER_URL = "https://mapi.mafengwo.cn/sales/home/get_index/v2?jsondata=%7B%22top_refresh%22%3A%220%22%2C%22page%22%3A%7B%22num%22%3A15%7D%7D&o_lat=39.904542&device_type=android&dev_ver=D1932.0&oauth_version=1.0&oauth_signature_method=HMAC-SHA1&screen_height=2029&open_udid=64774894b98b2cc4&app_version_code=815&x_auth_mode=client_auth&oauth_token=0_0969044fd4edf59957f4a39bce9200c6&sys_ver=9&o_lng=116.443449&brand=Xiaomi&zzzghostsigh=d07df9f817a222975d5cbc377cf2a86cee5140ea&app_code=com.mfw.roadbook&android_oaid=1bb9aee3d819ec37&screen_scale=2.88&screen_width=1080&time_offset=480&device_id=64774894b98b2cc4&oauth_signature=ZOPvqgFKYMMq4sAW3XsGCg6kYeI%3D&oauth_consumer_key=5&oauth_timestamp=1573707737&oauth_nonce=68a4f45c-1c41-44be-80d7-210da6b116f9&mfwsdk_ver=20140507&app_ver=9.3.34&has_notch=1&hardware_model=MI+8+SE&channel_id=XiaoMi&";

const TRAVEL_LIST_URL = "https://mapi.mafengwo.cn/sales/home/get_index/v2?jsondata=%7B%22page%22%3A%7B%22num%22%3A15%2C%22boundary%22%3A%221%22%7D%7D&o_lat=39.904542&device_type=android&dev_ver=D1932.0&oauth_version=1.0&oauth_signature_method=HMAC-SHA1&screen_height=2029&open_udid=64774894b98b2cc4&app_version_code=815&x_auth_mode=client_auth&oauth_token=0_0969044fd4edf59957f4a39bce9200c6&sys_ver=9&o_lng=116.443449&brand=Xiaomi&zzzghostsigh=521deb149b9e7d14de0029a4c0f9ed977b9b7d0a&app_code=com.mfw.roadbook&android_oaid=1bb9aee3d819ec37&screen_scale=2.88&screen_width=1080&time_offset=480&device_id=64774894b98b2cc4&oauth_signature=ZHFSuE7TVZR3C1adlOeiWEeqM3o%3D&oauth_consumer_key=5&oauth_timestamp=1573707738&oauth_nonce=a2b32230-f138-4db8-bacc-11995a9ddd35&mfwsdk_ver=20140507&app_ver=9.3.34&has_notch=1&hardware_model=MI+8+SE&channel_id=XiaoMi&";

class TravelHeaderDao{

  static Future <TravelHeaderModel> fetch() async{
   final response = await Dio().get(TRAVEL_HEADER_URL);
   if(response.statusCode == 200){

     var model = TravelHeaderModel.fromJson(response.data);
     return model;

   }else{
     Exception("请求失败");
   }
  }
}

class TravelListDao{
  static Future <TravelListModel> fetch() async{

    final response = await Dio().get(TRAVEL_LIST_URL);
    if(response.statusCode == 200){
      var model = TravelListModel.fromJson(response.data);

      return model;

    }else{
      Exception("请求失败");
    }

  }
}