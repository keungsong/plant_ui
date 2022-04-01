import 'package:flutter/material.dart';
import 'package:plant/constants.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key? key,
    required this.title,
    required this.country,
    required this.price,
  }) : super(key: key);

  final String title, country;
  final int price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: "$title\n",
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            TextSpan(
                text: "$country",
                style: TextStyle(color: kPrimaryColor, fontSize: 18))
          ])),
          Spacer(),
          Text(
            "\₭$price",
            style: TextStyle(fontSize: 18, color: kPrimaryColor),
          )
        ],
      ),
    );
  }
}
