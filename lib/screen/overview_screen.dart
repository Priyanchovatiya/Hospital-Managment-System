import 'package:flutter/material.dart';
import 'package:hmsadmin/constant/style.dart';
import 'package:hmsadmin/widget/customeText.dart';

class OverviewScreen extends StatelessWidget {
  const OverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: CustomText(
          text: "OverView",
          colour: dark,
          size: 20,
          weight: FontWeight.bold,
        ),
      ),
    );
  }
}
