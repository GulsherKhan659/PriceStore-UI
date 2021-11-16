import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pricestore/utils/colors.dart';
import 'package:pricestore/utils/route_name.dart';

import '/screen/widgets/icon_w.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> _socialLinks = ["youtube","instagram","facebook","whatsapp"];
    return Drawer(
      child: Container(
        color: MyColor.backgroud_secondary_color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top:50),
              height: 220,
              child: Column(
                children: [
              Container(
                width: 200,
                margin: const EdgeInsets.all(5),
                child:Image(
                  image: AssetImage( "assets/logo.png"),
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: ()=>Get.toNamed(RouteName.SignInRoute),
                        child: Container(
                          child: const Center(child: Text("Sign In")),
                          decoration: BoxDecoration(
                              color:MyColor.icon_color,
                              borderRadius: BorderRadius.circular(5)
                          ),
                          width: 80,
                          height: 30,
                        ),
                      ),
                      GestureDetector(
                        onTap: ()=>Get.toNamed(RouteName.SignUpRoute),
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          child: const Center(child: Text("Sign Up")),
                          decoration: BoxDecoration(
                            color:MyColor.icon_color,
                            borderRadius: BorderRadius.circular(5)
                          ),
                          width: 80,
                          height: 30,
                        ),
                      ),
                    ]),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: Colors.white,
                thickness: 1.2,
              )
                ],
              ),
             // color: Colors.black,
            ),
            AboutUswithicon(),
             Divider(

              color: Colors.white,
            ),
            AboutUswithicon(),
             Divider(
              color: Colors.white,
            ),
            FittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:_socialLinks.map((e) => Container(
                 margin: const EdgeInsets.symmetric(horizontal: 4,vertical: 5),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(60),
                    image: DecorationImage(
                      image: AssetImage("assets/$e.png"),
                      scale: 15
                    ),
                  ),
                )).toList(),
                  // IconW(
                  //   image: "assets/youtube.png",brandName: 'youtube',function: (){}
                  // ),
                  // IconW(image: "assets/instagram.png",brandName: 'instagram',function: (){}),
                  // IconW(
                  //   image: "assets/facebook.png",brandName: 'facebook',function: (){}
                  // ),
                  // IconW(
                  //   image: "assets/whatsapp.png",brandName: 'whatsapp',function: (){}
                  // ),

              ),
            )
          ],
        ),
      ),
    );
  }
}

class AboutUswithicon extends StatelessWidget {
  const AboutUswithicon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Padding(
          padding: EdgeInsets.only(left: 8.0, right: 8.0),
          child: Icon(
            Icons.person_add,
            color: Colors.white,
            size: 60,
          ),
        ),
        Text(
          "About Us",
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}


