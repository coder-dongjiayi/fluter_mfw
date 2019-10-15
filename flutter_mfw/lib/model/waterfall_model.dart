class WaterFallListModel {
  List<WaterFallItemModel> list;

  WaterFallListModel({this.list});

  WaterFallListModel.fromJson(Map<String, dynamic> json) {
    if (json['list'] != null) {
      list = new List<WaterFallItemModel>();
      json['list'].forEach((v) { list.add(new WaterFallItemModel.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.list != null) {
      data['list'] = this.list.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class WaterFallItemModel {
  String style;
  Data data;

  WaterFallItemModel({this.style, this.data});

  WaterFallItemModel.fromJson(Map<String, dynamic> json) {
    style = json['style'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['style'] = this.style;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class Data {
  Object id;
  String jumpUrl;
  Object image;
  String tag;
  String title;
  String time;
  String timeDesc;
  User user;
  String desc;
  int descPrefix;
  BusinessItem businessItem;
  String content;
  String tagText;
  String typeText;
  RightTopImage rightTopImage;
  String location;
  int isAd;
  int numLike;
  int isLiked;
  String type;
  int showLike;

  Data({ this.id, this.jumpUrl, this.image, this.tag, this.title, this.time, this.timeDesc, this.user, this.desc, this.descPrefix, this.businessItem, this.content, this.tagText, this.typeText, this.rightTopImage, this.location, this.isAd, this.numLike, this.isLiked, this.type, this.showLike});

  Data.fromJson(Map<String, dynamic> json) {

    id = json['id'];
    jumpUrl = json['jump_url'];
    image = json['image'];
    tag = json['tag'];
    title = json['title'];
    time = json['time'];
    timeDesc = json['time_desc'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    desc = json['desc'];
    descPrefix = json['desc_prefix'];
    businessItem = json['business_item'] != null ? new BusinessItem.fromJson(json['business_item']) : null;
    content = json['content'];
    tagText = json['tag_text'];
    typeText = json['type_text'];
    rightTopImage = json['right_top_image'] != null ? new RightTopImage.fromJson(json['right_top_image']) : null;
    location = json['location'];
    isAd = json['is_ad'];
    numLike = json['num_like'];
    isLiked = json['is_liked'];
    type = json['type'];
    showLike = json['show_like'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['id'] = this.id;
    data['jump_url'] = this.jumpUrl;
    data['image'] = this.image;
    data['tag'] = this.tag;
    data['title'] = this.title;
    data['time'] = this.time;
    data['time_desc'] = this.timeDesc;
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    data['desc'] = this.desc;
    data['desc_prefix'] = this.descPrefix;
    if (this.businessItem != null) {
      data['business_item'] = this.businessItem.toJson();
    }
    data['content'] = this.content;
    data['tag_text'] = this.tagText;
    data['type_text'] = this.typeText;
    if (this.rightTopImage != null) {
      data['right_top_image'] = this.rightTopImage.toJson();
    }
    data['location'] = this.location;
    data['is_ad'] = this.isAd;
    data['num_like'] = this.numLike;
    data['is_liked'] = this.isLiked;
    data['type'] = this.type;
    data['show_like'] = this.showLike;
    return data;
  }
}

class Tag {
  String text;
  String textColor;
  String borderColor;

  Tag({this.text, this.textColor, this.borderColor});

  Tag.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    textColor = json['text_color'];
    borderColor = json['border_color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['text_color'] = this.textColor;
    data['border_color'] = this.borderColor;
    return data;
  }
}

class BusinessItem {
  String itemId;
  String itemType;
  String abtest;
  String prmId;
  Extra extra;


  BusinessItem({this.itemId, this.itemType, this.abtest, this.prmId, this.extra});

  BusinessItem.fromJson(Map<String, dynamic> json) {
    itemId = json['item_id'];
    itemType = json['item_type'];
    abtest = json['abtest'];
    prmId = json['prm_id'];
    extra = json['extra'] != null ? new Extra.fromJson(json['extra']) : null;

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['item_id'] = this.itemId;
    data['item_type'] = this.itemType;
    data['abtest'] = this.abtest;
    data['prm_id'] = this.prmId;
    if (this.extra != null) {
      data['extra'] = this.extra.toJson();
    }

    return data;
  }
}

class Extra {
  String typeInfo;
  int isTraveling;
  int travelingMdd;
  int userStrategy;

  Extra({this.typeInfo, this.isTraveling, this.travelingMdd, this.userStrategy});

  Extra.fromJson(Map<String, dynamic> json) {
    typeInfo = json['type_info'];
    isTraveling = json['is_traveling'];
    travelingMdd = json['traveling_mdd'];
    userStrategy = json['user_strategy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type_info'] = this.typeInfo;
    data['is_traveling'] = this.isTraveling;
    data['traveling_mdd'] = this.travelingMdd;
    data['user_strategy'] = this.userStrategy;
    return data;
  }
}

class User {
  int id;
  String name;
  String logo;
  String jumpUrl;

  int level;
  String statusUrl;
  int status;

  User({this.id, this.name = "name", this.logo= "logo", this.jumpUrl, this.level, this.statusUrl, this.status});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    logo = json['logo'];
    name = json['name'];

    if(logo == null){
      logo = "";
    }
    if(name == null){
      name = "";
    }

    jumpUrl = json['jump_url'];

    level = json['level'];
    statusUrl = json['status_url'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if(this.name != null){
      data['name'] = this.name;
    }
    if(this.logo != null){
      data['logo'] = this.logo;
    }


    data['jump_url'] = this.jumpUrl;

    data['level'] = this.level;
    data['status_url'] = this.statusUrl;
    data['status'] = this.status;
    return data;
  }
}



class RightTopImage {
  String image;
  int width;
  int height;

  RightTopImage({this.image, this.width, this.height});

  RightTopImage.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    width = json['width'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['width'] = this.width;
    data['height'] = this.height;
    return data;
  }
}
