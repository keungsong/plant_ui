import 'package:flutter/material.dart';
import 'package:plant/constants.dart';
import 'package:plant/screens/details/components/detail_screen.dart';

class RecomamdPlants extends StatelessWidget {
  const RecomamdPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommandPlantCard(
            image: "assets/images/plant.jpg",
            title: "ດອກອອ່ນ",
            country: "Laos",
            price: 50000,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailScreen()));
            },
          ),
          RecommandPlantCard(
            image: "assets/images/flower_1.jpg",
            title: "ດອກກູຫຼາບ",
            country: "Laos",
            price: 50000,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailScreen()));
            },
          ),
          RecommandPlantCard(
            image: "assets/images/flower_2.jpg",
            title: "ດອກເຫຼືອງ",
            country: "Laos",
            price: 50000,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailScreen()));
            },
          ),
        ],
      ),
    );
  }
}

class RecommandPlantCard extends StatelessWidget {
  const RecommandPlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailScreen()));
            },
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23))
                  ]),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: "$title\n".toUpperCase(),
                      style: Theme.of(context).textTheme.button,
                    ),
                    TextSpan(
                        text: "$country".toUpperCase(),
                        style: TextStyle(color: kPrimaryColor.withOpacity(0.5)))
                  ])),
                  Spacer(),
                  Text(
                    "\₭$price",
                    style: TextStyle(color: Colors.green),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
