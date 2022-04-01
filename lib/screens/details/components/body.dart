import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant/constants.dart';
import 'package:plant/screens/details/components/icon_card.dart';
import 'package:plant/screens/details/components/image_and_icon.dart';
import 'package:plant/screens/details/components/title_and_price.dart';

class BodyDetail extends StatelessWidget {
  const BodyDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcon(),
          TitleAndPrice(
            title: "ດອກກຸຫຼາບ",
            country: "Laos",
            price: 50000,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "ສັ່ງເລີຍ",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
              ),
              Expanded(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "ອະທີບາຍ",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    )),
              )
            ],
          ),
          SizedBox(
            height: kDefaultPadding * 2,
          )
        ],
      ),
    );
  }
}
