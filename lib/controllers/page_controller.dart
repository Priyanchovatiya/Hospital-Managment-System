import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController{
  int count = 0;
  change(int number) => count = number;
}