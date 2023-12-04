
import 'package:flutter/material.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/widget/experience_widget.dart';
import '../../../core/widget/title_part_widget.dart';

class ExperienceView extends StatelessWidget {
  const ExperienceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      padding: const EdgeInsets.all(20.0),

      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitlePartWidget(
            text: "Experience ",
          ),SizedBox(
            height: 40,
          ),
          ExperienceWidget(text: "Android Development training at Information Technology Institute (ITI)",),
          ExperienceWidget(text: "Flutter Development training in SimpleLife EG",),
          ExperienceWidget(text: "Cybersecurity training at Helwan College",),


          ExperienceWidget(text: "Flutter & Dart Complete Development Course [2023]",),
          ExperienceWidget(text: "Flutter advanced course Bloc and MVVM Pattern [2023]",),
          ExperienceWidget(text: "Flutter clean architecture course[2023]",),
        ],
      ),
    );
  }
}
