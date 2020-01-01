class TravelDetailModel{

  WengModel weng;

  RelateStyleItems relateItems;



  TravelDetailModel({this.weng});
  TravelDetailModel.fromJson(Map<String, dynamic> json) {


    weng = json['weng'] != null ? WengModel.fromJson(json["weng"]) : null;



  }

}

//replies
class RepliesItemModel{

  String content;

  OwnerModel owner;

  int  num_like;
  
  RepliesItemModel.fromJson(Map<String, dynamic> json) {

    content = json["content"];
    num_like = json["num_like"];
    owner = json["owner"]  !=null ? OwnerModel.fromJson(json["owner"]) : null;

  }

}

class FavouriteItem{
  String logo;

  FavouriteItem(this.logo);
  FavouriteItem.fromJson(Map<String, dynamic> json){
    logo = json["logo"];
  }
}

//related_style_items
class RelateStyleItems{

  String type;
  String type_tag_background_color;
  String name;


}

class MediaModel{

   int width;
   int height;
   String bimg;
   MediaModel({this.width,this.height,this.bimg});

  MediaModel.fromJson(Map<String, dynamic> json){
   width = json["width"];
   height = json["height"];
   bimg = json["bimg"];

  }

}

class WengModel{
    String content_edit;
    String content;
    String title_edit;
    int  num_like;
    int num_reply;

    List<RepliesItemModel> replies;

    OwnerModel owner;
    List<MediaModel> media;
    List<FavouriteItem>  favUsers;

    WengModel({

      this.content_edit,
      this.content,

      this.owner,
      this.media,
      this.title_edit
    });

    WengModel.fromJson(Map<String, dynamic> json) {
      content_edit = json['content_edit'];
      content = json['content_edit'];
      title_edit = json['title_edit'];
      num_like = json['num_like'];
      num_reply = json['num_reply'];

      owner = json['owner'] != null ? OwnerModel.fromJson(json['owner']) : null;

      if(json['media'] != null){
        media = List<MediaModel>();

        json["media"].forEach((v){


          media.add(MediaModel.fromJson(v["data"]));
        });
      }

      if(json["replies"] != null){
        replies = List<RepliesItemModel>();
        json["replies"].forEach((v){
          replies.add(RepliesItemModel.fromJson(v));

        });
      }

      if(json["fav_users"] != null){

        favUsers = List<FavouriteItem>();

        json["fav_users"].forEach((v){
          favUsers.add(FavouriteItem.fromJson(v));

        });
      }
    }

}

class OwnerModel{
  String name;
  String logo;
  String jump_url;


  FootprintAssetTag footprint_asset_tag;

  OwnerModel({this.name,this.logo,this.jump_url,this.footprint_asset_tag});


  OwnerModel.fromJson(Map<String, dynamic> json){
    name = json["name"];
    logo = json["logo"];
    jump_url = json['jump_url'];

    footprint_asset_tag = json['footprint_asset_tag'] != null ?  FootprintAssetTag.fromJson(json["footprint_asset_tag"]) : null;
  }

}

class FootprintAssetTag{
  String icon;
  String text;
  String jump_url;


  FootprintAssetTag({this.icon,this.text,this.jump_url});

  FootprintAssetTag.fromJson(Map<String, dynamic> json){
  icon = json["icon"];
  text = json["text"];
  jump_url = json["jump_url"];
  }
}