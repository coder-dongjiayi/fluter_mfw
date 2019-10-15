class TabarListModel {
  List<TabItemModel> tabList;

  TabarListModel({this.tabList});

  TabarListModel.fromJson(Map<String, dynamic> json) {
    if (json['tab_list'] != null) {
      tabList = new List<TabItemModel>();
      json['tab_list'].forEach((v) {
        tabList.add(new TabItemModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.tabList != null) {
      data['tab_list'] = this.tabList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TabItemModel {
  String id;
  String name;

  TabItemModel({this.id, this.name});

  TabItemModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}
