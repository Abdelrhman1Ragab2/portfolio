import 'package:flutter/material.dart';

import '../utils/app_color.dart';
import '../utils/app_style.dart';

class ExperienceWidget extends StatelessWidget {
  final String text;
  const ExperienceWidget({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(26.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                color: AppColor.colorB,
                borderRadius: BorderRadius.circular(10)
            ),
          ),
          const SizedBox(width: 10,),
          SizedBox(
            child: Text(text,
              style: AppStyle.experienceStyle,),
          ),
        ],
      ),
    );;
  }
}
