import 'package:edu_college/application/controller/home/home_controller.dart';
import 'package:edu_college/application/presentation/screens/home/widgets/footer.dart';
import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:edu_college/application/presentation/widgets/appbar/custom_sliver_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomSliverAppbar(
            title: '',
            logoWithText: true,
            children: List.generate(
              controller.homeTitles.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  controller.selectedHomeTitle.value,
                  style: textStyle1.copyWith(
                    color: controller.selectedHomeTitle.value ==
                            controller.homeTitles[index]
                        ? kPurple
                        : kBlack,
                  ),
                ),
              ),
            ),
          ),
          SliverList.list(children: [
            Container(
              height: 600,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    kGrey.withOpacity(0.1),
                    kGrey.withOpacity(0.4),
                    kPurple.withOpacity(0.2),
                    kGrey.withOpacity(0.2)
                  ],
                ),
              ),

            ),
            const CompanyFooterSection()
          ])
        ],
      ),
    );
  }
}
