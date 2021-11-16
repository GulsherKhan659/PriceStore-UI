import 'package:cloud_firestore/cloud_firestore.dart';

class VehicleBeanClass {
  String? authorId;
  String? condition;
  String? title;
  String? year;
  int? price;
  String? description;
  String? model;
  bool? isApproved;
  String? make;
  List<String>? keyword;
  String? mileage;
  List<String>? ad_images;
  String? cover_image;
  Timestamp? timestamp;

  VehicleBeanClass(
      {
        required this.authorId,
        required this.condition,
        required this.year,
        required this.title,
        required this.price,
        required this.description,
        required this.model,
        required this.isApproved,
                 this.keyword,
        required this.cover_image,
                 this.ad_images,
        required this.make,
        required this.mileage,
                 this.timestamp
      });

  VehicleBeanClass.fromJson(Map<String, dynamic> json) {
    authorId = json['author_id'];
    condition = json['condition'];
    title = json['title'];
    year = json['year'];
    price = json['price'];
    description = json['description'];
    model = json['model'];
    isApproved = json['isApproved'];
    keyword = json['keyword'].cast<String>();
    make = json['make'];
    mileage = json['mileage'];
    timestamp = json['timestamp'];
    ad_images = json ['ad_images'].cast<String>();
    cover_image = json['cover_img'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['author_id'] = this.authorId;
    data['condition'] = this.condition;
    data['year'] = this.year;
    data['price'] = this.price;
    data['description'] = this.description;
    data['model'] = this.model;
    data['isApproved'] = this.isApproved;
    data['make'] = this.make;
    data['keyword'] = this.keyword;
    data['mileage'] = this.mileage;
    data['timestamp'] =this.timestamp;
    data['ad_images'] =this.ad_images;
    data['title'] =this.title;
    data['cover_img'] =this.cover_image;
    return data;
  }
}