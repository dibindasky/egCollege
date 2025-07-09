import 'package:get/get.dart';

class HomeController extends GetxController {
  RxList<String> homeTitles = ['Home'].obs;
  RxString selectedHomeTitle = 'Home'.obs;

  RxBool showSideBar = false.obs;

  void changeHomeSelection(String title) {
    selectedHomeTitle.value = title;
  }

  void showSideBArValue(bool value) {
    showSideBar.value = value;
  }
}
