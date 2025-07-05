import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
          body: SingleChildScrollView(
              child: Column(children: [
        // Header/Navigation

        // Hero Section
        _buildHeroSection(),
        // Partner Logos
        _buildPartnerLogos(),
        // Welcome Section
        _buildWelcomeSection(),
        // Categories Section
        _buildCategoriesSection(),
        // Popular Courses
        _buildPopularCoursesSection(),
        // Features Section
        _buildFeaturesSection(),
        // Testimonials
        _buildTestimonialsSection()
      ])));

  Widget _buildHeroSection() => Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
        child: LayoutBuilder(
          builder: (context, constraints) {
            bool isDesktop = constraints.maxWidth > 768;

            return isDesktop ? _buildDesktopHero() : _buildMobileHero();
          },
        ),
      );

  Widget _buildDesktopHero() => Row(
        children: [
          // Left Content
          Expanded(
              flex: 1,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: const Color(0xFFEFF6FF),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text('🎓 #1 Online Learning Platform',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF1E40AF),
                                fontWeight: FontWeight.w500))),
                    kHeight20,
                    const Text('You learn\nbetter when we\nare together',
                        style: TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1F2937),
                            height: 1.2)),
                    kHeight30,
                    const Text(
                      'Build skills with our courses and mentor from world-class companies.',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF6B7280),
                        height: 1.6,
                      ),
                    ),
                    kHeight30,
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF059669),
                          foregroundColor: kWhite,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 32, vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text('Start Learning',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600)))
                  ])),
          const SizedBox(width: 60),
          // Right Image
          Expanded(
              flex: 1,
              child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF3F4F6),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(children: [
                    // Placeholder for hero image
                    Center(
                        child: Container(
                            width: 200,
                            height: 200,
                            decoration: BoxDecoration(
                              color: const Color(0xFFE5E7EB),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: const Icon(Icons.people,
                                size: 80, color: Color(0xFF9CA3AF)))),
                    // Floating elements
                    Positioned(
                        top: 30,
                        right: 30,
                        child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: const Color(0xFF4F46E5),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Icon(Icons.play_arrow, color: kWhite)))
                  ])))
        ],
      );

  Widget _buildMobileHero() {
    return Column(children: [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: const Color(0xFFEFF6FF),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Text(
          '🎓 #1 Online Learning Platform',
          style: TextStyle(
            fontSize: 14,
            color: Color(0xFF1E40AF),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      kHeight20,
      const Text(
        'You learn\nbetter when we\nare together',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: Color(0xFF1F2937),
          height: 1.2,
        ),
      ),
      kHeight15,
      const Text(
        'Build skills with our courses and mentor from world-class companies.',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16,
          color: Color(0xFF6B7280),
          height: 1.6,
        ),
      ),
      kHeight30,
      Container(
        height: 250,
        decoration: BoxDecoration(
          color: const Color(0xFFF3F4F6),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Center(
          child: Icon(
            Icons.people,
            size: 80,
            color: Color(0xFF9CA3AF),
          ),
        ),
      ),
      kHeight20,
      ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF059669),
              foregroundColor: kWhite,
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
          child: const Text('Start Learning',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)))
    ]);
  }

  Widget _buildPartnerLogos() {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(children: [
          const Text(
            'Trusted by 10+ Cities',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF6B7280),
              fontWeight: FontWeight.w500,
            ),
          ),
          kHeight20,
          LayoutBuilder(builder: (context, constraints) {
            return Wrap(
                spacing: 40,
                runSpacing: 20,
                alignment: WrapAlignment.center,
                children: [
                  _buildPartnerLogo('UK'),
                  _buildPartnerLogo('US'),
                  _buildPartnerLogo('Singapore'),
                  _buildPartnerLogo('UAE')
                ]);
          })
        ]));
  }

  Widget _buildPartnerLogo(String name) {
    return Container(
        width: 120,
        height: 60,
        decoration: BoxDecoration(
          color: const Color(0xFFF9FAFB),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xFFE5E7EB)),
        ),
        child: Center(
            child: Text(name,
                style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF6B7280),
                    fontWeight: FontWeight.w500))));
  }

  Widget _buildWelcomeSection() {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
        child: LayoutBuilder(builder: (context, constraints) {
          bool isDesktop = constraints.maxWidth > 768;

          return isDesktop
              ? Row(children: [
                  Expanded(
                      child: Container(
                          height: 300,
                          decoration: BoxDecoration(
                            color: const Color(0xFF06B6D4),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Stack(children: [
                            const Center(
                              child: Icon(
                                Icons.computer,
                                size: 80,
                                color: kWhite,
                              ),
                            ),
                            Positioned(
                                top: 20,
                                right: 20,
                                child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: kWhite.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: const Icon(Icons.analytics,
                                        color: kWhite)))
                          ]))),
                  kWidth30,
                  Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        const Text(
                          'Welcome to Besnik\ne-Learning Centre',
                          style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1F2937),
                              height: 1.2),
                        ),
                        kHeight30,
                        // const Text(
                        //   'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                        //   style: TextStyle(
                        //     fontSize: 16,
                        //     color: Color(0xFF6B7280),
                        //     height: 1.6,
                        //   ),
                        // ),
                        kHeight20,
                        TextButton(
                            onPressed: () {},
                            child: const Text('Learn More →',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF4F46E5),
                                  fontWeight: FontWeight.w600,
                                )))
                      ]))
                ])
              : Column(children: [
                  Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: const Color(0xFF06B6D4),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                          child:
                              Icon(Icons.computer, size: 60, color: kWhite))),
                  kHeight30,
                  const Text(
                    'Welcome to Besnik\ne-Learning Centre',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1F2937),
                      height: 1.2,
                    ),
                  ),
                  kHeight15,
                  // const Text(
                  //   'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                  //   textAlign: TextAlign.center,
                  //   style: TextStyle(
                  //     fontSize: 16,
                  //     color: Color(0xFF6B7280),
                  //     height: 1.6,
                  //   ),
                  // ),
                  kHeight20,
                  TextButton(
                      onPressed: () {},
                      child: const Text('Learn More →',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF4F46E5),
                              fontWeight: FontWeight.w600)))
                ]);
        }));
  }

  Widget _buildCategoriesSection() {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
        child: Column(children: [
          const Text(
            'Our Top Categories',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1F2937),
            ),
          ),
          kHeight40,
          LayoutBuilder(builder: (context, constraints) {
            bool isDesktop = constraints.maxWidth > 768;

            return isDesktop
                ? Row(
                    children: [
                      Expanded(
                          child: _buildCategoryCard('Design', Icons.palette,
                              const Color(0xFF8B5CF6))),
                      const SizedBox(width: 20),
                      Expanded(
                          child: _buildCategoryCard('Development', Icons.code,
                              const Color(0xFF06B6D4))),
                      const SizedBox(width: 20),
                      Expanded(
                          child: _buildCategoryCard('Marketing',
                              Icons.trending_up, const Color(0xFF10B981))),
                      const SizedBox(width: 20),
                      Expanded(
                          child: _buildCategoryCard('Business',
                              Icons.business_center, const Color(0xFFF59E0B))),
                    ],
                  )
                : GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    children: [
                        _buildCategoryCard(
                            'Design', Icons.palette, const Color(0xFF8B5CF6)),
                        _buildCategoryCard(
                            'Development', Icons.code, const Color(0xFF06B6D4)),
                        _buildCategoryCard('Marketing', Icons.trending_up,
                            const Color(0xFF10B981)),
                        _buildCategoryCard('Business', Icons.business_center,
                            const Color(0xFFF59E0B))
                      ]);
          })
        ]));
  }

  Widget _buildCategoryCard(String title, IconData icon, Color color) {
    return Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xFFE5E7EB)),
        ),
        child: Column(children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Icon(icon, color: color, size: 30),
          ),
          kHeight15,
          Text(title,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF1F2937)))
        ]));
  }

  Widget _buildPopularCoursesSection() {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text(
              'Most Popular Course',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1F2937),
              ),
            ),
            TextButton(
                onPressed: () {},
                child: const Text('View All →',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF4F46E5),
                        fontWeight: FontWeight.w600)))
          ]),
          kHeight40,
          LayoutBuilder(builder: (context, constraints) {
            bool isDesktop = constraints.maxWidth > 768;

            return isDesktop
                ? Row(
                    children: [
                      Expanded(
                          child: _buildCourseCard(
                              'UI/UX Design', 'John Doe', 4.8, 120)),
                      const SizedBox(width: 20),
                      Expanded(
                          child: _buildCourseCard(
                              'Web Development', 'Jane Smith', 4.9, 98)),
                      const SizedBox(width: 20),
                      Expanded(
                          child: _buildCourseCard(
                              'Digital Marketing', 'Bob Johnson', 4.7, 85)),
                    ],
                  )
                : Column(children: [
                    _buildCourseCard('UI/UX Design', 'John Doe', 4.8, 120),
                    kHeight15,
                    _buildCourseCard('Web Development', 'Jane Smith', 4.9, 98),
                    kHeight15,
                    _buildCourseCard(
                        'Digital Marketing', 'Bob Johnson', 4.7, 85)
                  ]);
          })
        ]));
  }

  Widget _buildCourseCard(
      String title, String instructor, double rating, int students) {
    return Container(
        decoration: BoxDecoration(
            color: kWhite,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 4))
            ]),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              height: 180,
              decoration: const BoxDecoration(
                color: Color(0xFFF3F4F6),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
              ),
              child: const Center(
                  child: Icon(Icons.play_circle_fill,
                      size: 60, color: Color(0xFF9CA3AF)))),
          Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF1F2937),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'by $instructor',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xFF6B7280),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(children: [
                      const Icon(Icons.star,
                          color: Color(0xFFF59E0B), size: 16),
                      const SizedBox(width: 4),
                      Text(
                        '$rating',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF1F2937),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Text('($students)',
                          style: const TextStyle(
                              fontSize: 14, color: Color(0xFF6B7280)))
                    ])
                  ]))
        ]));
  }

  Widget _buildFeaturesSection() {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
        child: LayoutBuilder(builder: (context, constraints) {
          bool isDesktop = constraints.maxWidth > 768;

          return isDesktop
              ? Row(children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Welcome to eduGuardian\ne-Learning Centre',
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1F2937),
                            height: 1.2,
                          ),
                        ),
                        kHeight30,
                        _buildFeatureItem('Interactive Learning',
                            'Engage with interactive content and quizzes'),
                        kHeight30,
                        _buildFeatureItem('Expert Instructors',
                            'Learn from industry experts and professionals'),
                        kHeight30,
                        _buildFeatureItem('Flexible Schedule',
                            'Study at your own pace and convenience'),
                      ],
                    ),
                  ),
                  const SizedBox(width: 60),
                  Expanded(
                      child: Container(
                          height: 400,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF59E0B),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(
                              child: Icon(Icons.laptop,
                                  size: 100, color: kWhite))))
                ])
              : Column(children: [
                  const Text(
                    'Welcome to Besnik\ne-Learning Centre',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1F2937),
                      height: 1.2,
                    ),
                  ),
                  kHeight30,
                  Container(
                    height: 250,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF59E0B),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.laptop,
                        size: 80,
                        color: kWhite,
                      ),
                    ),
                  ),
                  kHeight30,
                  _buildFeatureItem('Interactive Learning',
                      'Engage with interactive content and quizzes'),
                  kHeight30,
                  _buildFeatureItem('Expert Instructors',
                      'Learn from industry experts and professionals'),
                  kHeight30,
                  _buildFeatureItem('Flexible Schedule',
                      'Study at your own pace and convenience')
                ]);
        }));
  }

  Widget _buildFeatureItem(String title, String description) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          color: const Color(0xFF10B981),
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Icon(Icons.check, color: kWhite, size: 16),
      ),
      const SizedBox(width: 16),
      Expanded(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFF1F2937),
          ),
        ),
        const SizedBox(height: 4),
        Text(description,
            style: const TextStyle(
                fontSize: 14, color: Color(0xFF6B7280), height: 1.4))
      ]))
    ]);
  }

  Widget _buildTestimonialsSection() {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
        child: Column(children: [
          const Text('Our Trusted Students',
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1F2937))),
          kHeight15,
          const Text('What our students say about us',
              style: TextStyle(fontSize: 16, color: Color(0xFF6B7280))),
          kHeight40,
          LayoutBuilder(builder: (context, constraints) {
            bool isDesktop = constraints.maxWidth > 768;
            return isDesktop
                ? Row(children: [
                    Expanded(
                        child: Container(
                            padding: const EdgeInsets.all(24),
                            decoration: BoxDecoration(
                                color: kWhite,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.05),
                                      blurRadius: 10,
                                      offset: const Offset(0, 4))
                                ]),
                            child: Column(children: [
                              const Text(
                                  '"This platform has completely transformed my learning experience. The courses are well-structured and the instructors are amazing!"',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF1F2937),
                                      height: 1.6)),
                              kHeight30,
                              ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: students.length,
                                  itemBuilder: (context, index) {
                                    final student = students[index];
                                    return Row(children: [
                                      const CircleAvatar(
                                        radius: 25,
                                        backgroundColor: Color(0xFF4F46E5),
                                        child:
                                            Icon(Icons.person, color: kWhite),
                                      ),
                                      const SizedBox(width: 12),
                                      Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              student['name'] ?? '',
                                              style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFF1F2937),
                                              ),
                                            ),
                                            Text(student['profession'] ?? '',
                                                style: const TextStyle(
                                                    fontSize: 14,
                                                    color: Color(0xFF6B7280)))
                                          ])
                                    ]);
                                  })
                            ])))
                  ])
                : kEmpty;
          })
        ]));
  }
}

final List<Map<String, String>> students = [
  {'name': 'Sarah Johnson', 'profession': 'MBA Graduate'},
  {'name': 'Michael Smith', 'profession': 'Software Engineer'},
  {'name': 'Emily Davis', 'profession': 'Graphic Designer'},
  {'name': 'Daniel Brown', 'profession': 'Data Analyst'},
  {'name': 'Sophia Wilson', 'profession': 'Marketing Specialist'},
  {'name': 'James Taylor', 'profession': 'Project Manager'},
  {'name': 'Olivia Martinez', 'profession': 'Business Consultant'},
  {'name': 'William Anderson', 'profession': 'Financial Advisor'},
  {'name': 'Ava Thomas', 'profession': 'Human Resources'},
  {'name': 'Benjamin Jackson', 'profession': 'UX/UI Designer'},
];
