class HomeMainIconModel {
  int rc;
  String rm;
  Data data;

  HomeMainIconModel({this.rc, this.rm, this.data});

  HomeMainIconModel.fromJson(Map<String, dynamic> json) {
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
  MainIcons mainIcons;

  Data({this.mainIcons});

  Data.fromJson(Map<String, dynamic> json) {
    mainIcons = json['main_icons'] != null
        ? new MainIcons.fromJson(json['main_icons'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.mainIcons != null) {
      data['main_icons'] = this.mainIcons.toJson();
    }
    return data;
  }
}

class MainIcons {
  List<ListWithColor> listWithColor;

  MainIcons({this.listWithColor});

  MainIcons.fromJson(Map<String, dynamic> json) {
    if (json['list_with_color'] != null) {
      listWithColor = new List<ListWithColor>();
      json['list_with_color'].forEach((v) {
        listWithColor.add(new ListWithColor.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.listWithColor != null) {
      data['list_with_color'] =
          this.listWithColor.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ListWithColor {
  String icon;
  String title;
  String titleColor;
  BusinessItem businessItem;

  ListWithColor({this.icon, this.title, this.titleColor, this.businessItem});

  ListWithColor.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    title = json['title'];
    titleColor = json['title_color'];
    businessItem = json['business_item'] != null
        ? new BusinessItem.fromJson(json['business_item'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['title'] = this.title;
    data['title_color'] = this.titleColor;
    if (this.businessItem != null) {
      data['business_item'] = this.businessItem.toJson();
    }
    return data;
  }
}

class BusinessItem {
  String itemId;
  String itemType;
  String itemName;
  String itemInfo;

  BusinessItem({this.itemId, this.itemType, this.itemName, this.itemInfo});

  BusinessItem.fromJson(Map<String, dynamic> json) {
    itemId = json['item_id'];
    itemType = json['item_type'];
    itemName = json['item_name'];
    itemInfo = json['item_info'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['item_id'] = this.itemId;
    data['item_type'] = this.itemType;
    data['item_name'] = this.itemName;
    data['item_info'] = this.itemInfo;
    return data;
  }
}
