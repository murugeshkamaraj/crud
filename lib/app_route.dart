import 'package:crud/ui/screens/user_screen.dart';
import 'package:get/get.dart';

class RouteNames {
  static String userScreen ="/userScreen";
}

class AppRoute {
  static final route =[
    GetPage(name: RouteNames.userScreen, page: ()=>UserScreen()),
  ];
}