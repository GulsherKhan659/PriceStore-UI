class UserBeanClass {
  Favorites? favorites;
  String? phone;
  MyAds? myAds;
  String? name;
  bool? isAdmin;
  String? email;

  UserBeanClass(
      {this.favorites,
      required this.phone,
      this.myAds,
      required this.name,
      required this.email,
      this.isAdmin = false});

  UserBeanClass.fromJson(Map<String, dynamic> json) {
    favorites = json['favorites'] != null
        ? new Favorites.fromJson(json['favorites'])
        : null;
    phone = json['phone'];
    myAds =
        json[' my_ads'] != null ? new MyAds.fromJson(json[' my_ads']) : null;
    name = json['name'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.favorites != null) {
      data['favorites'] = this.favorites!.toJson();
    }
    data['phone'] = this.phone;
    if (this.myAds != null) {
      data[' my_ads'] = this.myAds!.toJson();
    }
    data['name'] = this.name;
    data['email'] = this.email;
    data['isActive'] = this.isAdmin;
    return data;
  }
}

class Favorites {
  List<String>? favPostIds;

  Favorites({this.favPostIds});

  Favorites.fromJson(Map<String, dynamic> json) {
    favPostIds = json['fav_post_ids'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fav_post_ids'] = this.favPostIds;
    return data;
  }
}

class MyAds {
  List<String>? myAdIds;

  MyAds({this.myAdIds});

  MyAds.fromJson(Map<String, dynamic> json) {
    myAdIds = json['my_ad_ids'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['my_ad_ids'] = this.myAdIds;
    return data;
  }
}
