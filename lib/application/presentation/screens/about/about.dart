import 'dart:io';

import 'package:edu_college/application/presentation/screens/about/universityof_bolton.dart';
import 'package:edu_college/application/presentation/screens/home/widgets/app_bar.dart';
import 'package:edu_college/application/presentation/screens/home/widgets/footer.dart';
import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:edu_college/application/presentation/widgets/background_image_hover.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
          body: SingleChildScrollView(
              child: Column(
        children: [
          const AboutEduguardian(),
          const UniversityOfBolton(),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: [
                const AdventureLandingPage(), // Hero Section
                // _buildHeroSection(),
                // Partner Logos
                _buildPartnerLogos(),
                // Welcome Section
                //_buildWelcomeSection(),

                // Features Section
                //  _buildFeaturesSection()
              ])),
          const CompanyFooterSection()
        ],
      )));

  // Widget _buildHeroSection() => Container(
  //     padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
  //     child: LayoutBuilder(builder: (context, constraints) {
  //       bool isDesktop = constraints.maxWidth > 768;
  //       return isDesktop
  //           ? _buildDesktopHero(context)
  //           : _buildMobileHero(context);
  //     }));

  // Widget _buildDesktopHero(BuildContext context) => Row(
  //       children: [
  //         // Left Content
  //         Expanded(
  //             flex: 1,
  //             child: Column(
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: [
  //                   kHeight20,
  //                   const Text('You learn\nbetter when we\nare together',
  //                       style: TextStyle(
  //                           fontSize: 48,
  //                           fontWeight: FontWeight.bold,
  //                           color: Color(0xFF1F2937),
  //                           height: 1.2)),
  //                   kHeight30,
  //                   const Text(
  //                     'Build skills with our courses and mentor from world-class companies.',
  //                     style: TextStyle(
  //                       fontSize: 18,
  //                       color: Color(0xFF6B7280),
  //                       height: 1.6,
  //                     ),
  //                   ),
  //                   kHeight30,
  //                   ElevatedButton(
  //                       onPressed: () {
  //                         showDialog(
  //                             context: context,
  //                             builder: (context) => const ImageUploadDialog());
  //                       },
  //                       style: ElevatedButton.styleFrom(
  //                         backgroundColor: kPurple,
  //                         foregroundColor: kWhite,
  //                         padding: const EdgeInsets.symmetric(
  //                             horizontal: 32, vertical: 16),
  //                         shape: RoundedRectangleBorder(
  //                           borderRadius: BorderRadius.circular(8),
  //                         ),
  //                       ),
  //                       child: const Text('Start Learning',
  //                           style: TextStyle(
  //                               fontSize: 16, fontWeight: FontWeight.w600)))
  //                 ])),
  //         const SizedBox(width: 60),
  //         // Right Image
  //         Expanded(
  //             flex: 1,
  //             child: Container(
  //                 height: 400,
  //                 decoration: BoxDecoration(
  //                   color: const Color(0xFFF3F4F6),
  //                   borderRadius: BorderRadius.circular(20),
  //                 ),
  //                 child: Stack(children: [
  //                   // Placeholder for hero image
  //                   BackgroundImage(
  //                       image: aboutUsImage1,
  //                       isHovered: false,
  //                       isNetWorkImage: false),
  //                   // Floating elements
  //                   Positioned(
  //                       top: 30,
  //                       right: 30,
  //                       child: Container(
  //                           width: 60,
  //                           height: 60,
  //                           decoration: BoxDecoration(
  //                             color: kPurple,
  //                             borderRadius: BorderRadius.circular(30),
  //                           ),
  //                           child: const Icon(Icons.play_arrow, color: kWhite)))
  //                 ])))
  //       ],
  //     );

  // Widget _buildMobileHero(BuildContext context) {
  //   return Column(children: [
  //     // Container(
  //     //   padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
  //     //   decoration: BoxDecoration(
  //     //     color: const Color(0xFFEFF6FF),
  //     //     borderRadius: BorderRadius.circular(20),
  //     //   ),
  //     //   child: const Text(
  //     //     '🎓 #1 Online Learning Platform',
  //     //     style: TextStyle(
  //     //       fontSize: 14,
  //     //       color: kPurple,
  //     //       fontWeight: FontWeight.w500,
  //     //     ),
  //     //   ),
  //     // ),
  //     // kHeight20,
  //     const Text(
  //       'You learn\nbetter when we\nare together',
  //       textAlign: TextAlign.center,
  //       style: TextStyle(
  //         fontSize: 32,
  //         fontWeight: FontWeight.bold,
  //         color: Color(0xFF1F2937),
  //         height: 1.2,
  //       ),
  //     ),
  //     kHeight15,
  //     const Text(
  //       'Build skills with our courses and mentor from world-class companies.',
  //       textAlign: TextAlign.center,
  //       style: TextStyle(
  //         fontSize: 16,
  //         color: Color(0xFF6B7280),
  //         height: 1.6,
  //       ),
  //     ),
  //     kHeight30,
  //     Container(
  //       height: 250,
  //       decoration: BoxDecoration(
  //         color: const Color(0xFFF3F4F6),
  //         borderRadius: BorderRadius.circular(20),
  //       ),
  //       child: const Center(
  //         child: Icon(
  //           Icons.people,
  //           size: 80,
  //           color: kPurple,
  //         ),
  //       ),
  //     ),
  //     kHeight20,
  //     ElevatedButton(
  //         onPressed: () {
  //           showDialog(
  //               context: context,
  //               builder: (context) => const ImageUploadDialog());
  //         },
  //         style: ElevatedButton.styleFrom(
  //             backgroundColor: kPurple,
  //             foregroundColor: kWhite,
  //             padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
  //             shape: RoundedRectangleBorder(
  //                 borderRadius: BorderRadius.circular(8))),
  //         child: const Text('Start Learning',
  //             style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)))
  //   ]);
  // }

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
                      flex: 2,
                      child: Container(
                          height: 300,
                          decoration: BoxDecoration(
                            color: const Color(0xFF06B6D4),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Stack(children: [
                            BackgroundImage(
                                image: aboutUsImage2,
                                isHovered: false,
                                isNetWorkImage: false),
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
                  kWidth50,
                  Expanded(
                      flex: 3,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Welcome to eduGuardian\ne-Learning Centre',
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
                                      color: kGreen,
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
                  const Text('Welcome to eduGuardian\ne-Learning Centre',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1F2937),
                          height: 1.2)),
                  kHeight20,
                  TextButton(
                      onPressed: () {},
                      child: const Text('Learn More →',
                          style: TextStyle(
                              fontSize: 16,
                              color: kGreen,
                              fontWeight: FontWeight.w600)))
                ]);
        }));
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
              color: kGreen.withOpacity(0.1),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Icon(icon, color: kGreen, size: 30),
          ),
          kHeight15,
          Text(title,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF1F2937)))
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
                            color: kGreen,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(
                              child: Icon(Icons.laptop,
                                  size: 100, color: kWhite))))
                ])
              : Column(children: [
                  const Text(
                    'Welcome to eduGuardian\ne-Learning Centre',
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
                      color: kGreen,
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
          color: kGreen,
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

class ImageUploadDialog extends StatefulWidget {
  const ImageUploadDialog({super.key});

  @override
  State<ImageUploadDialog> createState() => _ImageUploadDialogState();
}

class _ImageUploadDialogState extends State<ImageUploadDialog> {
  File? _selectedImage;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    try {
      final XFile? image = await _picker.pickImage(
        source: ImageSource.gallery,
        maxWidth: 1920,
        maxHeight: 1080,
        imageQuality: 85,
      );

      if (image != null) {
        final file = File(image.path);
        final fileSize = await file.length();

        // Check if file size is less than 1MB (1048576 bytes)
        if (fileSize > 1048576) {
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Image size must be less than 1MB'),
                backgroundColor: Colors.red,
              ),
            );
          }
          return;
        }

        setState(() {
          _selectedImage = file;
        });
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error picking image: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  void _clearImage() {
    setState(() {
      _selectedImage = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        width: 400,
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.person_add,
                  color: Colors.grey,
                  size: 20,
                ),
              ),
              const SizedBox(width: 16),
              const Text(
                'New User',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const Spacer(),
              Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () => Navigator.of(context).pop(),
                      icon: const Icon(Icons.close,
                          size: 18, color: Colors.grey)))
            ]),

            const SizedBox(height: 32),

            // Upload Section
            const Text(
              'Upload an image',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),

            const SizedBox(height: 16),

            // File Selection Area
            Container(
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.grey.shade50,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: _selectedImage != null
                  ? Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.file(
                            _selectedImage!,
                            width: double.infinity,
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: 8,
                          right: 8,
                          child: GestureDetector(
                            onTap: _clearImage,
                            child: Container(
                              width: 24,
                              height: 24,
                              decoration: const BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.close,
                                color: Colors.white,
                                size: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: _pickImage,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black87,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: BorderSide(color: Colors.grey.shade300),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 12,
                            ),
                          ),
                          child: const Text(
                            'Choose File',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'No file chosen',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
            ),

            const SizedBox(height: 12),

            // File size limit text
            Text(
              '* Maximum upload 1mb',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey.shade600,
              ),
            ),

            const SizedBox(height: 32),

            // Action Buttons
            Row(
              children: [
                // Clear Button
                Expanded(
                  child: OutlinedButton(
                    onPressed: _clearImage,
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.red,
                      side: const BorderSide(color: Colors.red),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    child: const Text(
                      'Clear',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 12),

                // Cancel Button
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.black87,
                      side: BorderSide(color: Colors.grey.shade300),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    child: const Text(
                      'Cancel',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 12),

                // Confirm Button
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      if (_selectedImage != null) {
                        Navigator.of(context).pop(_selectedImage);
                      } else {
                        Navigator.of(context).pop();
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    child: const Text(
                      'Confirm',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Usage example - Call this function to show the dialog
Future<File?> showImageUploadDialog(BuildContext context) async {
  return await showDialog<File?>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return const ImageUploadDialog();
    },
  );
}

class AboutEduguardian extends StatelessWidget {
  const AboutEduguardian({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AppHeader(),
        // Add some top spacing
        SizedBox(height: 60),
        // Main branding section
        BrandingSection(),
        // Add some bottom spacing
        SizedBox(height: 60),
      ],
    );
  }
}

class BrandingSection extends StatelessWidget {
  const BrandingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          // Curved background
          CustomPaint(
            size: const Size(double.infinity, 600),
            painter: CurvedBackgroundPainter(),
          ),
          // Content
          Center(
            child: Column(
              children: [
                // Title
                const Text(
                  "eduGuardian",
                  style: TextStyle(
                    fontSize: 56,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    letterSpacing: -1,
                  ),
                ),
                kHeight40,
                // Decorative line
                Container(
                  width: 120,
                  height: 3,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                const SizedBox(height: 40),
                // Description
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 600),
                  child: Text(
                    "eduGuardian is a leading education platform offering career-focused academic programs and internationally recognized qualifications. We provide students with the opportunity to complete their diploma and degree studies with us in the UAE and in Singapore, through flexible and industry-relevant learning options. Our programs are designed to meet the needs of today’s learners — combining academic excellence, real-world skills, and progression routes to higher education. From academic studies to full degree completion, eduGuardian supports your entire journey with personalized guidance, modern classrooms, and a strong focus on your career success. Begin your future with eduGuardian — your gateway to quality education and global opportunities.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[600],
                      height: 1.6,
                      letterSpacing: 0.3,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                // Buttons
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final bool isOutlined;
  final VoidCallback onPressed;
  final bool fullWidth;

  const CustomButton({
    super.key,
    required this.text,
    required this.isOutlined,
    required this.onPressed,
    this.fullWidth = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: fullWidth ? double.infinity : 180,
        height: 55,
        child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  isOutlined ? Colors.transparent : const Color(0xFF4A5FE7),
              foregroundColor: isOutlined ? Colors.black : Colors.white,
              elevation: isOutlined ? 0 : 3,
              side: isOutlined
                  ? BorderSide(
                      color: Colors.grey[400]!,
                      width: 1.5,
                    )
                  : null,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              shadowColor: isOutlined
                  ? Colors.transparent
                  : Colors.black.withOpacity(0.1),
            ),
            child: Text(text,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.5))));
  }
}

class CurvedBackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFFF5F5F5)
      ..style = PaintingStyle.fill;

    final path = Path();

    // Start from top left
    path.moveTo(0, 0);

    // Top edge with slight curve
    path.quadraticBezierTo(
      size.width * 0.5,
      40,
      size.width,
      0,
    );

    // Right edge
    path.lineTo(size.width, size.height * 0.85);

    // Bottom curve
    path.quadraticBezierTo(
      size.width * 0.7,
      size.height * 0.95,
      size.width * 0.3,
      size.height * 0.85,
    );

    path.quadraticBezierTo(
      size.width * 0.1,
      size.height * 0.8,
      0,
      size.height * 0.75,
    );

    // Left edge back to start
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);

    // Add subtle decorative circles
    final circlePaint = Paint()
      ..color = Colors.white.withOpacity(0.3)
      ..style = PaintingStyle.fill;

    // Large circle on the left
    canvas.drawCircle(
      Offset(-50, size.height * 0.3),
      120,
      circlePaint,
    );

    // Medium circle on the right
    canvas.drawCircle(
      Offset(size.width + 30, size.height * 0.6),
      80,
      circlePaint,
    );

    // Small circle at bottom
    canvas.drawCircle(
      Offset(size.width * 0.8, size.height * 0.9),
      50,
      circlePaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class AdventureLandingPage extends StatelessWidget {
  const AdventureLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 700,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFFE8F4F8), Color(0xFFF0F8FF)])),
        child: Stack(children: [
          // Background layers with botanical elements
          Positioned(
              right: 0,
              top: 30,
              child: Image.asset('assets/images/classImage1.jpeg')),
          Positioned(
              right: 0,
              bottom: 30,
              child: SizedBox(
                width: 400,
                height: 300,
                child: Image.asset('assets/images/classImage2.jpeg'),
              )),

          // Middle gradient layer
          Positioned(
              right: 500,
              bottom: 30,
              child: SizedBox(
                  width: 400,
                  height: 300,
                  child: Image.asset('assets/images/classImage3.jpeg'))),

          // Front gradient layer
          Positioned(
              right: 500,
              top: 30,
              child: SizedBox(
                  width: 400,
                  height: 300,
                  child: Image.asset('assets/images/classImage4.jpeg'))),

          // Main content
          Positioned(
              left: 40,
              top: 100,
              child: Container(
                  width: 400,
                  padding: const EdgeInsets.all(40),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 20,
                            offset: const Offset(0, 10))
                      ]),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        kHeight60,
                        // Logo/Icon
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: kGreen,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            Icons.explore,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),

                        const SizedBox(height: 30),

                        // Main heading
                        const Text(
                          'Classroom Images',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w300,
                            color: Color(0xFF2E7D32),
                            letterSpacing: 1.2,
                          ),
                        ),
                        const Text(
                          'ADVENTURES',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2E7D32),
                            letterSpacing: 1.2,
                          ),
                        ),

                        kHeight40,

                        // // Description
                        const Text(
                          'Join Our Quest',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        // const SizedBox(height: 10),

                        // Text(
                        //   'Discover breathtaking destinations, create unforgettable memories, and embrace the journey that awaits you.',
                        //   style: TextStyle(
                        //     fontSize: 14,
                        //     color: Colors.grey[600],
                        //     height: 1.5,
                        //   ),
                        // ),

                        // const SizedBox(height: 30),

                        // // CTA Button
                        // ElevatedButton(
                        //   onPressed: () {
                        //     // Handle button press
                        //   },
                        //   style: ElevatedButton.styleFrom(
                        //     backgroundColor: kGreen,
                        //     foregroundColor: Colors.white,
                        //     padding: const EdgeInsets.symmetric(
                        //       horizontal: 30,
                        //       vertical: 15,
                        //     ),
                        //     shape: RoundedRectangleBorder(
                        //       borderRadius: BorderRadius.circular(25),
                        //     ),
                        //     elevation: 3,
                        //   ),
                        //   child: const Text(
                        //     'START YOUR JOURNEY',
                        //     style: TextStyle(
                        //       fontSize: 14,
                        //       fontWeight: FontWeight.w600,
                        //       letterSpacing: 0.5,
                        //     ),
                        //   ),
                        // ),

                        kHeight40,

                        // Social proof dots
                        Row(
                            children: List.generate(
                                5,
                                (index) => Container(
                                    width: 8,
                                    height: 8,
                                    margin: const EdgeInsets.only(right: 8),
                                    decoration: BoxDecoration(
                                      color:
                                          index < 3 ? kGreen : Colors.grey[300],
                                      shape: BoxShape.circle,
                                    )))),
                        kHeight60
                      ])))
        ]));
  }
}

class BotanicalPainter extends CustomPainter {
  final List<Color> colors;
  final int leafCount;

  BotanicalPainter({required this.colors, required this.leafCount});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 2;

    // Draw various botanical elements
    for (int i = 0; i < leafCount; i++) {
      final centerX = (size.width * 0.2) + (i * size.width * 0.1);
      final centerY = (size.height * 0.2) + (i * size.height * 0.08);

      // Rotate each leaf
      canvas.save();
      canvas.translate(centerX, centerY);
      canvas.rotate((i * 0.5) + (i * 0.3));

      // Draw leaf shape
      paint.color = colors[i % colors.length].withOpacity(0.7);
      final leafPath = Path();
      leafPath.moveTo(0, 0);
      leafPath.quadraticBezierTo(15, -10, 30, 0);
      leafPath.quadraticBezierTo(15, 10, 0, 0);
      canvas.drawPath(leafPath, paint);

      // Draw stem
      paint.color = colors[(i + 1) % colors.length].withOpacity(0.5);
      canvas.drawLine(
        const Offset(0, 0),
        const Offset(-10, 15),
        paint..strokeWidth = 2,
      );

      canvas.restore();
    }

    // Draw floating particles
    for (int i = 0; i < 20; i++) {
      final x = (size.width * 0.1) + (i * size.width * 0.04);
      final y = (size.height * 0.1) + (i * size.height * 0.05);

      paint.color = colors[i % colors.length].withOpacity(0.3);
      canvas.drawCircle(Offset(x, y), 2 + (i % 3), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
