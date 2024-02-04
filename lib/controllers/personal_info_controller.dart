import 'package:get/get.dart';
import 'package:pilleasy/screens/auth_screens/personal_info_screen.dart';

class PersonalInfoController extends GetxController {
  var selectedDate = DateTime.now().obs;
  var _character = Gender.male.obs;
  Gender get character => _character.value;
  void onDateChanged(DateTime date) {
    selectedDate.value = date;
  }
  void updateGender(Gender value) {
    _character.value = value;
  }
}
