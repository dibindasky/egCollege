import 'package:edu_college/application/presentation/routes/routes.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppHeader extends StatefulWidget {
  const AppHeader({super.key});

  @override
  State<AppHeader> createState() => _AppHeaderState();
}

class _AppHeaderState extends State<AppHeader> {
  bool _isMobileMenuOpen = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF8A63D2), // Purple
            Color(0xFF6B46C1), // Darker purple
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isDesktop = constraints.maxWidth > 768;

          return Container(
            height: 70,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Logo Section
                _buildLogo(),

                // Navigation for Desktop
                if (isDesktop) _buildDesktopNavigation(),

                // Mobile Menu Button
                if (!isDesktop) _buildMobileMenuButton(),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildLogo() {
    return Row(
      children: [
        Container(
            width: 150,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image.asset(eduGuardianLogoWithText, fit: BoxFit.contain)),
        const SizedBox(width: 12),
        const Text(
          'eduGuardian',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
      ],
    );
  }

  Widget _buildDesktopNavigation() {
    return Row(
      children: [
        // _buildNavItem('Tecnología'),
        // const SizedBox(width: 40),
        GestureDetector(
            onTap: () => context.go(Routes.about),
            child: _buildNavItem('About')),
        const SizedBox(width: 40),
        GestureDetector(
            onTap: () => context.go(Routes.courses),
            child: _buildNavItem('Courses')),
        const SizedBox(width: 40),
        _buildContactButton(),
      ],
    );
  }

  Widget _buildNavItem(String text, {bool hasDropdown = false}) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        if (hasDropdown) ...[
          const SizedBox(width: 6),
          const Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
            size: 20,
          ),
        ],
      ],
    );
  }

  Widget _buildContactButton() {
    return GestureDetector(
        onTap: () => context.go(Routes.contactUs),
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.15),
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                color: Colors.white.withOpacity(0.3),
                width: 1.5,
              ),
            ),
            child: const Text('Contact Us',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600))));
  }

  Widget _buildMobileMenuButton() {
    return GestureDetector(
        onTap: () {
          setState(() {
            _isMobileMenuOpen = !_isMobileMenuOpen;
          });
        },
        child: Icon(_isMobileMenuOpen ? Icons.close : Icons.menu,
            color: Colors.white, size: 28));
  }
}

// Mobile Menu Overlay
class MobileMenuOverlay extends StatelessWidget {
  final bool isOpen;
  final VoidCallback onClose;

  const MobileMenuOverlay({
    super.key,
    required this.isOpen,
    required this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: isOpen ? MediaQuery.of(context).size.height : 0,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF8A63D2),
              Color(0xFF6B46C1),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with close button
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Menu',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: onClose,
                      child: const Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                  ],
                ),
              ),

              // Menu Items
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      _buildMobileNavItem('About', hasDropdown: true),
                      _buildMobileNavItem('Courses', hasDropdown: true),
                      const SizedBox(height: 30),
                      _buildMobileContactButton(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMobileNavItem(String text, {bool hasDropdown = false}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.white.withOpacity(0.1),
            width: 1,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          if (hasDropdown)
            const Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
              size: 24,
            ),
        ],
      ),
    );
  }

  Widget _buildMobileContactButton(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go(Routes.contactUs),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.15),
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: Colors.white.withOpacity(0.3),
            width: 1.5,
          ),
        ),
        child: const Center(
          child: Text(
            'Contacto',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
