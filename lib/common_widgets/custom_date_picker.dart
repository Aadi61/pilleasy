import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomDatePicker extends StatelessWidget {
  final Function(DateTime) onDateChanged;
  final String title;
  final String selectedDate;
  CustomDatePicker(
      {required this.onDateChanged,
      required this.title,
      required this.selectedDate});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title.text.size(20).make(),
        CupertinoButton(
            child: Container(
              width: 160,
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(3),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      selectedDate,
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    20.widthBox,
                    Icon(Icons.arrow_drop_down, color: Colors.black),
                  ],
                ),
              ),
            ),
            onPressed: () {
              showCupertinoModalPopup(
                  context: context,
                  builder: (BuildContext context) => SizedBox(
                        height: 200,
                        child: CupertinoDatePicker(
                          mode: CupertinoDatePickerMode.date,
                          initialDateTime: DateTime.now(),
                          onDateTimeChanged: onDateChanged,
                        ),
                      ));
            }),
      ],
    );
  }
}
