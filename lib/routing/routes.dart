
import '../screen/overview_screen.dart';
import '../screen/patient_screen.dart';

const overviewPageRoute = "Overview";
const patientPageRoute = "Patient";
const authenticationPageRoute = "auth";

List sideMenuItems = [
  OverviewScreen(),
  PatientScreen(),
  authenticationPageRoute
];

enum DrawerSections {
  overViewPage,
  patientPage,
  logOutPage
}

var currentPage = DrawerSections.overViewPage;