import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controller/responsive_provider.dart';
import '../enum/app_size.dart';
import '../utils/app_color.dart';
import '../utils/app_style.dart';

class ExperienceWidget extends StatelessWidget {
  final String text;
  const ExperienceWidget({Key? key,required this.text}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    bool isMobile= Provider.of<ResponsiveProvider>(context).appSize==AppSize.mobile;

    return  Container(
      color: Colors.black54,

      padding:  EdgeInsets.only(left: isMobile?4:26.0,bottom: 26),
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
            width: isMobile?280:800,
            child: Text(text,
              style:isMobile?AppStyle.experienceStyleM: AppStyle.experienceStyle,),
          ),
        ],
      ),
    );;
  }
}
