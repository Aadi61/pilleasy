import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:pilleasy/screens/auth_screens/login_screen.dart';
import 'package:pilleasy/screens/auth_screens/personal_info_screen.dart';

class RoutesClass{
  static String logIn = '/logIn';
  static String personalInfo = '/personalInfo';


  static List<GetPage> routes = [
    GetPage(name: logIn, page: () => const LoginScreen()),
    GetPage(name: personalInfo, page: () => const PersonalInfoScreen()),
  ];
}