import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:edu_college/data/service/api_service.dart';
import 'package:edu_college/domain/core/endpoints/api_endpoints.dart';
import 'package:edu_college/domain/core/failures/failure.dart';
import 'package:edu_college/domain/model/courses/add_course_review_model/add_course_review_model.dart';
import 'package:edu_college/domain/model/courses/getcource_review_bycource/getcource_review_bycource.dart';
import 'package:edu_college/domain/model/courses/get_all_couses/get_all_couses.dart';
import 'package:edu_college/domain/model/success_responce_model/success_responce_model.dart';
import 'package:edu_college/domain/repo/courses.dart';

class CourseService implements CoursesRepo {
  final ApiService apiService = ApiService();
  @override
  Future<Either<Failure, List<GetAllCouses>>> getAllCourses() async {
    try {
      final responce = await apiService.get(ApiEndPoints.getAllCourses);
      log('Success getAllCourses');
      return Right((responce.data as List<dynamic>?)
              ?.map((e) => GetAllCouses.fromJson(e as Map<String, dynamic>))
              .toList() ??
          []);
    } on DioException catch (e) {
      log('DioException getAllCourses $e');
      return Left(Failure(
          message: (e.response?.data as Map<String, dynamic>?)?['message'] ??
              errorMessage));
    } catch (e) {
      log('catch getAllCourses $e');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, SuccessResponceModel>> addCourseReview(
      {required AddCourseReviewModel addCouseModel}) async {
    try {
      final responce = await apiService.post(ApiEndPoints.createCourseReview,
          data: addCouseModel.toJson());
      log('Success addCourseReview');
      return Right(SuccessResponceModel.fromJson(responce.data));
    } on DioException catch (e) {
      log('DioException addCourseReview $e');
      return Left(Failure(
          message: (e.response?.data as Map<String, dynamic>?)?['message'] ??
              errorMessage));
    } catch (e) {
      log('catch addCourseReview $e');
      return Left(Failure(message: e.toString()));
    }
  }

  // @override
  // Future<Either<Failure, List<GetAllCourseReview>>> getAllCourseReview() async {
  //   try {
  //     final responce = await apiService.get(ApiEndPoints.getAllCourseReview);
  //     log('Success getAllCourseReview');
  //     return Right((responce.data as List<dynamic>?)
  //             ?.map(
  //                 (e) => GetAllCourseReview.fromJson(e as Map<String, dynamic>))
  //             .toList() ??
  //         []);
  //   } on DioException catch (e) {
  //     log('DioException getAllCourseReview $e');
  //     return Left(Failure(message:(e.response?.data as Map<String, dynamic>?)?['message'] ??
  //     errorMessage));
  //   } catch (e) {
  //     log('catch getAllCourseReview $e');
  //     return Left(Failure(message: e.toString()));
  //   }
  // }

  @override
  Future<Either<Failure, GetcourceReviewBycource>> getAllCourseReviewByCourse(
      {required String courseName}) async {
    try {
      final responce = await apiService.get(
          ApiEndPoints.getReviewByCourse.replaceFirst('{course}', courseName));
      log('Success getAllCourseReviewByCourse');
      return Right(GetcourceReviewBycource.fromJson(responce.data));
    } on DioException catch (e) {
      log('DioException getAllCourseReviewByCourse $e');
      return Left(Failure(
          message: (e.response?.data as Map<String, dynamic>?)?['message'] ??
              errorMessage));
    } catch (e) {
      log('catch getAllCourseReviewByCourse $e');
      return Left(Failure(message: e.toString()));
    }
  }
}
