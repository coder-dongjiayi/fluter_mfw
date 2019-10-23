
import 'package:dio/dio.dart';
import 'package:flutter_mfw/model/location_model.dart';
const LOCATION_URL = "https://mapi.mafengwo.cn/mdd/item/get_mdd_item/v4?o_lat=39.903649&device_type=android&device_mid=867674040394714&dev_ver=D1926.0&oauth_version=1.0&oauth_signature_method=HMAC-SHA1&screen_height=2210&open_udid=A4%3A50%3A46%3A36%3AA8%3A43&app_version_code=800&x_auth_mode=client_auth&oauth_token=0_0969044fd4edf59957f4a39bce9200c6&sys_ver=9&o_lng=116.444673&mdd_id=10065&brand=Xiaomi&zzzghostsigh=55a5f3b2071dc13c6e96ae390d579bbbc93f2393&app_code=com.mfw.roadbook&screen_scale=2.88&screen_width=1080&time_offset=480&device_id=A4%3A50%3A46%3A36%3AA8%3A43&oauth_signature=vTxQ9Y%2FKJ5hi1wQpqDGwZx2Wwzs%3D&oauth_consumer_key=5&oauth_timestamp=1571296894&oauth_nonce=0756096c-c16f-4004-84c8-e50a3a84485a&mfwsdk_ver=20140507&app_ver=9.3.28&has_notch=0&hardware_model=MIX+3&by_user=1&channel_id=XiaoMi&";

const WETHER_URL = "https://m.mafengwo.cn/nb/public/weather.php?o_lat=39.903649&device_type=android&type=1&dev_ver=D1926.0&oauth_version=1.0&oauth_signature_method=HMAC-SHA1&screen_height=2210&open_udid=A4%3A50%3A46%3A36%3AA8%3A43&app_version_code=800&x_auth_mode=client_auth&oauth_token=0_0969044fd4edf59957f4a39bce9200c6&sys_ver=9&o_lng=116.444673&brand=Xiaomi&zzzghostsigh=f5837b55528c424ffe27aabf14d0a42ae0a924d8&app_code=com.mfw.roadbook&screen_scale=2.88&screen_width=1080&time_offset=480&device_id=A4%3A50%3A46%3A36%3AA8%3A43&oauth_signature=6Yt5oV0Ng%2BjkdXDJ5Q3miiJ97aI%3D&mddid=10065&oauth_consumer_key=5&oauth_timestamp=1571296894&oauth_nonce=33165392-050c-4f00-9e49-e7ad7e950c59&mfwsdk_ver=20140507&app_ver=9.3.28&has_notch=0&hardware_model=MIX+3&channel_id=XiaoMi&";
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
