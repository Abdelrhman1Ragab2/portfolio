import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_constant.dart';

import '../../../core/widget/line.dart';
import '../../../core/widget/social_widget.dart';




class SocialMedia extends StatelessWidget {
  const SocialMedia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    return width<825?Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SocialBody(socialMediaModel: AppConstant.socialMediaModelItem[0]),
        const SizedBox(width: 16,),
        SocialBody(socialMediaModel: AppConstant.socialMediaModelItem[1]),
        const SizedBox(width: 16,),
        SocialBody(socialMediaModel: AppConstant.socialMediaModelItem[2]),
        const SizedBox(width: 16,),
        SocialBody(socialMediaModel: AppConstant.socialMediaModelItem[3]),
      ],):
     Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
      SocialBody(socialMediaModel: AppConstant.socialMediaModelItem[0]),
      const SizedBox(height: 16,),
      SocialBody(socialMediaModel: AppConstant.socialMediaModelItem[1]),
        const SizedBox(height: 16,),
        SocialBody(socialMediaModel: AppConstant.socialMediaModelItem[2]),
        const SizedBox(height: 16,),
        SocialBody(socialMediaModel: AppConstant.socialMediaModelItem[3]),
      const SizedBox(height: 20,),
        const CustomLine()
    ],);
  }
}
