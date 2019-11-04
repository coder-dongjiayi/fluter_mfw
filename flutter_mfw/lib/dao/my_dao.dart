import 'package:dio/dio.dart';
import 'package:flutter_mfw/model/my_channel_model.dart';
const MY_URL = "https://mapi.mafengwo.cn/system/config/get_mine_channel_list/v2?o_lat=39.904542&device_type=android&dev_ver=D1930.0&oauth_version=1.0&oauth_signature_method=HMAC-SHA1&screen_height=2029&open_udid=64774894b98b2cc4&app_version_code=808&x_auth_mode=client_auth&oauth_token=0_0969044fd4edf59957f4a39bce9200c6&sys_ver=9&o_lng=116.443435&brand=Xiaomi&zzzghostsigh=9ce12a2caaf2eadf6f91c00081858578b4e56dbd&app_code=com.mfw.roadbook&android_oaid=1bb9aee3d819ec37&screen_scale=2.88&screen_width=1080&time_offset=480&device_id=64774894b98b2cc4&oauth_signature=csENOl67%2BKUlvGOT2gwarBkYqyI%3D&oauth_consumer_key=5&oauth_timestamp=1572846980&oauth_nonce=7cabcaea-6274-4d62-a7f8-4d97bad174cf&mfwsdk_ver=20140507&app_ver=9.3.32&has_notch=0&hardware_model=MI+8+SE&channel_id=XiaoMi&";

class MyChannelDao{
  static Future<MyChannelModel> fetch() async{
    final response = await Dio().get(MY_URL);

      if(response.statusCode == 200){

       var model = MyChannelModel.fromJson(response.data);
       return model;

      }else{
        Exception("请求失败");
      }

  }
}