import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pilleasy/common_widgets/auth_button.dart';
import 'package:pilleasy/common_widgets/custom_password_field.dart';
import 'package:pilleasy/common_widgets/custom_text_field.dart';
import 'package:pilleasy/consts/colors.dart';
import 'package:pilleasy/routes/routes.dart';
import 'package:velocity_x/velocity_x.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                    child: 'Sign Up'.text.size(30).semiBold.make()),
                "Create an account to utilize the in-app pharmacy consultation service"
                    .text
                    .color(grey)
                    .make(),
                50.heightBox,
                customTextField(title: 'Email'),
                20.heightBox,
                customPasswordField(title: 'Password'),
                40.heightBox,
                AuthButton(title: 'Sign Up'),
                15.heightBox,
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
