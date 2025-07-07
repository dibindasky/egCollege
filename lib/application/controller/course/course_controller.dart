import 'dart:developer';

import 'package:edu_college/application/presentation/screens/course/level4_courses/level4_course.dart';
import 'package:edu_college/data/service/course_service/course_service.dart';
import 'package:edu_college/domain/model/courses/add_course_review_model/add_course_review_model.dart';
import 'package:edu_college/domain/model/courses/getcource_review_bycource/getcource_review_bycource.dart';
import 'package:edu_college/domain/repo/courses.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:edu_college/domain/model/courses/get_all_couses/get_all_couses.dart';

class CourseController extends GetxController {
  /// Service object
  final CoursesRepo coursesRepo = CourseService();

  RxBool courseDetailLoading = false.obs;
  RxBool courseLEvel4DetailLoading = false.obs;
  RxBool isloading = false.obs;
  RxBool hasError = false.obs;
  RxBool reviewLoading = false.obs;
  RxBool reviewPostLoading = false.obs;

  RxBool universityArrow = false.obs;
  RxBool countryArrow = false.obs;
  RxBool feeArrow = false.obs;
  RxBool cityArrow = false.obs;

  /// All courses object
  RxList<GetAllCouses> allCourses = <GetAllCouses>[].obs;
  RxList<GetAllCouses> allLevelSevenCourses = <GetAllCouses>[].obs;
  RxList<GetAllCouses> allLevelFiveCourses = <GetAllCouses>[].obs;

  Rx<OTHMDiploma> levelFOurCourseDetail = OTHMDiploma().obs;

  RxList<String> allCourseNames = <String>[].obs;
  // For filtering
  RxList<GetAllCouses> filteredCourses = <GetAllCouses>[].obs;

  /// Search Courses
  RxList<GetAllCouses> searchCourseResults = <GetAllCouses>[].obs;

  /// course detail modal
  Rx<GetAllCouses> courseDetail = GetAllCouses().obs;

  /// for storing all universities
  RxList<String> universities = <String>[].obs;
  RxList<String> selectedUniversities = <String>[].obs;

  /// For storing all countries for sorting
  RxList<String> countries = <String>[].obs;
  RxList<String> selectedCountry = <String>[].obs;

  /// For storing all cities for sorting
  RxList<String> cities = <String>[].obs;
  RxList<String> selectedCity = <String>[].obs;

  RxList<Map<String, dynamic>> feeRanges = [
    {'label': '\$0', 'min': 0, 'max': 0},
    {'label': '\$1 - \$100', 'min': 1, 'max': 100},
    {'label': '\$101 - \$500', 'min': 101, 'max': 500},
    {'label': '\$501 - \$2000', 'min': 501, 'max': 2000},
    {'label': '\$2001 - \$5000', 'min': 2001, 'max': 5000},
    {'label': '\$5001 - \$10000', 'min': 5001, 'max': 10000},
    {'label': '\$10001 - \$15000', 'min': 10001, 'max': 15000},
    {'label': 'More than \$15001', 'min': 15001, 'max': null},
  ].obs;
  RxList<String> selectedFee = <String>[].obs;

  TextEditingController searchController = TextEditingController();

  /// Review post
  final GlobalKey<FormState> commentKey = GlobalKey<FormState>();
  TextEditingController commentController = TextEditingController();
  RxInt selectedStarRating = 0.obs;
  Rx<GetcourceReviewBycource> allReviewByCourse = GetcourceReviewBycource().obs;

  @override
  void onInit() {
    super.onInit();
    getAllCourses();
  }

  void changeStarRating(int index) => selectedStarRating.value = index;

  void searchCourses(String query) {
    if (query.isEmpty) {
      searchCourseResults.value = filteredCourses;
    } else {
      searchCourseResults.value = filteredCourses
          .where((course) =>
              course.name!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
  }

  /// Change couse tabs selection
  RxInt selectedTab = (0).obs;
  void changeTabSelection(int index) =>
      selectedTab.value = selectedTab.value == index ? -1 : index;

  RxInt selectedQuestionArrow = (-1).obs; // -1 means no tile is expanded
  void changeQuestionArrow(int index) => selectedQuestionArrow.value =
      selectedQuestionArrow.value == index ? -1 : index;

  Future<void> getSingleCourse(
      {GetAllCouses? course, required String id}) async {
    courseDetailLoading.value = true;
    if (course != null) {
      courseDetail.value = course;
    } else {
      await getAllCourses();
      courseDetail.value = allCourses.firstWhere((c) => c.id == id);
    }
    courseDetailLoading.value = false;
    getAllReviewByCourse(
        courseSlug: courseDetail.value.slug ?? "", isLoad: true);
  }

  Future<void> getLevel4SingleCourse(
      {OTHMDiploma? course, required String id}) async {
    courseLEvel4DetailLoading.value = true;
    if (course != null) {
      levelFOurCourseDetail.value = course;
    } else {
      log('message');
      levelFOurCourseDetail.value = OTHMDiploma.fromJson(
          othmLevel4DiplomasJson.firstWhere((c) => c['id'] == id));
    }
    courseLEvel4DetailLoading.value = false;
  }

  Future<void> getAllCourses({bool isLaod = false}) async {
    if (allCourses.isNotEmpty && !isLaod) return;
    isloading.value = true;
    hasError.value = false;
    final data = await coursesRepo.getAllCourses();
    data.fold((l) => hasError.value = true, (r) {
      allCourses.value = r;
      hasError.value = false;
      allCourseNames.value = r.map((e) => e.name ?? '').toList();
      universities.value = r
          .map((course) => course.universityname ?? '')
          .where((name) => name.isNotEmpty)
          .toSet()
          .toList();
      countries.value = r
          .map((course) => course.country ?? '')
          .where((name) => name.isNotEmpty)
          .toSet()
          .toList();
      cities.value = r
          .map((course) => course.city ?? '')
          .where((name) => name.isNotEmpty)
          .toSet()
          .toList();
      // Filter by level from the course name
      allLevelFiveCourses.value = r
          .where((course) =>
              (course.name?.toLowerCase().contains('level 5') ?? false))
          .toList();

      allLevelSevenCourses.value = r
          .where((course) =>
              (course.name?.toLowerCase().contains('level 7') ?? false))
          .toList();
      filteredCourses.value = r; // Default to all courses
    });

    isloading.value = false;
  }

  /// Filter courses based on specific criteria
  void filterCourses(List<String> filterData, {required String whiChFilter}) {
    if (whiChFilter == 'UNIVERSITY') {
      selectedUniversities.value = List<String>.from(filterData);
    } else if (whiChFilter == 'COUNTRY') {
      selectedCountry.value = List<String>.from(filterData);
    } else if (whiChFilter == 'CITY') {
      selectedCity.value = List<String>.from(filterData);
    }
    _applyFilters();
  }

  // Clear a specific filter
  void clearFilter({required String whichFilter}) {
    if (whichFilter == 'UNIVERSITY') {
      selectedUniversities.value = [];
    } else if (whichFilter == 'COUNTRY') {
      selectedCountry.value = [];
    } else if (whichFilter == 'CITY') {
      selectedCity.value = [];
    } else if (whichFilter == 'FEE') {
      selectedFee.value = [];
    }
    _applyFilters();
  }

  // Reapply all active filters
  void _applyFilters() {
    filteredCourses.value = allCourses.where((course) {
      final matchesUniversity = selectedUniversities.isEmpty ||
          selectedUniversities.contains(course.universityname);
      final matchesCountry =
          selectedCountry.isEmpty || selectedCountry.contains(course.country);
      final matchesCity =
          selectedCity.isEmpty || selectedCity.contains(course.city);
      return matchesUniversity && matchesCountry && matchesCity;
    }).toList();
  }

  void filterCoursesByFee({required List<String> selectedRange}) {
    selectedFee.value = selectedRange;
    final range =
        feeRanges.firstWhere((range) => range['label'] == selectedRange);

    final minFee = range['min'];
    final maxFee = range['max'];

    filteredCourses.value = allCourses.where((course) {
      final fee = int.tryParse(course.finalfee ?? '0') ?? 0;
      if (maxFee == null) fee >= minFee;

      return fee >= minFee && fee <= maxFee;
    }).toList();
  }

  void postReview(
      {required String courseID, required String courseSlug}) async {
    AddCourseReviewModel addCouseModel = AddCourseReviewModel(
        comment: commentController.text,
        starRating: selectedStarRating.value,
        courseId: courseID,
        courseSlug: courseSlug);
    reviewPostLoading.value = true;
    final data =
        await coursesRepo.addCourseReview(addCouseModel: addCouseModel);
    data.fold((l) {
      commentController.clear();
      selectedStarRating.value = 0;
    }, (r) {
      commentController.clear();
      selectedStarRating.value = 0;
      getAllReviewByCourse(courseSlug: courseSlug, isLoad: true);
      // showGetxSnackabar(
      //     title: 'Success', message: 'Review Added Successfully..!');
    });
    reviewPostLoading.value = false;
  }

  void getAllReviewByCourse(
      {required String courseSlug, bool isLoad = false}) async {
    if (!isLoad &&
        allReviewByCourse.value.data != null &&
        allReviewByCourse.value.data!.isNotEmpty) return;
    reviewLoading.value = true;
    final data =
        await coursesRepo.getAllCourseReviewByCourse(courseName: courseSlug);
    data.fold((l) => null, (r) => allReviewByCourse.value = r);
    reviewLoading.value = false;
  }

  /// Arrow Change In Service screen for Enrollment process
  void changeArrowSorting(String sort) {
    if (sort == 'UNIVERSITY') universityArrow.value = !universityArrow.value;
    if (sort == 'FEE') feeArrow.value = !feeArrow.value;
    if (sort == 'CITY') cityArrow.value = !cityArrow.value;
    if (sort == 'COUNTRY') countryArrow.value = !countryArrow.value;
  }
}
