import 'package:flutter/material.dart';
import 'package:pricestore/utils/app_bar.dart';
import 'package:pricestore/utils/footer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(context),
      body: Column(
        children: [
          Expanded(child: Center(child: Text("Profile Screen"),)),
          Footer(),
        ],
      ),
    );
  }
}
