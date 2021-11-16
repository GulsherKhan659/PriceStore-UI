import 'package:cloud_firestore/cloud_firestore.dart';

class PropertyBeanClass {
  String? adPostDate;
  List<String>? ad_images;
  String? author_id;
  String? description;
  String? cover_img;
  String? title;
  String? city;
  String? location;
  String? property_br;
  bool? isAproved;
  int? price;
  String? property_type;
  List<String>? keyword;
  String? year;
  String? n_bathroom;
  String? n_bedroom;
  Timestamp? timestamp;

  PropertyBeanClass(
      {required this.city,
       required this.description,
       required this.cover_img,
       required this.title,
                this.adPostDate,
                this.ad_images,
       required this.price,
                this.isAproved =false,
       required this.property_br,
       required this.location,
                this.keyword,
       required this.author_id,
                this.property_type,
       required this.year,
       required this.n_bathroom,
       required this.n_bedroom,
        required this.timestamp,
      });

  PropertyBeanClass.fromJson(Map<String, dynamic> json) {
    city = json['city'];
    description = json['description'];
    cover_img = json['cover_img'];
    title = json['title'];
    adPostDate = json['adPostDate'];
    price = json['price'];
    isAproved = json['isAproved'];
    year = json['year'];
    location = json['location'];
    keyword = json['keyword'].cast<String>();
    ad_images = json['ad_images'].cast<String>();
    author_id = json['author_id'];
    property_type = json['property_type'];
    property_br= json['property_br'];
    n_bathroom =json['n_bathrooms'];
    n_bedroom =json['n_bedroom'];
    timestamp = json['timestamp']!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['city'] = this.city;
    data['description'] = this.description;
    data['title'] = this.title;
    data['adPostDate'] = this.adPostDate;
    data['price'] = this.price;
    data['isAproved'] = this.isAproved;
    data['property_br'] = this.property_br;
    data['location'] = this.location;
    data['keyword'] = this.keyword;
    data['author_id'] = this.author_id;
    data['property_type'] = this.property_type;
    data['year'] = this.year;
    data['n_bedroom'] = this.n_bedroom;
    data['n_bathrooms'] = this.n_bathroom;
    data['cover_img'] = this.cover_img!;
    data['ad_images'] = this.ad_images;
    data['timestamp'] = this.timestamp;
    return data;
  }
}