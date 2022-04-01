import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant/constants.dart';
import 'package:plant/screens/home/components/featured_plant.dart';
import 'package:plant/screens/home/components/header_with_searchBox.dart';
import 'package:plant/screens/home/components/recomamd_plants.dart';
import 'package:plant/screens/home/components/title_with_more_button.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(
            title: "ເເນະນຳ",
            press: () {},
          ),
          RecomamdPlants(),
          TitleWithMoreButton(title: "ນີຍົນ", press: () {}),
          FeaturedPlant(),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
