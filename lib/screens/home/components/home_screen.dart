import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant/components/my_bottom_nav_bar.dart';
import 'package:plant/constants.dart';
import 'package:plant/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: Body(),
      bottomNavigationBar: MyBottonNavBar(),
    );
  }

  buildAppbar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
      title: Text('ຕົ້ນໄມ້ປະດັບ'),
      centerTitle: true,
    );
  }
}
