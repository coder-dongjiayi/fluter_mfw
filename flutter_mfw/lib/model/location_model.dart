class LocationModel {
  Object rc;
  String rm;
  Data data;

  LocationModel({this.rc, this.rm, this.data});

  LocationModel.fromJson(Map<String, dynamic> json) {
    rc = json['rc'];
    rm = json['rm'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rc'] = this.rc;
    data['rm'] = this.rm;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class Data {
  WeatherModel ex;
  List<ListModel> listModel;
  Page page;

  Data({this.ex, this.listModel, this.page});

  Data.fromJson(Map<String, dynamic> json) {
    ex = json['ex'] != null ? new WeatherModel.fromJson(json['ex']) : null;
    if (json['list'] != null) {
      listModel = new List<ListModel>();
      json['list'].forEach((v) { listModel.add(new ListModel.fromJson(v)); });
    }
    page = json['page'] != null ? new Page.fromJson(json['page']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.ex != null) {
      data['ex'] = this.ex.toJson();
    }
    if (this.listModel != null) {
      data['list'] = this.listModel.map((v) => v.toJson()).toList();
    }
    if (this.page != null) {
      data['page'] = this.page.toJson();
    }
    return data;
  }
}

class WeatherModel {
  String id;
  String name;
  double lat;
  double lng;
  String mapProvider;
  Object isCountry;
  Object travelScene;
  Header header;
  String abtest;
  GuideImg guideImg;

  WeatherModel({this.id, this.name, this.lat, this.lng, this.mapProvider, this.isCountry, this.travelScene, this.header, this.abtest, this.guideImg});

  WeatherModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    lat = json['lat'];
    lng = json['lng'];
    mapProvider = json['map_provider'];
    isCountry = json['is_country'];
    travelScene = json['travel_scene'];
    header = json['header'] != null ? new Header.fromJson(json['header']) : null;
    abtest = json['abtest'];
    guideImg = json['guide_img'] != null ? new GuideImg.fromJson(json['guide_img']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['lat'] = this.lat;
    data['lng'] = this.lng;
    data['map_provider'] = this.mapProvider;
    data['is_country'] = this.isCountry;
    data['travel_scene'] = this.travelScene;
    if (this.header != null) {
      data['header'] = this.header.toJson();
    }
    data['abtest'] = this.abtest;
    if (this.guideImg != null) {
      data['guide_img'] = this.guideImg.toJson();
    }
    return data;
  }
}

class Header {
  String weatherJumpUrl;
  String thumbnail;
  Mask mask;
  Traveling traveling;


  Header({this.weatherJumpUrl, this.thumbnail, this.mask, this.traveling});

  Header.fromJson(Map<String, dynamic> json) {
    weatherJumpUrl = json['weather_jump_url'];
    thumbnail = json['thumbnail'];
    mask = json['mask'] != null ? new Mask.fromJson(json['mask']) : null;
    traveling = json['traveling'] != null ? new Traveling.fromJson(json['traveling']) : null;

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['weather_jump_url'] = this.weatherJumpUrl;
    data['thumbnail'] = this.thumbnail;
    if (this.mask != null) {
      data['mask'] = this.mask.toJson();
    }
    if (this.traveling != null) {
      data['traveling'] = this.traveling.toJson();
    }

    return data;
  }
}

class Mask {
  String startColor;
  String endColor;
  String startAlpha;

  Mask({this.startColor, this.endColor, this.startAlpha});

  Mask.fromJson(Map<String, dynamic> json) {
    startColor = json['start_color'];
    endColor = json['end_color'];
    startAlpha = json['start_alpha'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['start_color'] = this.startColor;
    data['end_color'] = this.endColor;
    data['start_alpha'] = this.startAlpha;
    return data;
  }
}

class Traveling {
  Object num;
  List<UserList> userList;
  String jumpUrl;

  Traveling({this.num, this.userList, this.jumpUrl});

  Traveling.fromJson(Map<String, dynamic> json) {
    num = json['num'];
    if (json['user_list'] != null) {
      userList = new List<UserList>();
      json['user_list'].forEach((v) { userList.add(new UserList.fromJson(v)); });
    }
    jumpUrl = json['jump_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['num'] = this.num;
    if (this.userList != null) {
      data['user_list'] = this.userList.map((v) => v.toJson()).toList();
    }
    data['jump_url'] = this.jumpUrl;
    return data;
  }
}

class UserList {
  String name;
  String logo;

  UserList({this.name, this.logo});

  UserList.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    logo = json['logo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['logo'] = this.logo;
    return data;
  }
}



class GuideImg {
  Object width;
  Object height;
  String icon;

  GuideImg({this.width, this.height, this.icon});

  GuideImg.fromJson(Map<String, dynamic> json) {
    width = json['width'];
    height = json['height'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['width'] = this.width;
    data['height'] = this.height;
    data['icon'] = this.icon;
    return data;
  }
}

class ListModel {
  String style;
  DataNavModel dataNavModel;

  ListModel({this.style});

  ListModel.fromJson(Map<String, dynamic> json) {
    style = json['style'];
    dataNavModel = json['data'] != null ? new DataNavModel.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['style'] = this.style;
    if (this.dataNavModel != null) {
      data['data'] = this.dataNavModel.toJson();
    }
    return data;
  }
}

class DataNavModel {


  List<ListNavModel> listNavModel;
  Object rowNum;
  String itemBgImage;
  String bgStartColor;
  String bgEndColor;
  String bgColor;
  String title;
  String navTitle;
  String navJumpUrl;
  String moreJumpUrl;
  WengInfo wengInfo;
  List<TabList> tabList;
  List<TagList> tagList;

  DataNavModel({  this.listNavModel,this.rowNum,this.itemBgImage,this.bgStartColor,this.bgEndColor,this.title,this.navTitle,this.navJumpUrl,this.moreJumpUrl,this.wengInfo,this.tabList,this.tagList});

  DataNavModel.fromJson(Map<String, dynamic> json) {

    if (json['list'] != null) {
      listNavModel = new List<ListNavModel>();
      json['list'].forEach((v) { listNavModel.add(new ListNavModel.fromJson(v)); });
    }

    rowNum = json['row_num'];

    itemBgImage = json['item_bg_image'];
    bgStartColor = json['bg_start_color'];
    bgEndColor = json['bg_end_color'];
    bgColor = json['bg_color'];
    title = json['title'];
    navTitle = json['nav_title'];
    navJumpUrl = json['nav_jump_url'];
    moreJumpUrl = json['more_jump_url'];
    wengInfo = json['weng_info'] != null ? new WengInfo.fromJson(json['weng_info']) : null;


    if (json['tab_list'] != null) {
      tabList = new List<TabList>();
      json['tab_list'].forEach((v) { tabList.add(new TabList.fromJson(v)); });
    }
    if (json['tag_list'] != null) {
      tagList = new List<TagList>();
      json['tag_list'].forEach((v) { tagList.add(new TagList.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();


    if (this.listNavModel != null) {
      data['list'] = this.listNavModel.map((v) => v.toJson()).toList();
    }
    data['row_num'] = this.rowNum;
    data['item_bg_image'] = this.itemBgImage;
    data['bg_start_color'] = this.bgStartColor;
    data['bg_end_color'] = this.bgEndColor;
    data['bg_color'] = this.bgColor;
    data['title'] = this.title;
    data['nav_title'] = this.navTitle;
    data['nav_jump_url'] = this.navJumpUrl;
    data['more_jump_url'] = this.moreJumpUrl;


    if (this.wengInfo != null) {
      data['weng_info'] = this.wengInfo.toJson();
    }
    if (this.tabList != null) {
      data['tab_list'] = this.tabList.map((v) => v.toJson()).toList();
    }
    if (this.tagList != null) {
      data['tag_list'] = this.tagList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}


class ListNavModel {

  String title;
  String icon;
  String jumpUrl;
  String iconTpt;
  Badge badge;
  Img   img;
  String subtitle;
  Object isInner;
  String thumbnail;
  String desc;

  ListNavModel({this.img ,this.title, this.icon, this.jumpUrl, this.iconTpt, this.badge, this.subtitle, this.isInner, this.thumbnail, this.desc});

  ListNavModel.fromJson(Map<String, dynamic> json) {

    title = json['title'];
    icon = json['icon'];
    jumpUrl = json['jump_url'];
    iconTpt = json['icon_tpt'];
    badge = json['badge'] != null ? new Badge.fromJson(json['badge']) : null;
    img = json['img'] != null ? new Img.fromJson(json['img']) : null;
    subtitle = json['subtitle'];
    isInner = json['is_inner'];
    thumbnail = json['thumbnail'];
    desc = json['desc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['title'] = this.title;
    data['icon'] = this.icon;
    data['jump_url'] = this.jumpUrl;
    data['icon_tpt'] = this.iconTpt;
    if (this.badge != null) {
      data['badge'] = this.badge.toJson();
    }
    data['subtitle'] = this.subtitle;
    data['is_inner'] = this.isInner;
    data['thumbnail'] = this.thumbnail;
    data['desc'] = this.desc;
    return data;
  }
}

class Img{
  String image;
  Img({this.image});

  Img.fromJson(Map<String, dynamic> json) {

    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['image'] = this.image;
    return data;
  }
}

class Badge {
  Object width;
  Object height;
  String image;

  Badge({this.width, this.height, this.image});

  Badge.fromJson(Map<String, dynamic> json) {
    width = json['width'];
    height = json['height'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['width'] = this.width;
    data['height'] = this.height;
    data['image'] = this.image;
    return data;
  }
}

class WengInfo {

  String title;
  String subtitle;
  String navTitle;
  String jumpUrl;
  List<Users> users;

  WengInfo({this.title, this.subtitle, this.navTitle, this.jumpUrl, this.users});

  WengInfo.fromJson(Map<String, dynamic> json) {

    title = json['title'];
    subtitle = json['subtitle'];
    navTitle = json['nav_title'];
    jumpUrl = json['jump_url'];
    if (json['users'] != null) {
      users = new List<Users>();
      json['users'].forEach((v) { users.add(new Users.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['title'] = this.title;
    data['subtitle'] = this.subtitle;
    data['nav_title'] = this.navTitle;
    data['jump_url'] = this.jumpUrl;
    if (this.users != null) {
      data['users'] = this.users.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class BusinessItem {
  String moduleName;
  String moduleId;
  String prmId;
  String itemId;
  String itemType;
  String itemName;
  String itemUri;


  BusinessItem({this.moduleName, this.moduleId, this.prmId, this.itemId, this.itemType, this.itemName, this.itemUri});

  BusinessItem.fromJson(Map<String, dynamic> json) {
    moduleName = json['module_name'];
    moduleId = json['module_id'];
    prmId = json['prm_id'];
    itemId = json['item_id'];
    itemType = json['item_type'];
    itemName = json['item_name'];
    itemUri = json['item_uri'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['module_name'] = this.moduleName;
    data['module_id'] = this.moduleId;
    data['prm_id'] = this.prmId;
    data['item_id'] = this.itemId;
    data['item_type'] = this.itemType;
    data['item_name'] = this.itemName;
    data['item_uri'] = this.itemUri;

    return data;
  }
}

class Users {
  int id;
  String name;
  String logo;
  String jumpUrl;
  int level;
  Object isFollow;
  int status;
  String statusUrl;


  Users({this.id, this.name, this.logo, this.jumpUrl, this.level, this.isFollow, this.status, this.statusUrl});

  Users.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    logo = json['logo'];
    jumpUrl = json['jump_url'];
    level = json['level'];
    isFollow = json['is_follow'];
    status = json['status'];
    statusUrl = json['status_url'];


  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['logo'] = this.logo;
    data['jump_url'] = this.jumpUrl;
    data['level'] = this.level;
    data['is_follow'] = this.isFollow;
    data['status'] = this.status;
    data['status_url'] = this.statusUrl;

    return data;
  }
}

class TabList {

  int id;
  String name;
  String type;
  Object isSelected;
  Badge badge;

  TabList({ this.id, this.name, this.type, this.isSelected, this.badge});

  TabList.fromJson(Map<String, dynamic> json) {

    id = json['id'];
    name = json['name'];
    type = json['type'];
    isSelected = json['is_selected'];
    badge = json['badge'] != null ? new Badge.fromJson(json['badge']) : null;


  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['id'] = this.id;
    data['name'] = this.name;
    data['type'] = this.type;
    data['is_selected'] = this.isSelected;
    if (this.badge != null) {
      data['badge'] = this.badge.toJson();
    }
    return data;
  }
}



class TagList {
  Object id;

  String title;

  SwitchInfo switchInfo;
  List<ListWhatModel> listWhatModel;

  TagList({this.id, this.title,  this.switchInfo, this.listWhatModel});

  TagList.fromJson(Map<String, dynamic> json) {
    id = json['id'];

    title = json['title'];

    switchInfo = json['switch_info'] != null ? new SwitchInfo.fromJson(json['switch_info']) : null;
    if (json['list'] != null) {
      listWhatModel = new List<ListWhatModel>();
      json['list'].forEach((v) { listWhatModel.add(new ListWhatModel.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;

    data['title'] = this.title;

    if (this.switchInfo != null) {
      data['switch_info'] = this.switchInfo.toJson();
    }
    if (this.listWhatModel != null) {
      data['list'] = this.listWhatModel.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SwitchInfo {
  String title;
  Object id;
  String guideTip;

  SwitchInfo({this.title, this.id, this.guideTip});

  SwitchInfo.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    id = json['id'];
    guideTip = json['guide_tip'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['id'] = this.id;
    data['guide_tip'] = this.guideTip;
    return data;
  }
}

class ListWhatModel {

  String title;
  String subtitle;
  String thumbnail;
  String jumpUrl;

  Price price;

  ListWhatModel({ this.title, this.subtitle, this.thumbnail, this.jumpUrl,  this.price});

  ListWhatModel.fromJson(Map<String, dynamic> json) {

    title = json['title'];
    subtitle = json['subtitle'];
    thumbnail = json['thumbnail'];
    jumpUrl = json['jump_url'];

    price = json['price'] != null ? new Price.fromJson(json['price']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['title'] = this.title;
    data['subtitle'] = this.subtitle;
    data['thumbnail'] = this.thumbnail;
    data['jump_url'] = this.jumpUrl;

    if (this.price != null) {
      data['price'] = this.price.toJson();
    }
    return data;
  }
}

class Price {
  String number;
  String type;
  String prefix;
  String suffix;

  Price({this.number, this.type, this.prefix, this.suffix});

  Price.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    type = json['type'];
    prefix = json['prefix'];
    suffix = json['suffix'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['number'] = this.number;
    data['type'] = this.type;
    data['prefix'] = this.prefix;
    data['suffix'] = this.suffix;
    return data;
  }
}

class Page {
  bool next;
  String nextBoundary;

  Page({this.next, this.nextBoundary});

  Page.fromJson(Map<String, dynamic> json) {
    next = json['next'];
    nextBoundary = json['next_boundary'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['next'] = this.next;
    data['next_boundary'] = this.nextBoundary;
    return data;
  }
}
