import 'package:get/get.dart';

class HomeController extends GetxController {
  RxList<String> homeTitles = ['Home'].obs;
  RxString selectedHomeTitle = 'Home'.obs;

  void changeHomeSelection(String title) {
    selectedHomeTitle.value = title;
  }
}
