import 'package:flutter/material.dart';
import 'package:pilleasy/consts/colors.dart';
import 'package:velocity_x/velocity_x.dart';

Widget customPasswordField({String? title}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.size(20).make(),
      5.heightBox,
      TextFormField(
        // obscureText: isPassword,
        // controller: controller,
        decoration: InputDecoration(
          hintText: '********',
          suffixIcon: Icon(Icons.visibility),
            hintStyle: TextStyle( color: Colors.grey),
            // hintText: hint,
            isDense: true,
            // fillColor: lightGrey,
            filled: true,
            border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.black))),
      )
    ],
  );
}
