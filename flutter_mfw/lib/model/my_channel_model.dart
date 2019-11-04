class MyChannelModel {
	int rc;
	MyChannelModelData data;
	String rm;

	MyChannelModel({this.rc, this.data, this.rm});

	MyChannelModel.fromJson(Map<String, dynamic> json) {
		rc = json['rc'];
		data = json['data'] != null ? new MyChannelModelData.fromJson(json['data']) : null;
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

class MyChannelModelData {
	List<MyChannelModelDataNormalChannel> normalChannels;
	List<MyChannelModelDataRecommandChannels> recommendChannels;

	MyChannelModelData({this.normalChannels, this.recommendChannels});

	MyChannelModelData.fromJson(Map<String, dynamic> json) {
		if (json['normal_channels'] != null) {
			normalChannels = new List<MyChannelModelDataNormalChannel>();(json['normal_channels'] as List).forEach((v) { normalChannels.add(new MyChannelModelDataNormalChannel.fromJson(v)); });
		}
		if (json['recommend_channels'] != null) {
			recommendChannels = new List<MyChannelModelDataRecommandChannels>();(json['recommend_channels'] as List).forEach((v) { recommendChannels.add(new MyChannelModelDataRecommandChannels.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.normalChannels != null) {
      data['normal_channels'] =  this.normalChannels.map((v) => v.toJson()).toList();
    }
		if (this.recommendChannels != null) {
      data['recommend_channels'] =  this.recommendChannels.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class MyChannelModelDataNormalChannel {
	String jumpUrl;
	String icon;
	int isNeedLogin;
	MyChannelModelDataNormalChannelsTip tip;
	String id;
	String title;
	int isTipDisappear;

	MyChannelModelDataNormalChannel({this.jumpUrl, this.icon, this.isNeedLogin, this.tip, this.id, this.title, this.isTipDisappear});

	MyChannelModelDataNormalChannel.fromJson(Map<String, dynamic> json) {
		jumpUrl = json['jump_url'];
		icon = json['icon'];
		isNeedLogin = json['is_need_login'];
		tip = json['tip'] != null ? new MyChannelModelDataNormalChannelsTip.fromJson(json['tip']) : null;
		id = json['id'];
		title = json['title'];
		isTipDisappear = json['is_tip_disappear'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['jump_url'] = this.jumpUrl;
		data['icon'] = this.icon;
		data['is_need_login'] = this.isNeedLogin;
		if (this.tip != null) {
      data['tip'] = this.tip.toJson();
    }
		data['id'] = this.id;
		data['title'] = this.title;
		data['is_tip_disappear'] = this.isTipDisappear;
		return data;
	}
}

class MyChannelModelDataNormalChannelsTip {




	MyChannelModelDataNormalChannelsTip.fromJson(Map<String, dynamic> json) {
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		return data;
	}
}

class MyChannelModelDataRecommandChannels {
	String jumpUrl;
	String icon;
	int isNeedLogin;
	MyChannelModelDataRecommendChannelsTip tip;
	String id;
	String title;
	int isTipDisappear;

	MyChannelModelDataRecommandChannels({this.jumpUrl, this.icon, this.isNeedLogin, this.tip, this.id, this.title, this.isTipDisappear});

	MyChannelModelDataRecommandChannels.fromJson(Map<String, dynamic> json) {
		jumpUrl = json['jump_url'];
		icon = json['icon'];
		isNeedLogin = json['is_need_login'];
		tip = json['tip'] != null ? new MyChannelModelDataRecommendChannelsTip.fromJson(json['tip']) : null;
		id = json['id'];
		title = json['title'];
		isTipDisappear = json['is_tip_disappear'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['jump_url'] = this.jumpUrl;
		data['icon'] = this.icon;
		data['is_need_login'] = this.isNeedLogin;
		if (this.tip != null) {
      data['tip'] = this.tip.toJson();
    }
		data['id'] = this.id;
		data['title'] = this.title;
		data['is_tip_disappear'] = this.isTipDisappear;
		return data;
	}
}

class MyChannelModelDataRecommendChannelsTip {




	MyChannelModelDataRecommendChannelsTip.fromJson(Map<String, dynamic> json) {
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		return data;
	}
}
