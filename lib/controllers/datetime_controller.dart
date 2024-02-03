import 'package:get/get.dart';

class DateTimeController extends GetxController {
  var selectedDate = DateTime.now().obs;

  void onDateChanged(DateTime date) {
    selectedDate.value = date;
    print(selectedDate.value);
  }
}
