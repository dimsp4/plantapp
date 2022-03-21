import 'package:flutter/material.dart';
import 'package:plantapp/screens/components/title_costum.dart';

import '../../constants.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key? key,
    required this.title,
    required this.buttonTitle,
  }) : super(key: key);

  final String title, buttonTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleCostumUnderline(text: title),
          Spacer(),
          MoreBtn(
            text: buttonTitle,
            press: () {},
          )
        ],
      ),
    );
  }
}

class MoreBtn extends StatelessWidget {
  const MoreBtn({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String text;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        padding:
            MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20)),
        backgroundColor: MaterialStateProperty.all(kPrimaryColor),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      onPressed: press,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
