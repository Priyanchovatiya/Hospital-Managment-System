import 'package:flutter/material.dart';
import 'package:hmsadmin/constant/style.dart';
import 'package:hmsadmin/controllers/navigation_controller.dart';
import 'package:hmsadmin/widget/customeText.dart';
import 'package:hmsadmin/widget/side_menu_items.dart';
import 'package:get/get.dart';
import '../controllers/page_controller.dart';
import '../helpers/responsive_widget.dart';
import '../routing/routes.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  final Controller c = Get.put(Controller());
  final NavigationController navigationController = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: _width / 48),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Center(
                        child: Image.asset(
                          'assets/logo/logo.png',
                          width: 35,
                        ),
                      ),
                    ),
                    Flexible(
                        child: CustomText(
                      text: "Dash",
                      size: 20,
                      weight: FontWeight.bold,
                      colour: activeColor,
                    )),
                    SizedBox(width: _width / 48),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Divider(
                  color: lightGrey.withOpacity(.1),
                ),
              ],
            ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 10,
              ),
              InkWell(
                child: SideMenuItem(
                  id: 1,
                  itemName: 'Overview',
                  icon: Icons.home_outlined,
                  active: currentPage == DrawerSections.overViewPage ? true : false,
                ),
              ),

              InkWell(
                onTap: (){
                  setState(() {
                    currentPage == DrawerSections.patientPage;
                  });
                },
                child: SideMenuItem(
                 id: 2,
                  itemName: 'Patient',
                  icon: Icons.person,
                  active: currentPage == DrawerSections.patientPage ? true : false,
                ),
              ),
              // const SizedBox(
              //   height: 10,
              // ),
              InkWell(
                child: SideMenuItem(
                  id: 3,
                  itemName: 'Log Out',
                  icon: Icons.logout,
                  active: currentPage == DrawerSections.logOutPage ? true : false,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
