class TravelListModel {

  String rm;
  Data data;

  TravelListModel({ this.rm, this.data});

  TravelListModel.fromJson(Map<String, dynamic> json) {

    rm = json['rm'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['rm'] = this.rm;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class Data {
  List<DataList> dataList;
  Ex ex;

  Data({this.dataList, this.ex});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['list'] != null) {
      dataList = new List<DataList>();
      json['list'].forEach((v) {
        var model = new DataList.fromJson(v);


        dataList.add(model);
      });
    }

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.dataList != null) {
      data['list'] = this.dataList.map((v) => v.toJson()).toList();
    }
    if (this.ex != null) {
      data['ex'] = this.ex.toJson();
    }
    return data;
  }
}

class DataList {
  String style;
  StyleData styleData;
  FeedData feedData;
  AlbumData albumData;
  ArticleData articleData;
  ProductData productData;

  DataList({this.style, this.styleData, this.feedData, this.albumData, this.articleData, this.productData});

  DataList.fromJson(Map<String, dynamic> json) {
    style = json['style'];
    styleData = json['data'] != null ? new StyleData.fromJson(json['data']) : null;
    feedData = json['data'] != null ? new FeedData.fromJson(json['data']) : null;
    albumData = json['data'] != null ? new AlbumData.fromJson(json['data']) : null;
    articleData = json['data'] != null ? new ArticleData.fromJson(json['data']) : null;
    productData = json['data'] != null ? new ProductData.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['style'] = this.style;
    if (this.styleData != null) {
      data['data'] = this.styleData.toJson();
    }
    if (this.feedData != null) {
      data['data'] = this.feedData.toJson();
    }
    if (this.albumData != null) {
      data['data'] = this.albumData.toJson();
    }
    if (this.articleData != null) {
      data['data'] = this.articleData.toJson();
    }
    if (this.productData != null) {
      data['data'] = this.productData.toJson();
    }
    return data;
  }
}

class StyleData {
  List<MddList> mddList;

  StyleData({this.mddList});

  StyleData.fromJson(Map<String, dynamic> json) {
    if (json['list'] != null) {
      mddList = new List<MddList>();
      json['list'].forEach((v) { mddList.add(new MddList.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.mddList != null) {
      data['list'] = this.mddList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class MddList {
  String url;
  String imgUrl;
  String title;
  int isHighlight;
  String subTitle;

  MddList({this.url, this.imgUrl, this.title, this.isHighlight, this.subTitle});

  MddList.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    imgUrl = json['img_url'];
    title = json['title'];
    isHighlight = json['is_highlight'];
    subTitle = json['sub_title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['img_url'] = this.imgUrl;
    data['title'] = this.title;
    data['is_highlight'] = this.isHighlight;
    data['sub_title'] = this.subTitle;
    return data;
  }
}

class FeedData {
  List<TabList> tabList;
  String tabId;
  String defaultTabId;

  FeedData({this.tabList, this.tabId, this.defaultTabId});

  FeedData.fromJson(Map<String, dynamic> json) {
    if (json['tab_list'] != null) {
      tabList = new List<TabList>();
      json['tab_list'].forEach((v) {
        var model = new TabList.fromJson(v);

        tabList.add(model);
      });
    }
    tabId = json['tab_id'];
    defaultTabId = json['default_tab_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.tabList != null) {
      data['tab_list'] = this.tabList.map((v) => v.toJson()).toList();
    }
    data['tab_id'] = this.tabId;
    data['default_tab_id'] = this.defaultTabId;
    return data;
  }
}

class TabList {
  String tId;
  String name;

  TabList({this.tId, this.name});

  TabList.fromJson(Map<String, dynamic> json) {
    tId = json['t_id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['t_id'] = this.tId;
    data['name'] = this.name;
    return data;
  }
}

class AlbumData {
  String title;

  String subTitle;
  String url;
  String imgUrl;
  String theme;

  AlbumData({this.title, this.subTitle, this.url, this.imgUrl, this.theme});

  AlbumData.fromJson(Map<String, dynamic> json) {
    title = json['title'];

    subTitle = json['sub_title'];
    url = json['url'];
    imgUrl = json['img_url'];
    theme = json['theme'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;

    data['sub_title'] = this.subTitle;
    data['url'] = this.url;
    data['img_url'] = this.imgUrl;
    data['theme'] = this.theme;
    return data;
  }
}

class ArticleData {
  String imgUrl;
  String url;
  String theme;
  String title;
  Object businessId;
  Object collectionNum;
  User user;

  ArticleData({this.imgUrl, this.url, this.theme, this.title, this.businessId, this.collectionNum, this.user});

  ArticleData.fromJson(Map<String, dynamic> json) {
    imgUrl = json['img_url'];
    url = json['url'];
    theme = json['theme'];
    title = json['title'];
    businessId = json['business_id'];
    collectionNum = json['collection_num'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['img_url'] = this.imgUrl;
    data['url'] = this.url;
    data['theme'] = this.theme;
    data['title'] = this.title;
    data['business_id'] = this.businessId;
    data['collection_num'] = this.collectionNum;
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    return data;
  }
}

class User {
  Object id;
  String name;
  String logo;

  User({this.id, this.name, this.logo});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    logo = json['logo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['logo'] = this.logo;
    return data;
  }
}

class ProductData {
  Object businessId;
  String theme;
  String imgUrl;
  String title;
  List<TagList> tagList;
  String price;
  String priceSuffix;
  String soldPrefix;
  String salesNum;
  String url;

  ProductData({this.businessId, this.theme, this.imgUrl, this.title, this.tagList, this.price, this.priceSuffix, this.soldPrefix, this.salesNum, this.url});

  ProductData.fromJson(Map<String, dynamic> json) {
    businessId = json['business_id'];
    theme = json['theme'];
    imgUrl = json['img_url'];
    title = json['title'];
    if (json['tag_list'] != null) {
      tagList = new List<TagList>();
      json['tag_list'].forEach((v) { tagList.add(new TagList.fromJson(v)); });
    }
    price = json['price'];
    priceSuffix = json['price_suffix'];
    soldPrefix = json['sold_prefix'];
    salesNum = json['sales_num'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['business_id'] = this.businessId;
    data['theme'] = this.theme;
    data['img_url'] = this.imgUrl;
    data['title'] = this.title;
    if (this.tagList != null) {
      data['tag_list'] = this.tagList.map((v) => v.toJson()).toList();
    }
    data['price'] = this.price;
    data['price_suffix'] = this.priceSuffix;
    data['sold_prefix'] = this.soldPrefix;
    data['sales_num'] = this.salesNum;
    data['url'] = this.url;
    return data;
  }
}

class TagList {
  String title;
  String titleColor;
  Object isBold;
  String borderColor;
  String icon;
  Gradient gradient;
  String type;

  TagList({this.title, this.titleColor, this.isBold, this.borderColor, this.icon, this.gradient, this.type});

  TagList.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    titleColor = json['title_color'];
    isBold = json['is_bold'];
    borderColor = json['border_color'];
    icon = json['icon'];
    gradient = json['gradient'] != null ? new Gradient.fromJson(json['gradient']) : null;
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['title_color'] = this.titleColor;
    data['is_bold'] = this.isBold;
    data['border_color'] = this.borderColor;
    data['icon'] = this.icon;
    if (this.gradient != null) {
      data['gradient'] = this.gradient.toJson();
    }
    data['type'] = this.type;
    return data;
  }
}

class Gradient {
  String startColor;
  String endColor;

  Gradient({this.startColor, this.endColor});

  Gradient.fromJson(Map<String, dynamic> json) {
    startColor = json['start_color'];
    endColor = json['end_color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['start_color'] = this.startColor;
    data['end_color'] = this.endColor;
    return data;
  }
}

class Ex {


Map<String, dynamic> toJson() {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  return data;
}
}
