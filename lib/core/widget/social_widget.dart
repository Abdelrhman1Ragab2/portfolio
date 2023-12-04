import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_color.dart';

import '../../model/social_media_model.dart';

class SocialBody extends StatelessWidget {
  final SocialMediaModel socialMediaModel;
  const SocialBody({Key? key,required this.socialMediaModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(

      margin: const EdgeInsets.all(8.0),
      child: IconButton(
        onPressed: (){

        },
        icon: socialMediaModel.icon,
        color: AppColor.colorD,
      )

    );
  }
}
