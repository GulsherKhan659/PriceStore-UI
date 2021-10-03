import 'package:flutter/material.dart';
import 'package:pricestore/utils/colors.dart';

import 'widgets/icon_w.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      Container(
                        child: const Center(child: Text("Sign In")),
                        decoration: BoxDecoration(
                            color:MyColor.icon_color,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        width: 80,
                        height: 30,
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        child: const Center(child: Text("Sign Up")),
                        decoration: BoxDecoration(
                          color:MyColor.icon_color,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        width: 80,
                        height: 30,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconW(
                  image: "assets/youtube.png",
                ),
                IconW(image: "assets/instagram.png"),
                IconW(
                  image: "assets/facebook.png",
                ),
                IconW(
                  image: "assets/whatsapp.png",
                ),
              ],
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


