class LocationWhereModel {
  int rc;
  String rm;
  Data data;

  LocationWhereModel({this.rc, this.rm, this.data});

  LocationWhereModel.fromJson(Map<String, dynamic> json) {
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


  List<DataList> dataList;

  Data({this.dataList});

  Data.fromJson(Map<String, dynamic> json) {


    if (json['list'] != null) {
    
      dataList = new List<DataList>();
      json['list'].forEach((v) { dataList.add(new DataList.fromJson(v)); });


    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    if (this.dataList != null) {
      data['list'] = this.dataList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}





class Badge {
  String text;
  String bgStartColor;
  String bgEndColor;

  Badge({this.text, this.bgStartColor, this.bgEndColor});

  Badge.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    bgStartColor = json['bg_start_color'];
    bgEndColor = json['bg_end_color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['bg_start_color'] = this.bgStartColor;
    data['bg_end_color'] = this.bgEndColor;
    return data;
  }
}

class DataList {
  String style;
  DataObject dataObject;

  DataList({this.style, this.dataObject});

  DataList.fromJson(Map<String, dynamic> json) {
    style = json['style'];
    dataObject = json['data'] != null ? new DataObject.fromJson(json['dataObject']) : null;

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['style'] = this.style;
    if (this.dataObject != null) {
      data['data'] = this.dataObject.toJson();
    }
    return data;
  }
}

class DataObject {

  String title;
  Bottom bottom;
  List<TagList> tagList;

  DataObject({ this.title, this.bottom, this.tagList});

  DataObject.fromJson(Map<String, dynamic> json) {

    title = json['title'];
    bottom = json['bottom'] != null ? new Bottom.fromJson(json['bottom']) : null;
    if (json['tag_list'] != null) {
      tagList = new List<TagList>();
      json['tag_list'].forEach((v) { tagList.add(new TagList.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['title'] = this.title;
    if (this.bottom != null) {
      data['bottom'] = this.bottom.toJson();
    }
    if (this.tagList != null) {
      data['tag_list'] = this.tagList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Bottom {
  String title;
  String jumpUrl;

  Bottom({this.title, this.jumpUrl});

  Bottom.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    jumpUrl = json['jump_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['jump_url'] = this.jumpUrl;
    return data;
  }
}

class TagList {
  String title;
  String subtitle;

  List<ChildrenList> list;

  TagList({this.title, this.subtitle, this.list});

  TagList.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subtitle = json['subtitle'];

    if (json['list'] != null) {
      list = new List<ChildrenList>();
      json['list'].forEach((v) { list.add(new ChildrenList.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['subtitle'] = this.subtitle;

    if (this.list != null) {
      data['list'] = this.list.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ChildrenList {

  String title;
  String subtitle;
  String thumbnail;
  Badge badge;
  Price price;
  String jumpUrl;
  String bottom;
  String desc;
  String type;

  ChildrenList({ this.title, this.subtitle, this.thumbnail, this.badge, this.price, this.jumpUrl, this.bottom, this.desc, this.type});

  ChildrenList.fromJson(Map<String, dynamic> json) {


    title = json['title'];


    subtitle = json['subtitle'];
    thumbnail = json['thumbnail'];
    badge = json['badge'] != null ? new Badge.fromJson(json['badge']) : null;
    price = json['price'] != null ? new Price.fromJson(json['price']) : null;
    jumpUrl = json['jump_url'];
    bottom = json['bottom'];
    desc = json['desc'];
    type = json['type'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['title'] = this.title;
    data['subtitle'] = this.subtitle;
    data['thumbnail'] = this.thumbnail;
    if (this.badge != null) {
      data['badge'] = this.badge.toJson();
    }
    if (this.price != null) {
      data['price'] = this.price.toJson();
    }
    data['jump_url'] = this.jumpUrl;
    data['bottom'] = this.bottom;
    data['desc'] = this.desc;
    data['type'] = this.type;

    return data;
  }
}


class Price {
  int number;
  String type;
  String suffix;

  Price({this.number, this.type, this.suffix});

  Price.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    type = json['type'];
    suffix = json['suffix'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['number'] = this.number;
    data['type'] = this.type;
    data['suffix'] = this.suffix;
    return data;
  }
}

class Features {
  String text;
  String textColor;
  String bgStartColor;
  String bgEndColor;
  String borderColor;
  String backgroundColor;

  Features({this.text, this.textColor, this.bgStartColor, this.bgEndColor, this.borderColor, this.backgroundColor});

  Features.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    textColor = json['text_color'];
    bgStartColor = json['bg_start_color'];
    bgEndColor = json['bg_end_color'];
    borderColor = json['border_color'];
    backgroundColor = json['background_color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['text_color'] = this.textColor;
    data['bg_start_color'] = this.bgStartColor;
    data['bg_end_color'] = this.bgEndColor;
    data['border_color'] = this.borderColor;
    data['background_color'] = this.backgroundColor;
    return data;
  }
}
