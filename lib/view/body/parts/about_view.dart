import 'package:flutter/material.dart';
import 'package:portfolio/controller/responsive_provider.dart';
import 'package:portfolio/core/utils/app_style.dart';
import 'package:provider/provider.dart';

import '../../../core/enum/app_size.dart';
import '../../../core/widget/customText.dart';
import '../../../core/widget/custom_image.dart';
import '../../../core/widget/custom_text_skils.dart';
import '../../../core/widget/title_part_widget.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile=Provider.of<ResponsiveProvider>(context).appSize ==
        AppSize.mobile;
    return Container(
      height: 800,
      padding:  const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitlePartWidget(
            text: "About Me ",
          ),
          const SizedBox(
            height: 35,
          ),
          Text(
            "Hello I Am Abdelrhman Ragab Owais",
            style: isMobile?AppStyle.experienceStyleM
                : AppStyle.logoStyle,
          ),
          const SizedBox(
            height: 35,
          ),
          const CustomText(
            text:
                "i'm Flutter Developer with 1 year of experience, seeking a challenging position to contribute my expertise in developing innovative and user-friendly mobile,web, and desktop applications. ",
          ),
          const SizedBox(
            height: 35,
          ),
          const CustomText(
              text:
                  " Education: I graduated from the Faculty of Engineering at Helwan University, where I gained a solid foundation in software development principles and practices."),
          const SizedBox(
            height: 35,
          ),
          const CustomText(
            text:
                "Here are a few technologies and skills I've been working with recently : ",
          ),
          const SizedBox(
            height: 20,
          ),
          isMobile? skillsBodyMobile()
              : skillsBodyWeb()
        ],
      ),
    );
  }

  skillsBodyWeb() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomTextSkills(
              text: "Programming Languages: Dart, Php, Java",
            ),
            CustomTextSkills(
              text: "SOLID principles",
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            CustomTextSkills(
              text: "Technologies : Flutter, Firebase, Git ",
            ),
            CustomTextSkills(
              text: "SDLC Concept",
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            CustomTextSkills(
              text: "State Management: GetX, Provider, BLOC ",
            ),
            CustomTextSkills(
              text: "REST API",
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            CustomTextSkills(
              text: "Database: SQL, NoSQL ",
            ),
            CustomTextSkills(
              text: "Clean code",
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            CustomTextSkills(
              text: "Design patterns & Architecture patterns",
            ),
            CustomTextSkills(
              text: "Problem-solving abilities",
            ),
          ],
        ),
      ],
    );
  }

  skillsBodyMobile() {
    return const Column(
      children: [
        CustomTextSkills(
          text: "Programming Languages: Dart, Php, Java",
        ),
        CustomTextSkills(
          text: "Technologies : Flutter, Firebase, Git ",
        ),
        CustomTextSkills(
          text: "Design patterns & Architecture patterns",
        ),
        CustomTextSkills(
          text: "Problem-solving abilities",
        ),
        CustomTextSkills(
          text: "Database: SQL, NoSQL ",
        ),
        CustomTextSkills(
          text: "SOLID principles",
        ),
        CustomTextSkills(
          text: "SDLC Concept",
        ),
        CustomTextSkills(
          text: "Clean code",
        ),
      ],
    );
  }
}
