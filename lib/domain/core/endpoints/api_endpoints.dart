class ApiEndPoints {
  /// base Url
  static String baseUrl = 'https://api.myeduguardian.com';
  static String local = 'https://qv3ck52q-8000.inc1.devtunnels.ms';

  static String businessPlus = 'https://rococo-crisp-432134.netlify.app';

  /// Course
  static String getAllCourses = '/api/course/get-all-courses';
  static String createCourseReview = '/api/course/course-reviews';
  static String getReviewByCourse = '/api/course/course-reviews-by/{course}';
  static String getAllCourseReview = '/api/course/all-course-reviews';

  /// University
  static String getAllUniiversity = '/api/university/all-universities';
  static String createUniversityReview = '/api/university/university-reviews';
  static String getReviewByUniversity =
      '/api/university/university-reviews-by/{university_slug}';
  static String getAllByUniversity = '/api/university/all-university-reviews';
}
