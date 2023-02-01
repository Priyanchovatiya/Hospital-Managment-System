import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:hmsadmin/screen/overview_screen.dart';
import 'package:hmsadmin/screen/patient_screen.dart';
import 'package:hmsadmin/widget/side_menu.dart';

import '../controllers/page_controller.dart';
import '../routing/routes.dart';

class LargeScreen extends StatefulWidget {

  LargeScreen({Key? key}) : super(key: key);

  @override
  State<LargeScreen> createState() => _LargeScreenState();
}

class _LargeScreenState extends State<LargeScreen> {
  final Controller c = Get.find();



  @override
  Widget build(BuildContext context) {
    var container;

    if (currentPage == DrawerSections.overViewPage) {
      container = OverviewScreen();
    } else if (currentPage == DrawerSections.patientPage) {
      container = PatientScreen();
    }
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
           Expanded(child: SideMenu()),
          Expanded(
              flex: 5,
              child: PatientScreen()),
        ],
      ),
    );
  }
}
