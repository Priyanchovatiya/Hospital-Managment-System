import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hmsadmin/routing/routes.dart';


class MenuController extends GetxController{
  static MenuController instance = Get.find();

  var activeItem = overviewPageRoute.obs;
  var hoverItem = "".obs;
}