import 'package:flutter/material.dart';
import 'package:hmsadmin/routing/routes.dart';
import 'package:hmsadmin/screen/overview_screen.dart';
import 'package:hmsadmin/screen/patient_screen.dart';


Route<dynamic> generateRoute(RouteSettings settings){
  switch (settings.name) {
    case overviewPageRoute:
      return _getPageRoute(OverviewScreen());
    case patientPageRoute:
      return _getPageRoute(PatientScreen());

    default:
      return _getPageRoute(OverviewScreen());

  }
}

PageRoute _getPageRoute(Widget child){
  return MaterialPageRoute(builder: (context) => child);
}