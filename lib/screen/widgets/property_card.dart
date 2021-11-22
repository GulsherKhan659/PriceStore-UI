import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pricestore/modals/property_modal.dart';
import 'package:get/get.dart';
import 'package:pricestore/screen/property_screens/house_screen.dart';
import '/utils/colors.dart';
import 'home_icons.dart';

class PropertyCard extends StatelessWidget {
  PropertyCard(
      {Key? key,
      required this.constraint,
      required this.favouriteIcon,
      required this.propertyBeanClass,
      required this.phonenum})
      : super(key: key);
  BoxConstraints constraint;
  bool favouriteIcon;
  String phonenum;

  PropertyBeanClass propertyBeanClass;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() =>
          HouseScreen(phoneNumber: phonenum, propertyModel: propertyBeanClass)),
      child: Container(
        height: 130,
        width: constraint.maxWidth,
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 2),
        child: Card(
          color: MyColor.backgroud_secondary_color,
          child: Row(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(6),
                          child: Text(
                            "${propertyBeanClass.title}",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: MyColor.font_color),
                          ),
                        ),
                        RichText(
                            text: TextSpan(
                                style: TextStyle(color: MyColor.other_color),
                                children: [
                              TextSpan(
                                  text: "PKR ", style: TextStyle(fontSize: 10)),
                              TextSpan(
                                  text: "${propertyBeanClass.price}",
                                  style: TextStyle(fontSize: 16)),
                            ])),
                        Text(
                          "${propertyBeanClass.location},${propertyBeanClass.city}",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              height: 1.2,
                              color: MyColor.font_color,
                              fontSize: 10),
                        ),
                        Text(
                          "${propertyBeanClass.location},${propertyBeanClass.city}",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 8,
                              height: 1.2,
                              color: MyColor.icon_color),
                        ),
                        Text(
                          "Posted Data : ${propertyBeanClass.adPostDate}",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 10,
                              height: 1.2,
                              color: MyColor.font_color),
                        ),
                        Text(
                          "${propertyBeanClass.description}",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 13.5,
                              height: 1.5,
                              fontWeight: FontWeight.bold,
                              color: MyColor.font_color),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              HomeIcon(
                                cardicon: Icons.king_bed_outlined,
                                cardtitle: "${propertyBeanClass.n_bedroom}",
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              HomeIcon(
                                  cardicon: Icons.bathtub,
                                  cardtitle: "${propertyBeanClass.n_bathroom}"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Stack(
                  children: [
                    Container(
                      height: double.infinity,
                      width: double.infinity,
                      child: CachedNetworkImage(
                        fit: BoxFit.cover,
                        imageUrl: "${propertyBeanClass.cover_img}",
                        errorWidget: (context, url, error) => Icon(Icons.error),
                        placeholder: (context, url) => Center(
                            child: CircularProgressIndicator(
                          color: Colors.white,
                        )),
                      ),
                    ),
                    favouriteIcon
                        ? Container(
                            alignment: Alignment.topRight,
                            child: CircleAvatar(
                              backgroundColor: MyColor.backgroud_primary_color,
                              child: Icon(
                                Icons.favorite_border,
                                color: MyColor.icon_color,
                              ),
                            ),
                          )
                        : Container(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
