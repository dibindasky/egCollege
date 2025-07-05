import 'package:dartz/dartz.dart';
import 'package:edu_college/domain/core/failures/failure.dart';
import 'package:edu_college/domain/model/courses/add_course_review_model/add_course_review_model.dart';
import 'package:edu_college/domain/model/courses/getcource_review_bycource/getcource_review_bycource.dart';
import 'package:edu_college/domain/model/courses/get_all_couses/get_all_couses.dart';
import 'package:edu_college/domain/model/success_responce_model/success_responce_model.dart';

abstract class CoursesRepo {
  Future<Either<Failure, List<GetAllCouses>>> getAllCourses();
  Future<Either<Failure, GetcourceReviewBycource>> getAllCourseReviewByCourse(
      {required String courseName});
  Future<Either<Failure, SuccessResponceModel>> addCourseReview(
      {required AddCourseReviewModel addCouseModel});
}
