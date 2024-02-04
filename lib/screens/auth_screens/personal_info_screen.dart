import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pilleasy/common_widgets/auth_button.dart';
import 'package:pilleasy/common_widgets/custom_date_picker.dart';
import 'package:pilleasy/consts/colors.dart';
import 'package:pilleasy/controllers/personal_info_controller.dart';
import 'package:pilleasy/routes/routes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:pilleasy/common_widgets/custom_text_field.dart';

class PersonalInfoScreen extends StatefulWidget {
  const PersonalInfoScreen({super.key});

  @override
  State<PersonalInfoScreen> createState() => _PersonalInfoScreenState();
}

enum Gender { male, female, other }

class _PersonalInfoScreenState extends State<PersonalInfoScreen> {
  Gender? _character = Gender.male;
  final personalInfoController = Get.put(PersonalInfoController());
  DateTime selectedDate = DateTime.now();
  String? countryValue = "Select Country";
  String? stateValue = "Select State";
  String? cityValue = "Select City";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Obx(
              () => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  10.heightBox,
                  Align(
                      alignment: Alignment.center,
                      child:
                          'Personal Information'.text.size(30).semiBold.make()),
                  "Please provide your personal information"
                      .text
                      .color(grey)
                      .make(),
                  50.heightBox,
                  customTextField(title: 'Full Name'),
                  20.heightBox,
                  customTextField(title: 'Phone Number'),
                  20.heightBox,
                  // SearchAddress(),
                  "City".text.size(20).make(),
                  5.heightBox,
                  CSCPicker(
                    defaultCountry: CscCountry.India,
                    onCountryChanged: (value) {
                      setState(() {
                        countryValue = value;
                      });
                    },
                    onStateChanged: (value) {
                      setState(() {
                        stateValue = value;
                      });
                    },
                    onCityChanged: (value) {
                      setState(() {
                        cityValue = value;
                      });
                    },
                  ),
                  20.heightBox,
                  "Gender".text.size(20).make(),

                  Column(
                    children: [
                      ListTile(
                        leading: Radio(
                            value: Gender.male,
                            groupValue: personalInfoController.character,
                            onChanged: (Gender? value) {
                              if (value != null) {
                                personalInfoController.updateGender(value);
                              }
                            }),
                        title: "Male".text.make(),
                      ),
                      ListTile(
                        leading: Radio(
                            value: Gender.female,
                            groupValue: personalInfoController.character,
                            onChanged: (Gender? value) {
                              if (value != null) {
                                personalInfoController.updateGender(value);
                              }
                            }),
                        title: "Female".text.make(),
                      ),
                      ListTile(
                        leading: Radio(
                            value: Gender.other,
                            groupValue: personalInfoController.character,
                            onChanged: (Gender? value) {
                              if (value != null) {
                                personalInfoController.updateGender(value);
                              }
                            }),
                        title: "Other".text.make(),
                      )
                    ],
                  ),
                  20.heightBox,
                  CustomDatePicker(
                    title: 'Date of Birth: ',
                    selectedDate:
                        '${personalInfoController.selectedDate.value.day}/${personalInfoController.selectedDate.value.month}/${personalInfoController.selectedDate.value.year}',
                    onDateChanged: (selectedDate) {
                      personalInfoController.onDateChanged(selectedDate);
                    },
                  ),
                  180.heightBox,
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: AuthButton(
                          title: 'Next',
                          onPressed: () {
                            Get.toNamed(RoutesClass.signUp);
                          })),

                  30.heightBox
                ],
              ),
            )),
      ),
    );
  }
}
