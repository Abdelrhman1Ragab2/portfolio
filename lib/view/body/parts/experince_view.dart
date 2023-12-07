
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../controller/responsive_provider.dart';
import '../../../core/enum/app_size.dart';
import '../../../core/utils/app_color.dart';
import '../../../core/widget/experience_widget.dart';
import '../../../core/widget/title_part_widget.dart';

class ExperienceView extends StatelessWidget {
  const ExperienceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      decoration: const BoxDecoration(

          image: DecorationImage(
            fit: BoxFit.fitHeight,
          image: AssetImage("assets/images/exp.jpeg")

        )
      ),
      padding: const EdgeInsets.all(20.0),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            height: 100,
            width: double.maxFinite,
            color: Colors.black54,
            child: const TitlePartWidget(
              text: "Experience ",
            )),
          const ExperienceWidget(text: "Android Development training at Information Technology Institute (ITI)",),
          const ExperienceWidget(text: "Flutter Development training in SimpleLife EG",),
          const ExperienceWidget(text: "CyberSecurity training at Helwan College",),


          const ExperienceWidget(text: "Flutter & Dart Complete Development Course [2023]",),
          const ExperienceWidget(text: "Flutter advanced course Bloc and MVVM Pattern [2023]",),
          const ExperienceWidget(text: "Flutter clean architecture course[2023]",),
        ],
      ),
    );
  }
}
