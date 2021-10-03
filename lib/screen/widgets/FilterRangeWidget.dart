import 'package:flutter/material.dart';

class FilterWidget extends StatelessWidget {
  FilterWidget({Key? key, required this.range}) : super(key: key);
  String range;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              range,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Icon(
            Icons.arrow_drop_down,
            size: 35,
          )
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.grey,
      ),
      width: 150,
      height: 30,
    );
  }
}
