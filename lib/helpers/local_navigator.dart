
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:hmsadmin/controllers/navigation_controller.dart';
import 'package:hmsadmin/routing/router.dart';

import '../routing/routes.dart';
Navigator localNavigator() =>   Navigator(
  key: NavigationController.instance.navigatorKey,
  onGenerateRoute: generateRoute,
  initialRoute: overviewPageRoute,
);