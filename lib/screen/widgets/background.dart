import 'package:flutter/cupertino.dart';
import 'package:pricestore/utils/colors.dart';

class AppBg extends StatelessWidget {
  AppBg({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height,
          width: size.width,
          color: MyColor.backgroud_primary_color,
          // child: Image(
          //   image:  AssetImage("assets/bg.jpg"),
          //   fit: BoxFit.cover,
          // ),
        ),
        child
      ],
    );
  }
}
