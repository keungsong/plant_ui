import 'package:flutter/material.dart';
import 'package:plant/constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      height: size.height * 0.2,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding,
                bottom: 36 + kDefaultPadding),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25))),
            child: Row(
              children: [
                Text(
                  'Hi keungxiong!',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                SizedBox(
                    width: 60,
                    height: 60,
                    child: Image.asset("assets/images/people.png"))
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 54,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 50,
                            color: kPrimaryColor.withOpacity(0.23))
                      ]),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          onChanged: (value) {},
                          decoration: InputDecoration(
                              hintText: "ຄົ້ນຫາ",
                              hintStyle: TextStyle(
                                color: kPrimaryColor.withOpacity(0.5),
                              ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              icon: Icon(Icons.search)),
                        ),
                      ),
                      //SvgPicture.asset("assets/icons/search.svg")
                    ],
                  )))
        ],
      ),
    );
  }
}
