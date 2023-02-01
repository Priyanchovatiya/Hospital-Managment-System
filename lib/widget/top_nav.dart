import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hmsadmin/constant/style.dart';


import '../helpers/responsive_widget.dart';
import 'customeText.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>

    AppBar(
      elevation: 0,
      backgroundColor: light,
      iconTheme: IconThemeData(color: dark),
      title: Row(
        children: [
           CustomText(
            text: 'Dash',
            colour: lightGrey,
            size: 20,
            weight: FontWeight.bold,
          ),
          Expanded(child: Container()),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings,color: dark.withOpacity(0.7), )),
          MediaQuery.of(context).size.width > 379 ? const SizedBox(width: 8,) : const SizedBox(width: 0,),
          MediaQuery.of(context).size.width > 379 ? CustomText(text: "Santos Enoque", colour: lightGrey,size: 16, weight: FontWeight.normal,) : const Text(""),
          MediaQuery.of(context).size.width > 379 ? const SizedBox(width: 16,) : const SizedBox(width: 8,),
          Container(
            decoration: BoxDecoration(
                color: activeColor.withOpacity(.5),
                borderRadius: BorderRadius.circular(30)
            ),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30)
              ),
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.all(2),
              child: CircleAvatar(
                backgroundColor: light,
                child: Icon(Icons.person_outline, color: dark,),
              ),
            ),
          )
        ],
      ),
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 14),
                  child: Image.asset(
                    'assets/logo/logo.png',
                    width: 35,
                  ),
                ),
                Container(
                  width: 1,
                  height: 22,
                  color: lightGrey,
                ),

              ],
            )
          : IconButton(
              onPressed: () {
                key.currentState?.openDrawer();
              },
              icon: const Icon(Icons.menu)),
    );
