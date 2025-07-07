import 'package:edu_college/application/presentation/screens/home/widgets/app_bar.dart';
import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:flutter/material.dart';

class ContactFormScreen extends StatefulWidget {
  const ContactFormScreen({super.key});

  @override
  _ContactFormScreenState createState() => _ContactFormScreenState();
}

class _ContactFormScreenState extends State<ContactFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final _fullNameController = TextEditingController();
  final _companyController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _subjectController = TextEditingController();
  final _messageController = TextEditingController();

  @override
  void dispose() {
    _fullNameController.dispose();
    _companyController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _subjectController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(builder: (context, constraints) {
      bool isDesktop = constraints.maxWidth > 768;
      return SingleChildScrollView(
        child: Column(
          children: [
            const AppHeader(),
            isDesktop
                ? Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: isDesktop ? 40 : 20,
                      vertical: isDesktop ? 40 : 20,
                    ),
                    child: _buildDesktopLayout(),
                  )
                : Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: isDesktop ? 40 : 20,
                      vertical: isDesktop ? 40 : 20,
                    ),
                    child: _buildMobileLayout(),
                  ),
          ],
        ),
      );
    }));
  }

  Widget _buildDesktopLayout() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Left side - Contact Info
        Expanded(
            flex: 2,
            child: Padding(
                padding: const EdgeInsets.only(right: 40, top: 40),
                child: _buildContactInfo())),
        // Right side - Form
        Expanded(flex: 3, child: _buildFormCard())
      ],
    );
  }

  Widget _buildMobileLayout() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      _buildContactInfo(),
      const SizedBox(height: 30),
      _buildFormCard()
    ]);
  }

  Widget _buildContactInfo() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text(
        'Contact Us',
        style: TextStyle(
          fontSize: 48,
          fontWeight: FontWeight.bold,
          color: kBlack,
          height: 1.1,
        ),
      ),
      const SizedBox(height: 20),
      Text(
        'Have questions or need guidance? Our team at eduGuardian is here to support you every step of the way — from choosing the right program to enrollment, visa assistance, and beyond. Whether you\'re a student, parent, or recruitment partner, feel free to reach out to us for quick, reliable, and friendly support. We’d love to hear from you!',
        style: TextStyle(
            fontSize: 16, color: kBlack.withOpacity(0.9), height: 1.5),
      ),
      const SizedBox(height: 40),
      _buildContactItem(
          icon: Icons.email_outlined, text: 'admission@myeduguardian.com'),
      const SizedBox(height: 16),
      _buildContactItem(icon: Icons.phone_outlined, text: '+971568849699')
    ]);
  }

  Widget _buildContactItem({required IconData icon, required String text}) =>
      Row(children: [
        Icon(
          icon,
          color: kBlack,
          size: 20,
        ),
        const SizedBox(width: 12),
        Text(text,
            style: TextStyle(color: kBlack.withOpacity(0.9), fontSize: 16))
      ]);

  Widget _buildFormCard() {
    return Container(
        decoration: BoxDecoration(
            color: kWhite,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 20,
                  offset: const Offset(0, 10))
            ]),
        child: Padding(
            padding: const EdgeInsets.all(32),
            child: Form(
                key: _formKey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Decorative circles
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1),
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                              width: 150,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(eduGuardianLogoWithText,
                                  fit: BoxFit.contain)),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'We\'d love to hear from you!',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1F2937),
                        ),
                      ),
                      const Text(
                        'Let\'s get in touch',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF6B7280),
                        ),
                      ),
                      const SizedBox(height: 32),

                      // Form fields
                      LayoutBuilder(builder: (context, constraints) {
                        bool isWideForm = constraints.maxWidth > 500;

                        return Column(children: [
                          if (isWideForm) ...[
                            Row(
                              children: [
                                Expanded(
                                  child: _buildTextField(
                                    controller: _fullNameController,
                                    label: 'Full Name',
                                    hintText: 'Enter your full name',
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: _buildTextField(
                                    controller: _companyController,
                                    label: 'Company',
                                    hintText: 'Enter company name',
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                Expanded(
                                  child: _buildTextField(
                                    controller: _emailController,
                                    label: 'Email',
                                    hintText: 'example@email.com',
                                    keyboardType: TextInputType.emailAddress,
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: _buildTextField(
                                    controller: _phoneController,
                                    label: 'Phone number',
                                    hintText: 'US +1 (555) 000-0000',
                                    keyboardType: TextInputType.phone,
                                  ),
                                ),
                              ],
                            ),
                          ] else ...[
                            _buildTextField(
                              controller: _fullNameController,
                              label: 'Full Name',
                              hintText: 'Enter your full name',
                            ),
                            const SizedBox(height: 20),
                            _buildTextField(
                              controller: _companyController,
                              label: 'Company',
                              hintText: 'Enter company name',
                            ),
                            const SizedBox(height: 20),
                            _buildTextField(
                              controller: _emailController,
                              label: 'Email',
                              hintText: 'example@email.com',
                              keyboardType: TextInputType.emailAddress,
                            ),
                            const SizedBox(height: 20),
                            _buildTextField(
                              controller: _phoneController,
                              label: 'Phone number',
                              hintText: 'US +1 (555) 000-0000',
                              keyboardType: TextInputType.phone,
                            ),
                          ],

                          const SizedBox(height: 20),
                          _buildTextField(
                            controller: _subjectController,
                            label: 'Subject',
                            hintText: 'Enter subject',
                          ),
                          const SizedBox(height: 20),
                          _buildTextField(
                            controller: _messageController,
                            label: 'Your Message',
                            hintText: 'Type your message here...',
                            maxLines: 5,
                          ),
                          const SizedBox(height: 32),

                          // Submit button
                          SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                  onPressed: _submitForm,
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF6B46C1),
                                    foregroundColor: kWhite,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    elevation: 0,
                                  ),
                                  child: const Text('Send Message',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600))))
                        ]);
                      })
                    ]))));
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required String hintText,
    TextInputType keyboardType = TextInputType.text,
    int maxLines = 1,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
              fontSize: 14, fontWeight: FontWeight.w500, color: kPurple),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          maxLines: maxLines,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Color(0xFF9CA3AF),
              fontSize: 14,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Color(0xFFD1D5DB)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Color(0xFFD1D5DB)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Color(0xFF6B46C1), width: 2),
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: maxLines > 1 ? 16 : 12,
            ),
            filled: true,
            fillColor: kWhite,
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'This field is required';
            }
            if (label == 'Email' && !value.contains('@')) {
              return 'Please enter a valid email';
            }
            return null;
          },
        ),
      ],
    );
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Handle form submission
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Message sent successfully!'),
          backgroundColor: Color(0xFF6B46C1),
        ),
      );

      // Clear form
      _fullNameController.clear();
      _companyController.clear();
      _emailController.clear();
      _phoneController.clear();
      _subjectController.clear();
      _messageController.clear();
    }
  }
}
