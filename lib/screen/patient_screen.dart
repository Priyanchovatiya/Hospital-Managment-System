import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:hmsadmin/constant/style.dart';
import 'package:hmsadmin/patient_management/large_form.dart';
import 'package:hmsadmin/patient_management/very_large_form.dart';
import 'package:hmsadmin/widget/customeText.dart';

import '../helpers/responsive_widget.dart';

class PatientScreen extends StatefulWidget {
  const PatientScreen({Key? key}) : super(key: key);

  @override
  State<PatientScreen> createState() => _PatientScreenState();
}

class _PatientScreenState extends State<PatientScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0,top: 20.0,left: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                    weight: FontWeight.bold,
                    size: 25,
                    text: "Patient Management",
                    colour: dark),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        // ResponsiveWidget.isCustomSize(context) ?
                        //     Get.to(SLargePatientForm()):
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LargeFormPatient()));
                      });
                    },
                    borderRadius: BorderRadius.circular(16.0),
                    child: Ink(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: mainBlueColor,
                      ),
                      child: Row(
                        children: [
                          const Icon(CupertinoIcons.add,size: 16, color: Colors.white,),
                          const SizedBox(
                            width: 5.0,
                          ),
                          CustomText(weight: FontWeight.w700, size: 16, text: "Add Patient", colour: whiteColor),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
