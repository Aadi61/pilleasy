import 'package:get/get.dart';
import 'package:pilleasy/screens/auth_screens/login_screen.dart';
import 'package:pilleasy/screens/auth_screens/personal_info_screen.dart';
import 'package:pilleasy/screens/auth_screens/signup_screen.dart';

class RoutesClass{
  static String logIn = '/logIn';
  static String personalInfo = '/personalInfo';
  static String signUp = '/signUp';

  static List<GetPage> routes = [
    GetPage(name: logIn, page: () => const LoginScreen()),
    GetPage(name: personalInfo, page: () => const PersonalInfoScreen()),
    GetPage(name: signUp, page: () => const SignUpScreen())
  ];
}