import 'package:flutter/material.dart';
import 'package:plant/constants.dart';

class TitleWithMoreButton extends StatelessWidget {
  const TitleWithMoreButton({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TittleWithCustomUnderLine(
            text: title,
          ),
          Spacer(),
          FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              onPressed: () {},
              color: Colors.green,
              child: Text(
                'ເພີ່ມຕື່ມ',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}

class TittleWithCustomUnderLine extends StatelessWidget {
  const TittleWithCustomUnderLine({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: kDefaultPadding / 4),
              child: Text(
                text,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  margin: EdgeInsets.only(right: kDefaultPadding / 4),
                  height: 7,
                  color: kPrimaryColor.withOpacity(0.2),
                ))
          ],
        ),
      ),
    );
  }
}
