import 'package:flutter/material.dart';
import 'package:hmsadmin/helpers/responsive_widget.dart';
import 'package:hmsadmin/widget/large_screen.dart';
import 'package:hmsadmin/widget/side_menu.dart';
import 'package:hmsadmin/widget/small_screen.dart';
import 'package:hmsadmin/widget/top_nav.dart';

class SiteLayout extends StatelessWidget {
  GlobalKey<ScaffoldState> globalKey = GlobalKey();
   SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      appBar: topNavigationBar(context, globalKey),
      drawer:const  Drawer(
        child: SideMenu(),
      ),
      body:   ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(), mediumScreen: null, customScreen: null,
      ),
    );
  }
}
