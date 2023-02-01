import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hmsadmin/constant/style.dart';
import 'package:hmsadmin/widget/customeText.dart';
import 'package:hmsadmin/widget/custome_filed.dart';

import '../helpers/responsive_widget.dart';

class LargeFormPatient extends StatefulWidget {
  const LargeFormPatient({Key? key}) : super(key: key);

  @override
  _LargeFormPatientState createState() => _LargeFormPatientState();
}

class _LargeFormPatientState extends State<LargeFormPatient> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    TextEditingController nameController = TextEditingController();
    return Scaffold(
      backgroundColor: mainBlueColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 70.00,horizontal: 70.0),
          child: Column(
            children: [
             CircleAvatar(
               radius: 25.0,
               child: IconButton(onPressed: () {
                 setState(() {
                   Navigator.of(context).pop();
                 });
               }, icon: const Icon(CupertinoIcons.multiply)),
             ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: width <= 1024 ? width*0.1 :width * 0.25,vertical: 20.0 ),
                // height: 800,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children:
               
                  [
                    CustomText(weight: FontWeight.bold, size: 25, text: "Patient Registration", colour: dark),
                    const SizedBox(height: 25.0,),
                    CustomFiled(text: "Enter Full name", controller: nameController, icon: CupertinoIcons.person),
                    const SizedBox(height: 15.0,),
                    CustomFiled(text: "Address of Patient", controller: nameController, icon: CupertinoIcons.pencil),
                    const SizedBox(height: 15.0,),
                    CustomFiled(text: "Mobile Number", controller: nameController, icon: CupertinoIcons.phone_down),
                    const SizedBox(height: 15.0,),
                    CustomFiled(text: "Enter Email", controller: nameController, icon: CupertinoIcons.person),
                    const SizedBox(height: 15.0,),
                    CustomFiled(text: "Enter Email", controller: nameController, icon: CupertinoIcons.person),

                  ]

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
