import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_color.dart';

import '../../model/social_media_model.dart';

class SocialBody extends StatefulWidget {
  final SocialMediaModel socialMediaModel;
  const SocialBody({Key? key,required this.socialMediaModel}) : super(key: key);

  @override
  State<SocialBody> createState() => _SocialBodyState();
}
bool active=false;
class _SocialBodyState extends State<SocialBody> {
  @override
  Widget build(BuildContext context) {
    return  MouseRegion(
      onEnter: (_){
        setState(() {
          active=true;
        });
      },
      onExit: (_){
        setState(() {
          active=false;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: active?AppColor.colorB:null,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: AppColor.colorB

          )
        ),

        child: IconButton(
          onPressed: (){

          },
          icon: widget.socialMediaModel.icon,
          iconSize: 18,
          color: AppColor.colorD,
        )

      ),
    );
  }
}
