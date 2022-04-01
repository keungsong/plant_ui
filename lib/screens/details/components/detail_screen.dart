import 'package:flutter/material.dart';
import 'package:plant/screens/details/components/body.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyDetail(),
    );
  }
}
