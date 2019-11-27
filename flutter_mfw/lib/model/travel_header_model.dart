class TravelHeaderModel {
  int rc;
  String rm;
  Data data;

  TravelHeaderModel({this.rc, this.rm, this.data});

  TravelHeaderModel.fromJson(Map<String, dynamic> json) {
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
  Ex ex;
  String scenario;
  List<BannerList> bannerList;

  Data({this.ex, this.scenario, this.bannerList});

  Data.fromJson(Map<String, dynamic> json) {
    ex = json['ex'] != null ? new Ex.fromJson(json['ex']) : null;
    scenario = json['scenario'];
    if (json['list'] != null) {
      bannerList = new List<BannerList>();
      json['list'].forEach((v) {
        var model =  new BannerList.fromJson(v);

        bannerList.add(model);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.ex != null) {
      data['ex'] = this.ex.toJson();
    }
    data['scenario'] = this.scenario;
    if (this.bannerList != null) {
      data['list'] = this.bannerList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Ex {
  int showBuoy;
  Search search;
  AbTest abTest;

  Ex({this.showBuoy, this.search, this.abTest});

  Ex.fromJson(Map<String, dynamic> json) {
    showBuoy = json['show_buoy'];
    search =
    json['search'] != null ? new Search.fromJson(json['search']) : null;
    abTest =
    json['ab_test'] != null ? new AbTest.fromJson(json['ab_test']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['show_buoy'] = this.showBuoy;
    if (this.search != null) {
      data['search'] = this.search.toJson();
    }
    if (this.abTest != null) {
      data['ab_test'] = this.abTest.toJson();
    }
    return data;
  }
}

class Search {
  String placeholder;
  String jumpUrl;

  Search({this.placeholder, this.jumpUrl});

  Search.fromJson(Map<String, dynamic> json) {
    placeholder = json['placeholder'];
    jumpUrl = json['jump_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['placeholder'] = this.placeholder;
    data['jump_url'] = this.jumpUrl;
    return data;
  }
}

class AbTest {
  String key;
  String version;

  AbTest({this.key, this.version});

  AbTest.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    version = json['version'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['key'] = this.key;
    data['version'] = this.version;
    return data;
  }
}

class BannerList {
  String style;
  BannerData bannerData;
  DynamicData dynamicData;
  ChannelData channelData;
  HotData hotData;
  ColumnData columnData;

  BannerList(
      {this.style,
        this.bannerData,
        this.dynamicData,
        this.channelData,
        this.hotData,
        this.columnData});

  BannerList.fromJson(Map<String, dynamic> json) {
    style = json['style'];
    bannerData = json['data'] != null
        ? new BannerData.fromJson(json['data'])
        : null;
    dynamicData = json['data'] != null
        ? new DynamicData.fromJson(json['data'])
        : null;
    channelData = json['data'] != null
        ? new ChannelData.fromJson(json['data'])
        : null;
    if(style == "hot_sale"){
      hotData = json['data'] != null
          ? new HotData.fromJson(json['data'])
          : null;

    }


    columnData = json['data'] != null
        ? new ColumnData.fromJson(json['data'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['style'] = this.style;
    if (this.bannerData != null) {
      data['data'] = this.bannerData.toJson();
    }
    if (this.dynamicData != null) {
      data['data'] = this.dynamicData.toJson();
    }
    if (this.channelData != null) {
      data['data'] = this.channelData.toJson();
    }
    if (this.hotData != null) {
      data['data'] = this.hotData.toJson();
    }
    if (this.columnData != null) {
      data['data'] = this.columnData.toJson();
    }
    return data;
  }
}

class BannerData {
  List<ImageList> imageList;
  Config config;

  BannerData({this.imageList, this.config});

  BannerData.fromJson(Map<String, dynamic> json) {
    if (json['list'] != null) {
      imageList = new List<ImageList>();
      json['list'].forEach((v) {
        imageList.add(new ImageList.fromJson(v));
      });
    }
    config =
    json['config'] != null ? new Config.fromJson(json['config']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.imageList != null) {
      data['list'] = this.imageList.map((v) => v.toJson()).toList();
    }
    if (this.config != null) {
      data['config'] = this.config.toJson();
    }
    return data;
  }
}

class ImageList {
  String fullHref;
  String src;

  ImageList({this.fullHref, this.src});

  ImageList.fromJson(Map<String, dynamic> json) {
    fullHref = json['full_href'];
    src = json['src'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['full_href'] = this.fullHref;
    data['src'] = this.src;
    return data;
  }
}

class Config {
  int imgWidth;
  int imgHeight;
  int width;
  int height;

  Config({this.imgWidth, this.imgHeight, this.width, this.height});

  Config.fromJson(Map<String, dynamic> json) {
    imgWidth = json['img_width'];
    imgHeight = json['img_height'];
    width = json['width'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['img_width'] = this.imgWidth;
    data['img_height'] = this.imgHeight;
    data['width'] = this.width;
    data['height'] = this.height;
    return data;
  }
}

class DynamicData {
  BgImg bgImg;
  List<DynamicList> dynamicList;

  DynamicData({this.bgImg, this.dynamicList});

  DynamicData.fromJson(Map<String, dynamic> json) {
    bgImg = json['bg_img'] != null ? new BgImg.fromJson(json['bg_img']) : null;
    if (json['list'] != null) {
      dynamicList = new List<DynamicList>();
      json['list'].forEach((v) {
        dynamicList.add(new DynamicList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.bgImg != null) {
      data['bg_img'] = this.bgImg.toJson();
    }
    if (this.dynamicList != null) {
      data['list'] = this.dynamicList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class BgImg {
  int width;
  int height;
  String imgUrl;

  BgImg({this.width, this.height, this.imgUrl});

  BgImg.fromJson(Map<String, dynamic> json) {
    width = json['width'];
    height = json['height'];
    imgUrl = json['img_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['width'] = this.width;
    data['height'] = this.height;
    data['img_url'] = this.imgUrl;
    return data;
  }
}

class DynamicList {
  ItemConfig itemConfig;
  Margin margin;
  int spacing;
  List<SingleList> singleList;

  DynamicList({this.itemConfig, this.margin, this.spacing, this.singleList});

  DynamicList.fromJson(Map<String, dynamic> json) {
    itemConfig = json['item_config'] != null
        ? new ItemConfig.fromJson(json['item_config'])
        : null;
    margin =
    json['margin'] != null ? new Margin.fromJson(json['margin']) : null;
    spacing = json['spacing'];
    if (json['list'] != null) {
      singleList = new List<SingleList>();
      json['list'].forEach((v) {
        singleList.add(new SingleList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.itemConfig != null) {
      data['item_config'] = this.itemConfig.toJson();
    }
    if (this.margin != null) {
      data['margin'] = this.margin.toJson();
    }
    data['spacing'] = this.spacing;
    if (this.singleList != null) {
      data['list'] = this.singleList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ItemConfig {
  int height;
  int width;

  ItemConfig({this.height, this.width});

  ItemConfig.fromJson(Map<String, dynamic> json) {
    height = json['height'];
    width = json['width'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['height'] = this.height;
    data['width'] = this.width;
    return data;
  }
}

class Margin {
  int top;
  int horizontal;

  Margin({this.top, this.horizontal});

  Margin.fromJson(Map<String, dynamic> json) {
    top = json['top'];
    horizontal = json['horizontal'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['top'] = this.top;
    data['horizontal'] = this.horizontal;
    return data;
  }
}

class SingleList {
  String style;
  SingleData singleData;

  SingleList({this.style, this.singleData});

  SingleList.fromJson(Map<String, dynamic> json) {
    style = json['style'];
    singleData = json['data'] != null
        ? new SingleData.fromJson(json['data'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['style'] = this.style;
    if (this.singleData != null) {
      data['data'] = this.singleData.toJson();
    }
    return data;
  }
}

class SingleData {
  String itemType;
  String url;
  String imgUrl;

  SingleData({this.itemType, this.url, this.imgUrl});

  SingleData.fromJson(Map<String, dynamic> json) {
    itemType = json['item_type'];
    url = json['url'];
    imgUrl = json['img_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['item_type'] = this.itemType;
    data['url'] = this.url;
    data['img_url'] = this.imgUrl;
    return data;
  }
}

class ChannelData {
  List<Channels> channels;
  List<Columns> columns;

  ChannelData({this.channels, this.columns});

  ChannelData.fromJson(Map<String, dynamic> json) {
    if (json['channels'] != null) {
      channels = new List<Channels>();
      json['channels'].forEach((v) {
        channels.add(new Channels.fromJson(v));
      });
    }
    if (json['columns'] != null) {
      columns = new List<Columns>();
      json['columns'].forEach((v) {
        columns.add(new Columns.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.channels != null) {
      data['channels'] = this.channels.map((v) => v.toJson()).toList();
    }
    if (this.columns != null) {
      data['columns'] = this.columns.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Channels {
  String title;
  String titleColor;
  String url;
  String icon;
  Object tag;
  Gradient gradient;

  Channels(
      {this.title,
        this.titleColor,
        this.url,
        this.icon,
        this.tag,
        this.gradient});

  Channels.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    titleColor = json['title_color'];
    url = json['url'];
    icon = json['icon'];
    tag = json['tag'];
    gradient = json['gradient'] != null
        ? new Gradient.fromJson(json['gradient'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['title_color'] = this.titleColor;
    data['url'] = this.url;
    data['icon'] = this.icon;
    data['tag'] = this.tag;
    if (this.gradient != null) {
      data['gradient'] = this.gradient.toJson();
    }
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

class Columns {
  String title;
  String url;
  String imageUrl;
  String guideImageUrl;
  String icon;
  String bgColor;

  Columns(
      {this.title,
        this.url,
        this.imageUrl,
        this.guideImageUrl,
        this.icon,
        this.bgColor});

  Columns.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    url = json['url'];
    imageUrl = json['image_url'];
    guideImageUrl = json['guide_image_url'];
    icon = json['icon'];
    bgColor = json['bg_color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['url'] = this.url;
    data['image_url'] = this.imageUrl;
    data['guide_image_url'] = this.guideImageUrl;
    data['icon'] = this.icon;
    data['bg_color'] = this.bgColor;
    return data;
  }
}

class HotData {
  SpecialHotel specialHotel;
  Product product;
  List<CheapFlights> cheapFlights;
  Activity activity;

  HotData({this.specialHotel, this.product, this.cheapFlights, this.activity});

  HotData.fromJson(Map<String, dynamic> json) {
    specialHotel = json['special_hotel'] != null
        ? new SpecialHotel.fromJson(json['special_hotel'])
        : null;


    product =
    json['product'] != null ? new Product.fromJson(json['product']) : null;


    if (json['cheap_flights'] != null) {
      cheapFlights = new List<CheapFlights>();
      json['cheap_flights'].forEach((v) {
        cheapFlights.add(new CheapFlights.fromJson(v));
      });
    }
    activity = json['activity'] != null
        ? new Activity.fromJson(json['activity'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.specialHotel != null) {
      data['special_hotel'] = this.specialHotel.toJson();
    }
    if (this.product != null) {
      data['product'] = this.product.toJson();
    }
    if (this.cheapFlights != null) {
      data['cheap_flights'] = this.cheapFlights.map((v) => v.toJson()).toList();
    }
    if (this.activity != null) {
      data['activity'] = this.activity.toJson();
    }
    return data;
  }
}

class SpecialHotel {
  String title;
  Price price;
  String desc;
  String tag;
  String url;

  SpecialHotel({this.title, this.price, this.desc, this.tag, this.url});

  SpecialHotel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    price = json['price'] != null ? new Price.fromJson(json['price']) : null;
    desc = json['desc'];
    tag = json['tag'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    if (this.price != null) {
      data['price'] = this.price.toJson();
    }
    data['desc'] = this.desc;
    data['tag'] = this.tag;
    data['url'] = this.url;
    return data;
  }
}

class Price {
  int number;
  String suffix;

  Price({this.number, this.suffix});

  Price.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    suffix = json['suffix'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['number'] = this.number;
    data['suffix'] = this.suffix;
    return data;
  }
}

class Product {
  String title;
  String imgUrl;
  Object price;
  String priceSuffix;
  String url;
  String discount;
  List<TagList> tagList;
  int duration;
  String tag;

  Product(
      {this.title,
        this.imgUrl,
        this.price,
        this.priceSuffix,
        this.url,
        this.discount,
        this.tagList,
        this.duration,
        this.tag});

  Product.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    imgUrl = json['img_url'];
    price = json['price'];
    priceSuffix = json['price_suffix'];
    url = json['url'];
    discount = json['discount'];
    if (json['tag_list'] != null) {
      tagList = new List<TagList>();
      json['tag_list'].forEach((v) {
        tagList.add(new TagList.fromJson(v));
      });
    }
    duration = json['duration'];
    tag = json['tag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['img_url'] = this.imgUrl;
    data['price'] = this.price;
    data['price_suffix'] = this.priceSuffix;
    data['url'] = this.url;
    data['discount'] = this.discount;
    if (this.tagList != null) {
      data['tag_list'] = this.tagList.map((v) => v.toJson()).toList();
    }
    data['duration'] = this.duration;
    data['tag'] = this.tag;
    return data;
  }
}

class TagList {
  String type;
  String title;
  String titleColor;
  int isBold;
  String borderColor;
  String icon;
  Gradient gradient;

  TagList(
      {this.type,
        this.title,
        this.titleColor,
        this.isBold,
        this.borderColor,
        this.icon,
        this.gradient});

  TagList.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    title = json['title'];
    titleColor = json['title_color'];
    isBold = json['is_bold'];
    borderColor = json['border_color'];
    icon = json['icon'];
    gradient = json['gradient'] != null
        ? new Gradient.fromJson(json['gradient'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['title'] = this.title;
    data['title_color'] = this.titleColor;
    data['is_bold'] = this.isBold;
    data['border_color'] = this.borderColor;
    data['icon'] = this.icon;
    if (this.gradient != null) {
      data['gradient'] = this.gradient.toJson();
    }
    return data;
  }
}



class CheapFlights {
  String departCity;
  String tag;
  String url;
  String desc;

  CheapFlights({this.departCity, this.tag, this.url, this.desc});

  CheapFlights.fromJson(Map<String, dynamic> json) {
    departCity = json['depart_city'];
    tag = json['tag'];
    url = json['url'];
    desc = json['desc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['depart_city'] = this.departCity;
    data['tag'] = this.tag;
    data['url'] = this.url;
    data['desc'] = this.desc;
    return data;
  }
}

class Activity {
  List<ActivityList> activityList;
  Config config;

  Activity({this.activityList, this.config});

  Activity.fromJson(Map<String, dynamic> json) {
    if (json['list'] != null) {
      activityList = new List<ActivityList>();
      json['list'].forEach((v) {
        activityList.add(new ActivityList.fromJson(v));
      });
    }
    config =
    json['config'] != null ? new Config.fromJson(json['config']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.activityList != null) {
      data['list'] = this.activityList.map((v) => v.toJson()).toList();
    }
    if (this.config != null) {
      data['config'] = this.config.toJson();
    }
    return data;
  }
}

class ActivityList {
  String url;
  String imgUrl;

  ActivityList({this.url, this.imgUrl});

  ActivityList.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    imgUrl = json['img_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['img_url'] = this.imgUrl;
    return data;
  }
}


class ColumnData {
  String moduleName;
  List<ColumnList> columnList;

  ColumnData({this.moduleName, this.columnList});

  ColumnData.fromJson(Map<String, dynamic> json) {
    moduleName = json['module_name'];
    if (json['list'] != null) {
      columnList = new List<ColumnList>();
      json['list'].forEach((v) {
        columnList.add(new ColumnList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['module_name'] = this.moduleName;
    if (this.columnList != null) {
      data['list'] = this.columnList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ColumnList {
  String tabName;
  List<TabList> tabList;

  ColumnList({this.tabName, this.tabList});

  ColumnList.fromJson(Map<String, dynamic> json) {
    tabName = json['tab_name'];
    if (json['list'] != null) {
      tabList = new List<TabList>();
      json['list'].forEach((v) {
        tabList.add(new TabList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tab_name'] = this.tabName;
    if (this.tabList != null) {
      data['list'] = this.tabList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TabList {
  String title;
  String subTitle;
  String bgImg;
  String moreUrl;
  String bgColor;
  List<TabSubList> tabSubList;
  String suggest;
  List<String> schedule;

  TabList(
      {this.title,
        this.subTitle,
        this.bgImg,
        this.moreUrl,
        this.bgColor,
        this.tabSubList,
        this.suggest,
        this.schedule});

  TabList.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subTitle = json['sub_title'];
    bgImg = json['bg_img'];
    moreUrl = json['more_url'];
    bgColor = json['bg_color'];
    if (json['list'] != null) {
      tabSubList = new List<TabSubList>();
      json['list'].forEach((v) {
        tabSubList.add(new TabSubList.fromJson(v));
      });
    }
    suggest = json['suggest'];
    if(json['schedule'] != null){
      schedule = json['schedule'].cast<String>();
    }

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['sub_title'] = this.subTitle;
    data['bg_img'] = this.bgImg;
    data['more_url'] = this.moreUrl;
    data['bg_color'] = this.bgColor;
    if (this.tabSubList != null) {
      data['list'] = this.tabSubList.map((v) => v.toJson()).toList();
    }
    data['suggest'] = this.suggest;
    data['schedule'] = this.schedule;
    return data;
  }
}

class TabSubList {
  int id;
  String title;
  String subTitle;
  int price;
  String priceSuffix;
  String url;

  TabSubList(
      {this.id,
        this.title,
        this.subTitle,
        this.price,
        this.priceSuffix,
        this.url});

  TabSubList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    subTitle = json['sub_title'];
    price = json['price'];
    priceSuffix = json['price_suffix'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['sub_title'] = this.subTitle;
    data['price'] = this.price;
    data['price_suffix'] = this.priceSuffix;
    data['url'] = this.url;
    return data;
  }
}
