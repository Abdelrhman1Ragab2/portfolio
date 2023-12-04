import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_constant.dart';

import '../../../core/widget/line.dart';
import '../../../core/widget/social_widget.dart';




class SocialMedia extends StatelessWidget {
  const SocialMedia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
      SocialBody(socialMediaModel: AppConstant.socialMediaModelItem[0]),
      SocialBody(socialMediaModel: AppConstant.socialMediaModelItem[1]),
      SocialBody(socialMediaModel: AppConstant.socialMediaModelItem[2]),
      SocialBody(socialMediaModel: AppConstant.socialMediaModelItem[3]),
      const SizedBox(height: 20,),
        const CustomLine()
    ],);
  }
}
