import 'package:flutter/material.dart';
import 'package:plantapp/constants.dart';

class TitleCostumUnderline extends StatelessWidget {
  const TitleCostumUnderline({
    Key? key, required this.text,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Text(
            "Recomended",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 7,
              color: kPrimaryColor.withOpacity(0.1),
            ),
          ),
        ],
      ),
    );
  }
}
