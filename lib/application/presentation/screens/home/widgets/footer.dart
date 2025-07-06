import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:flutter/material.dart';

class CompanyFooterSection extends StatelessWidget {
  const CompanyFooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        width: double.infinity,
        color: const Color(0xFF2D3748), // Dark gray background
        child: SafeArea(child: LayoutBuilder(builder: (context, constraints) {
          bool isDesktop = constraints.maxWidth > 768;
          return isDesktop ? _buildDesktopLayout() : _buildMobileLayout();
        })));
  }

  Widget _buildDesktopLayout() {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      // Left side - Contact Info
      Expanded(flex: 1, child: _buildContactInfo()),
      const SizedBox(width: 80),
      // Right side - About Company
      Expanded(flex: 1, child: _buildAboutSection())
    ]);
  }

  Widget _buildMobileLayout() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      _buildContactInfo(),
      const SizedBox(height: 40),
      _buildAboutSection()
    ]);
  }

  Widget _buildContactInfo() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      // Address
      _buildContactItem(
          icon: Icons.location_on_outlined,
          child: const Text(
              'Office No. B-12, Sharjah Book Authority, \nMuwaileh,Sharjah',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: kWhite,
                  height: 1.3))),
      kHeight30,

      // Phone
      _buildContactItem(
          icon: Icons.phone_outlined,
          child: const Text('+971568849699',
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w600, color: kWhite))),
      kHeight30,

      // Email
      _buildContactItem(
          icon: Icons.email_outlined,
          child: GestureDetector(
              //onTap: () => _launchEmail('support@company.com'),
              child: const Text('admission@myeduguardian.com',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: kGreen, // Blue color for email
                      decoration: TextDecoration.underline))))
    ]);
  }

  Widget _buildContactItem({
    required IconData icon,
    required Widget child,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Icon(
            icon,
            color: kWhite,
            size: 22,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(child: child),
      ],
    );
  }

  Widget _buildAboutSection() {
    return const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About the company',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: kWhite,
              height: 1.2,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'eduGuardian is more than just an educational platform; we are a dedicated partner in your academic and career journey.',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFFA0AEC0), // Light gray for description
              height: 1.6,
            ),
          ),
          SizedBox(height: 40),

          // Social Media Icons
          // Row(children: [
          //   _buildSocialIcon(
          //     icon: Icons.facebook,
          //     onTap: () {},
          //   ),
          //   const SizedBox(width: 16),
          //   _buildSocialIcon(
          //     icon: Icons.alternate_email, // Twitter-like icon
          //     onTap: () {},
          //   ),
          //   const SizedBox(width: 16),
          //   _buildSocialIcon(
          //     icon: Icons.business_center, // LinkedIn-like icon
          //     onTap: () {},
          //   ),
          //   const SizedBox(width: 16),
          //   _buildSocialIcon(
          //       icon: Icons.code, // GitHub-like icon
          //       onTap: () {})
          // ])
        ]);
  }

  // Widget _buildSocialIcon({
  //   required IconData icon,
  //   required VoidCallback onTap,
  // }) {
  //   return GestureDetector(
  //       onTap: onTap,
  //       child: Container(
  //           width: 44,
  //           height: 44,
  //           decoration: BoxDecoration(
  //             color: const Color(0xFF4A5568), // Darker gray for icon background
  //             borderRadius: BorderRadius.circular(8),
  //           ),
  //           child: Icon(icon, color: kWhite, size: 20)));
  // }
}
