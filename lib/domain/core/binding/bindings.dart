import 'package:edu_college/application/controller/course/course_controller.dart';
import 'package:edu_college/application/controller/home/home_controller.dart';
import 'package:get/get.dart';

class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => CourseController());
  }
}
