class LocationTababrModel {
	int rc;
	LocationTababrModelData data;
	String rm;

	LocationTababrModel({this.rc, this.data, this.rm});

	LocationTababrModel.fromJson(Map<String, dynamic> json) {
		rc = json['rc'];
		data = json['data'] != null ? new LocationTababrModelData.fromJson(json['data']) : null;
		rm = json['rm'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['rc'] = this.rc;
		if (this.data != null) {
      data['data'] = this.data.toJson();
    }
		data['rm'] = this.rm;
		return data;
	}
}

class LocationTababrModelData {
	LocationTababrModelDataCommonTitle commonTitle;
	List<LocationTababrModelDataTabList> tabList;
	List<LocationTababrModelDataTagList> tagList;
	List<LocationTababrModelDataDatalist> dataList;

	LocationTababrModelData({this.commonTitle, this.tabList, this.tagList, this.dataList});

	LocationTababrModelData.fromJson(Map<String, dynamic> json) {
		commonTitle = json['common_title'] != null ? new LocationTababrModelDataCommonTitle.fromJson(json['common_title']) : null;
		if (json['tab_list'] != null) {
			tabList = new List<LocationTababrModelDataTabList>();(json['tab_list'] as List).forEach((v) { tabList.add(new LocationTababrModelDataTabList.fromJson(v)); });
		}
		if (json['tag_list'] != null) {
			tagList = new List<LocationTababrModelDataTagList>();(json['tag_list'] as List).forEach((v) { tagList.add(new LocationTababrModelDataTagList.fromJson(v)); });
		}
		if (json['list'] != null) {
			dataList = new List<LocationTababrModelDataDatalist>();(json['list'] as List).forEach((v) { dataList.add(new LocationTababrModelDataDatalist.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.commonTitle != null) {
      data['common_title'] = this.commonTitle.toJson();
    }
		if (this.tabList != null) {
      data['tab_list'] =  this.tabList.map((v) => v.toJson()).toList();
    }
		if (this.tagList != null) {
      data['tag_list'] =  this.tagList.map((v) => v.toJson()).toList();
    }
		if (this.dataList != null) {
      data['list'] =  this.dataList.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class LocationTababrModelDataCommonTitle {
	LocationTababrModelDataCommonTitleTitleTag titleTag;
	LocationTababrModelDataCommonTitleDetail detail;
	String title;

	LocationTababrModelDataCommonTitle({this.titleTag, this.detail, this.title});

	LocationTababrModelDataCommonTitle.fromJson(Map<String, dynamic> json) {
		titleTag = json['title_tag'] != null ? new LocationTababrModelDataCommonTitleTitleTag.fromJson(json['title_tag']) : null;
		detail = json['detail'] != null ? new LocationTababrModelDataCommonTitleDetail.fromJson(json['detail']) : null;
		title = json['title'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.titleTag != null) {
      data['title_tag'] = this.titleTag.toJson();
    }
		if (this.detail != null) {
      data['detail'] = this.detail.toJson();
    }
		data['title'] = this.title;
		return data;
	}
}

class LocationTababrModelDataCommonTitleTitleTag {

	LocationTababrModelDataCommonTitleTitleTag.fromJson(Map<String, dynamic> json) {
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		return data;
	}
}

class LocationTababrModelDataCommonTitleDetail {



	LocationTababrModelDataCommonTitleDetail.fromJson(Map<String, dynamic> json) {
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		return data;
	}
}

class LocationTababrModelDataTabList {
	LocationTababrModelDataTabListBadge badge;
	String tabId;
	String guideTitle;
	String channelIndex;
	int isSelected;
	String tabName;
	LocationTababrModelDataTabListBusinessItem businessItem;

	LocationTababrModelDataTabList({this.badge, this.tabId, this.guideTitle, this.channelIndex, this.isSelected, this.tabName, this.businessItem});

	LocationTababrModelDataTabList.fromJson(Map<String, dynamic> json) {
		badge = json['badge'] != null ? new LocationTababrModelDataTabListBadge.fromJson(json['badge']) : null;
		tabId = json['tab_id'];
		guideTitle = json['guide_title'];
		channelIndex = json['channel_index'];
		isSelected = json['is_selected'];
		tabName = json['tab_name'];
		businessItem = json['business_item'] != null ? new LocationTababrModelDataTabListBusinessItem.fromJson(json['business_item']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.badge != null) {
      data['badge'] = this.badge.toJson();
    }
		data['tab_id'] = this.tabId;
		data['guide_title'] = this.guideTitle;
		data['channel_index'] = this.channelIndex;
		data['is_selected'] = this.isSelected;
		data['tab_name'] = this.tabName;
		if (this.businessItem != null) {
      data['business_item'] = this.businessItem.toJson();
    }
		return data;
	}
}

class LocationTababrModelDataTabListBadge {
	String bgStartColor;
	String text;
	String bgEndColor;

	LocationTababrModelDataTabListBadge({this.bgStartColor, this.text, this.bgEndColor});

	LocationTababrModelDataTabListBadge.fromJson(Map<String, dynamic> json) {
		bgStartColor = json['bg_start_color'];
		text = json['text'];
		bgEndColor = json['bg_end_color'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['bg_start_color'] = this.bgStartColor;
		data['text'] = this.text;
		data['bg_end_color'] = this.bgEndColor;
		return data;
	}
}

class LocationTababrModelDataTabListBusinessItem {
	String moduleId;
	String itemUri;
	String itemId;
	String itemType;
	String prmId;
	List<Null> adExposeRequestUrls;
	String itemName;
	String moduleName;

	LocationTababrModelDataTabListBusinessItem({this.moduleId, this.itemUri, this.itemId, this.itemType, this.prmId, this.adExposeRequestUrls, this.itemName, this.moduleName});

	LocationTababrModelDataTabListBusinessItem.fromJson(Map<String, dynamic> json) {
		moduleId = json['module_id'];
		itemUri = json['item_uri'];
		itemId = json['item_id'];
		itemType = json['item_type'];
		prmId = json['prm_id'];
		if (json['ad_expose_request_urls'] != null) {
			adExposeRequestUrls = new List<Null>();
		}
		itemName = json['item_name'];
		moduleName = json['module_name'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['module_id'] = this.moduleId;
		data['item_uri'] = this.itemUri;
		data['item_id'] = this.itemId;
		data['item_type'] = this.itemType;
		data['prm_id'] = this.prmId;
		if (this.adExposeRequestUrls != null) {
      data['ad_expose_request_urls'] =  [];
    }
		data['item_name'] = this.itemName;
		data['module_name'] = this.moduleName;
		return data;
	}
}

class LocationTababrModelDataTagList {
	String tagName;
	int isSelected;
	String tagId;
	LocationTababrModelDataTagListBusinessItem businessItem;

	LocationTababrModelDataTagList({this.tagName, this.isSelected, this.tagId, this.businessItem});

	LocationTababrModelDataTagList.fromJson(Map<String, dynamic> json) {
		tagName = json['tag_name'];
		isSelected = json['is_selected'];
		tagId = json['tag_id'];
		businessItem = json['business_item'] != null ? new LocationTababrModelDataTagListBusinessItem.fromJson(json['business_item']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['tag_name'] = this.tagName;
		data['is_selected'] = this.isSelected;
		data['tag_id'] = this.tagId;
		if (this.businessItem != null) {
      data['business_item'] = this.businessItem.toJson();
    }
		return data;
	}
}

class LocationTababrModelDataTagListBusinessItem {
	String moduleId;
	String itemId;
	String itemType;
	String itemName;
	String moduleName;

	LocationTababrModelDataTagListBusinessItem({this.moduleId, this.itemId, this.itemType, this.itemName, this.moduleName});

	LocationTababrModelDataTagListBusinessItem.fromJson(Map<String, dynamic> json) {
		moduleId = json['module_id'];
		itemId = json['item_id'];
		itemType = json['item_type'];
		itemName = json['item_name'];
		moduleName = json['module_name'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['module_id'] = this.moduleId;
		data['item_id'] = this.itemId;
		data['item_type'] = this.itemType;
		data['item_name'] = this.itemName;
		data['module_name'] = this.moduleName;
		return data;
	}
}

class LocationTababrModelDataDatalist {
	LocationTababrModelDataDatalistData data;
	String style;

	LocationTababrModelDataDatalist({this.data, this.style});

	LocationTababrModelDataDatalist.fromJson(Map<String, dynamic> json) {
		data = json['data'] != null ? new LocationTababrModelDataDatalistData.fromJson(json['data']) : null;
		style = json['style'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.data != null) {
      data['data'] = this.data.toJson();
    }
		data['style'] = this.style;
		return data;
	}
}

class LocationTababrModelDataDatalistData {
	LocationTababrModelDataDatalistDataBusinessItem businessItem;
	List<LocationTababrModelDataDatalistDataBusinesslist> businessList;

	LocationTababrModelDataDatalistData({this.businessItem, this.businessList});

	LocationTababrModelDataDatalistData.fromJson(Map<String, dynamic> json) {
		businessItem = json['business_item'] != null ? new LocationTababrModelDataDatalistDataBusinessItem.fromJson(json['business_item']) : null;
		if (json['list'] != null) {
			businessList = new List<LocationTababrModelDataDatalistDataBusinesslist>();(json['list'] as List).forEach((v) { businessList.add(new LocationTababrModelDataDatalistDataBusinesslist.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.businessItem != null) {
      data['business_item'] = this.businessItem.toJson();
    }
		if (this.businessList != null) {
      data['list'] =  this.businessList.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class LocationTababrModelDataDatalistDataBusinessItem {
	String moduleId;
	String itemUri;
	String itemId;
	String itemType;
	String prmId;
	List<Null> adExposeRequestUrls;
	String itemName;
	String moduleName;

	LocationTababrModelDataDatalistDataBusinessItem({this.moduleId, this.itemUri, this.itemId, this.itemType, this.prmId, this.adExposeRequestUrls, this.itemName, this.moduleName});

	LocationTababrModelDataDatalistDataBusinessItem.fromJson(Map<String, dynamic> json) {
		moduleId = json['module_id'];
		itemUri = json['item_uri'];
		itemId = json['item_id'];
		itemType = json['item_type'];
		prmId = json['prm_id'];
		if (json['ad_expose_request_urls'] != null) {
			adExposeRequestUrls = new List<Null>();
		}
		itemName = json['item_name'];
		moduleName = json['module_name'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['module_id'] = this.moduleId;
		data['item_uri'] = this.itemUri;
		data['item_id'] = this.itemId;
		data['item_type'] = this.itemType;
		data['prm_id'] = this.prmId;
		if (this.adExposeRequestUrls != null) {
      data['ad_expose_request_urls'] =  [];
    }
		data['item_name'] = this.itemName;
		data['module_name'] = this.moduleName;
		return data;
	}
}

class LocationTababrModelDataDatalistDataBusinesslist {
	String jumpUrl;
	List<Null> price;
	String subtitle;
	List<String> thumbList;
	LocationTababrModelDataDatalistDataBusinesslistBusinessItem businessItem;
	String id;
	String title;

	LocationTababrModelDataDatalistDataBusinesslist({this.jumpUrl, this.price, this.subtitle, this.thumbList, this.businessItem, this.id, this.title});

	LocationTababrModelDataDatalistDataBusinesslist.fromJson(Map<String, dynamic> json) {
		jumpUrl = json['jump_url'];
		if (json['price'] != null) {
			price = new List<Null>();
		}
		subtitle = json['subtitle'];
		thumbList = json['thumb_list']?.cast<String>();
		businessItem = json['business_item'] != null ? new LocationTababrModelDataDatalistDataBusinesslistBusinessItem.fromJson(json['business_item']) : null;
		id = json['id'];
		title = json['title'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['jump_url'] = this.jumpUrl;
		if (this.price != null) {
      data['price'] =  [];
    }
		data['subtitle'] = this.subtitle;
		data['thumb_list'] = this.thumbList;
		if (this.businessItem != null) {
      data['business_item'] = this.businessItem.toJson();
    }
		data['id'] = this.id;
		data['title'] = this.title;
		return data;
	}
}

class LocationTababrModelDataDatalistDataBusinesslistBusinessItem {
	String moduleId;
	String itemUri;
	int itemId;
	String itemType;
	String prmId;
	List<Null> adExposeRequestUrls;
	String itemName;
	String moduleName;

	LocationTababrModelDataDatalistDataBusinesslistBusinessItem({this.moduleId, this.itemUri, this.itemId, this.itemType, this.prmId, this.adExposeRequestUrls, this.itemName, this.moduleName});

	LocationTababrModelDataDatalistDataBusinesslistBusinessItem.fromJson(Map<String, dynamic> json) {
		moduleId = json['module_id'];
		itemUri = json['item_uri'];
		itemId = json['item_id'];
		itemType = json['item_type'];
		prmId = json['prm_id'];
		if (json['ad_expose_request_urls'] != null) {
			adExposeRequestUrls = new List<Null>();
		}
		itemName = json['item_name'];
		moduleName = json['module_name'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['module_id'] = this.moduleId;
		data['item_uri'] = this.itemUri;
		data['item_id'] = this.itemId;
		data['item_type'] = this.itemType;
		data['prm_id'] = this.prmId;
		if (this.adExposeRequestUrls != null) {
      data['ad_expose_request_urls'] =  [];
    }
		data['item_name'] = this.itemName;
		data['module_name'] = this.moduleName;
		return data;
	}
}
