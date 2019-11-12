
import 'package:dio/dio.dart';
import 'package:flutter_mfw/model/location_model.dart';
import 'package:flutter_mfw/model/location_tababr_model.dart';
import 'package:flutter_mfw/model/location_where_model.dart';

const LOCATION_URL = "https://mapi.mafengwo.cn/mdd/item/get_mdd_item/v4?o_lat=39.903649&device_type=android&device_mid=867674040394714&dev_ver=D1926.0&oauth_version=1.0&oauth_signature_method=HMAC-SHA1&screen_height=2210&open_udid=A4%3A50%3A46%3A36%3AA8%3A43&app_version_code=800&x_auth_mode=client_auth&oauth_token=0_0969044fd4edf59957f4a39bce9200c6&sys_ver=9&o_lng=116.444673&mdd_id=10065&brand=Xiaomi&zzzghostsigh=55a5f3b2071dc13c6e96ae390d579bbbc93f2393&app_code=com.mfw.roadbook&screen_scale=2.88&screen_width=1080&time_offset=480&device_id=A4%3A50%3A46%3A36%3AA8%3A43&oauth_signature=vTxQ9Y%2FKJ5hi1wQpqDGwZx2Wwzs%3D&oauth_consumer_key=5&oauth_timestamp=1571296894&oauth_nonce=0756096c-c16f-4004-84c8-e50a3a84485a&mfwsdk_ver=20140507&app_ver=9.3.28&has_notch=0&hardware_model=MIX+3&by_user=1&channel_id=XiaoMi&";

const WETHER_URL = "https://m.mafengwo.cn/nb/public/weather.php?o_lat=39.903649&device_type=android&type=1&dev_ver=D1926.0&oauth_version=1.0&oauth_signature_method=HMAC-SHA1&screen_height=2210&open_udid=A4%3A50%3A46%3A36%3AA8%3A43&app_version_code=800&x_auth_mode=client_auth&oauth_token=0_0969044fd4edf59957f4a39bce9200c6&sys_ver=9&o_lng=116.444673&brand=Xiaomi&zzzghostsigh=f5837b55528c424ffe27aabf14d0a42ae0a924d8&app_code=com.mfw.roadbook&screen_scale=2.88&screen_width=1080&time_offset=480&device_id=A4%3A50%3A46%3A36%3AA8%3A43&oauth_signature=6Yt5oV0Ng%2BjkdXDJ5Q3miiJ97aI%3D&mddid=10065&oauth_consumer_key=5&oauth_timestamp=1571296894&oauth_nonce=33165392-050c-4f00-9e49-e7ad7e950c59&mfwsdk_ver=20140507&app_ver=9.3.28&has_notch=0&hardware_model=MIX+3&channel_id=XiaoMi&";

const LOCATION_TABAR_URL = "https://mapi.mafengwo.cn/mdd/feed/get_index/v1?jsondata=%7B%22device_mid%22%3A%22867674040394714%22%2C%22mdd_id%22%3A%2210065%22%2C%22by_user%22%3A%221%22%7D&o_lat=39.903649&device_type=android&dev_ver=D1926.0&oauth_version=1.0&oauth_signature_method=HMAC-SHA1&screen_height=2210&open_udid=A4%3A50%3A46%3A36%3AA8%3A43&app_version_code=800&x_auth_mode=client_auth&oauth_token=0_0969044fd4edf59957f4a39bce9200c6&sys_ver=9&o_lng=116.444673&brand=Xiaomi&zzzghostsigh=bcc14775fcb823740a1ad52fb1dd72842098abe2&app_code=com.mfw.roadbook&screen_scale=2.88&screen_width=1080&time_offset=480&device_id=A4%3A50%3A46%3A36%3AA8%3A43&oauth_signature=RG54frpqaPt7zPfxq4kjUTafbZU%3D&oauth_consumer_key=5&oauth_timestamp=1571296894&oauth_nonce=3acaaaae-1f9e-4e0e-acf1-3dc817c1c916&mfwsdk_ver=20140507&app_ver=9.3.28&has_notch=0&hardware_model=MIX+3&channel_id=XiaoMi&";

const LOCATION_WHERE_URL = "https://mapi.mafengwo.cn/mdd/feed/get_index/v1?jsondata=%7B%22tab_id%22%3A%22book_list%22%2C%22device_mid%22%3A%22868936038181299%22%2C%22mdd_id%22%3A%2210065%22%2C%22by_user%22%3A%221%22%7D&o_lat=39.904546&patch_ver=1.0&device_type=android&dev_ver=D1931.0&oauth_version=1.0&oauth_signature_method=HMAC-SHA1&screen_height=2029&open_udid=64774894b98b2cc4&app_version_code=812&x_auth_mode=client_auth&oauth_token=0_0969044fd4edf59957f4a39bce9200c6&sys_ver=9&o_lng=116.443446&brand=Xiaomi&zzzghostsigh=a21bb64b221fe2115f8f9316dd21c217e2afa228&app_code=com.mfw.roadbook&android_oaid=1bb9aee3d819ec37&screen_scale=2.88&screen_width=1080&time_offset=480&device_id=64774894b98b2cc4&oauth_signature=SJ60dO%2F%2BW19l%2BpXR1ruD%2FBmAR9U%3D&oauth_consumer_key=5&oauth_timestamp=1573108886&oauth_nonce=6b8feb27-d937-45a5-9732-89477149da3a&mfwsdk_ver=20140507&app_ver=9.3.33&has_notch=1&hardware_model=MI+8+SE&channel_id=XiaoMi&";

class LocationDao{

  static  Future<LocationModel> fetch()async{
    final response = await Dio().get(LOCATION_URL);
    if(response.statusCode == 200){
      var result = LocationModel.fromJson(response.data);


      return result;
    }else{
      throw Exception("location信息请求失败");
    }
  }

}

class LocationTabbarDao{
  static Future<LocationTababrModel> fetch() async {

    final response = await Dio().get(LOCATION_TABAR_URL);
    if(response.statusCode == 200){


      var result = LocationTababrModel.fromJson(response.data);

      return result;
    }else{
      throw Exception("首页tabbar请求失败");
    }
  }
}

class LocationWhereDao{
  static Future<LocationWhereModel> fetch() async{

    final response = await Dio().get(LOCATION_WHERE_URL);
    if(response.statusCode == 200){

      var result = LocationWhereModel.fromJson(response.data);


      return result;

    }else{
      throw Exception("预定请求失败");
    }
  }
}

