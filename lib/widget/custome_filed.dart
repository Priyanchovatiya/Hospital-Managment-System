import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/style.dart';

class CustomFiled extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  final IconData icon;
  const CustomFiled({Key? key, required this.text, required this.controller, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      padding: EdgeInsets.only(right: MediaQuery.of(context).size.width /30 ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.black.withOpacity(0.1),
      ),
      child: TextFormField(
        controller: controller,

        style: TextStyle(
          fontWeight: FontWeight.w400,
          color: Colors.black.withOpacity(1.0),
          fontSize: 12.0,
        ),

        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(icon,color: Colors.black.withOpacity(0.9),),

          contentPadding: const EdgeInsets.only(top: 16.0),
          hintText: text,
          helperMaxLines: 1,

          hintStyle: TextStyle(
            fontWeight: FontWeight.w400,
            color: Colors.black.withOpacity(0.5),
            fontSize: 14.0,
          ),
        ),
      ),
    );
  }
}
