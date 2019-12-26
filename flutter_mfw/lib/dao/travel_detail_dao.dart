import 'package:dio/dio.dart';

import 'package:flutter_mfw/model/travel_detail_model.dart';
const TRAVEL_DETAIL_URL = "https://mapi.mafengwo.cn/weng_exp/detail/get_detail/v4?o_lat=39.904569&device_type=android&dev_ver=D1935.0&weng_id=1645476439947365&oauth_version=1.0&oauth_signature_method=HMAC-SHA1&is_show_near_wengs=0&screen_height=2029&open_udid=64774894b98b2cc4&app_version_code=820&x_auth_mode=client_auth&oauth_token=0_0969044fd4edf59957f4a39bce9200c6&sys_ver=9&o_lng=116.443473&brand=Xiaomi&zzzghostsigh=2fd0966d8f173ff358adaea2c31f9b9522a368de&app_code=com.mfw.roadbook&android_oaid=1bb9aee3d819ec37&screen_scale=2.88&screen_width=1080&time_offset=480&device_id=64774894b98b2cc4&oauth_signature=%2BBoDrj%2FRGIh8Ex4Ms0ZYoRkJKhg%3D&oauth_consumer_key=5&oauth_timestamp=1576825984&is_full_version=1&oauth_nonce=e1e16b25-d7fc-400d-ae0b-516c6646dbe1&mfwsdk_ver=20140507&app_ver=9.3.37&has_notch=1&hardware_model=MI+8+SE&channel_id=XiaoMi&";


class TravelDetailDao{

  static Future<TravelDetailModel> fetch() async{
    final response = await Dio().get(TRAVEL_DETAIL_URL);
    if(response.statusCode == 200){


       var model = TravelDetailModel.fromJson(response.data["data"]);

       return model;

    }else{
      Exception("请求失败");
    }
  }
}