import 'package:flutter/material.dart';
import 'package:pilleasy/consts/colors.dart';
import 'package:velocity_x/velocity_x.dart';

Widget AuthButton({String? title}) {
  return Container(
    height: 50,
    width: 300,
    child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(backgroundColor: blue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
        ),
        child: title!.text.size(20).color(Colors.white).make()),
  );
}
