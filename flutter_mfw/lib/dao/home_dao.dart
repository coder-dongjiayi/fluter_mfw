
import 'package:flutter_mfw/model/tabar_model.dart';
import 'package:flutter_mfw/model/hote_model.dart';
import 'package:flutter_mfw/model/waterfall_model.dart';
import 'package:dio/dio.dart';
const  HOME_URL =  "https://mapi.mafengwo.cn/discovery/get_index/v2?jsondata=%7B%22tab_id%22%3A%2255%22%2C%22top_refresh%22%3A%221%22%2C%22by_user%22%3A%221%22%7D&o_lat=39.903648&device_type=android&device_mid=867674040394714&dev_ver=D1926.0&oauth_version=1.0&oauth_signature_method=HMAC-SHA1&screen_height=2210&open_udid=A4%3A50%3A46%3A36%3AA8%3A43&app_version_code=800&x_auth_mode=client_auth&oauth_token=0_0969044fd4edf59957f4a39bce9200c6&sys_ver=9&o_lng=116.444529&brand=Xiaomi&zzzghostsigh=d54f6b842f09f103c3685c61601e2122b8943e7a&app_code=com.mfw.roadbook&screen_scale=2.88&screen_width=1080&time_offset=480&device_id=A4%3A50%3A46%3A36%3AA8%3A43&oauth_signature=SqmRPsyjvjaLrG2MEKPUGFWs8ik%3D&oauth_consumer_key=5&oauth_timestamp=1568794690&oauth_nonce=89dbcb85-fe39-4e44-9de6-6f38892c41c0&mfwsdk_ver=20140507&app_ver=9.3.28&has_notch=0&hardware_model=MIX+3&channel_id=XiaoMi&";


class TabbarListDao{
  static Future<TabarListModel> fetch() async{

    final response = await Dio().get(HOME_URL);
    if(response.statusCode == 200){

      var result =  TabarListModel.fromJson(response.data["data"]["ex"]);
      var item = TabItemModel();
      item.id = "0";
      item.name = "关注";
      result.tabList.insert(0, item);
      return result;
    }else{
     throw Exception("首页请求失败");
    }
  }

}

class HoteListDao{
  static Future<HoteModel> fetch() async {
    final response = await Dio().get(HOME_URL);
    if(response.statusCode == 200){

      var result =  HoteModel.fromJson(response.data["data"]["list"][0]["data"]);

      return result;
    }else{
      throw Exception("首页请求失败");
    }
  }
}

