import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:pilleasy/common_widgets/custom_password_field.dart';
import 'package:pilleasy/common_widgets/custom_text_field.dart';
import 'package:pilleasy/consts/colors.dart';
import 'package:pilleasy/routes/routes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../common_widgets/auth_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightCream,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              children: [
                10.heightBox,
                Align(
                    alignment: Alignment.center,
                    child: 'Log In'.text.size(30).semiBold.make()),
                    "Log in to the in-app pharmacy consultation service".text.color(grey).make(),
                50.heightBox,
                    customTextField(title: 'Email'),
                20.heightBox,
                customPasswordField(title: 'Password'),
                20.heightBox,
                Align(
                  alignment: Alignment.centerRight,
                  child: "Forgot Password".text.color(grey).make()),
        
                  40.heightBox,
                  AuthButton(
                    title: 'Log In'),
        
                    15.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: ["Don't have an account?".text.color(grey).make(),
                    GestureDetector(
                      onTap: () => Get.toNamed(RoutesClass.personalInfo),
                      child: 'Sign up'.text.semiBold.color(blue).make())
                    ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
