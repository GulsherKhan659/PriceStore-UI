import 'package:flutter/cupertino.dart';

class AppBg extends StatelessWidget {
   AppBg({Key? key,required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
        height: size.height,
        width: size.width,
      child: Image(
        image:  AssetImage("assets/bg.jpg"),
        fit: BoxFit.cover,
      ),
    ),
        child
      ],
    );
  }
}
