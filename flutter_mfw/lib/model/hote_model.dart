class HoteModel {
  List<HoteItemModel> list;

  HoteModel({this.list});

  HoteModel.fromJson(Map<String, dynamic> json) {
    if (json['list'] != null) {
      list = new List<HoteItemModel>();
      json['list'].forEach((v) {
        list.add(new HoteItemModel.fromJson(v));
      });
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

class HoteItemModel {
  String title;
  Tag tag;
  String jumpUrl;
  int isHotTopic;
  String subTitle;
  String image;
  BusinessItem businessItem;

  HoteItemModel(
      {this.title,
        this.tag,
        this.jumpUrl,
        this.isHotTopic,
        this.subTitle,
        this.image,
        this.businessItem});

  HoteItemModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    tag = json['tag'] != null ? new Tag.fromJson(json['tag']) : null;
    jumpUrl = json['jump_url'];
    isHotTopic = json['is_hot_topic'];
    subTitle = json['sub_title'];
    image = json['image'];
    businessItem = json['business_item'] != null
        ? new BusinessItem.fromJson(json['business_item'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    if (this.tag != null) {
      data['tag'] = this.tag.toJson();
    }
    data['jump_url'] = this.jumpUrl;
    data['is_hot_topic'] = this.isHotTopic;
    data['sub_title'] = this.subTitle;
    data['image'] = this.image;
    if (this.businessItem != null) {
      data['business_item'] = this.businessItem.toJson();
    }
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

  BusinessItem(
      {this.itemId, this.itemType, this.abtest, this.prmId, this.extra});

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

  Extra(
      {this.typeInfo, this.isTraveling, this.travelingMdd, this.userStrategy});

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
