import 'package:flutter/material.dart';
import 'package:portfolio/controller/responsive_provider.dart';
import 'package:portfolio/core/utils/app_color.dart';
import 'package:portfolio/view/body/social_media/social_media.dart';
import 'package:provider/provider.dart';

import '../../../core/enum/app_size.dart';
import '../../../core/utils/app_style.dart';
import '../../../core/widget/custom_animation_text.dart';
import '../../../core/widget/custom_image.dart';
import '../../../core/widget/custom_animation_image.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppSize appSize =Provider.of<ResponsiveProvider>(context).appSize;

    return appSize==AppSize.mobile ?mobileBody():webBody(context);

  }

  Widget webBody(BuildContext context){
    return SizedBox(
      height: 700,
      child:
        Row( crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome!",
                    style: AppStyle.logoStyle,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const AnimatedText(),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/2,
                    child: Text(
                      "I'm a Software Engineer with hands-on experience in DevOps tools such as Linux, Bash, Python, Docker, Kubernetes, Ansible, and Terraform.\n\nAdditionally, I have a strong background in Flutter, having developed mobile,desktop and web applications. My experience is the result of continuous learning, research, and practical application, contributing to my expertise in these technologies.",
                      style: AppStyle.textStyle,
                    ),
                  ),
                ],
              ),
            ),

                Stack(
                  alignment: Alignment.center,
                children: [
                  Container(
                  height: 450,
                  width: 350,
                    decoration: BoxDecoration(

                    border: Border.all(color: AppColor.colorC,width: 2),
                  ),
                  ),
                  //const  CustomAnimationImage()
                  const Center(
                    child: CustomImage(
                      imageUrl: "assets/images/my.jpg",
                    ),
                  )



                ],
              ),
          ],
        ),
    );
  }

  Widget mobileBody(){
    return SizedBox(
      height: 700,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome!",
            style: AppStyle.logoStyleM,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "I Am Software Engineer ",
            style: AppStyle.bigStyleM,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "I'm a Software Engineer with hands-on experience in DevOps tools such as Linux, Bash, Python, Docker, Kubernetes, Ansible, and Terraform. Additionally, I have a strong background in Flutter, having developed mobile,desktop and web applications. My experience is the result of continuous learning, research, and practical application, contributing to my expertise in these technologies.",
            style: AppStyle.textStyleM,
          ),
          const SizedBox(
            height: 20,
          ),
          const  SocialMedia(),
          const SizedBox(height: 20,),
          const Center(
            child: CustomImage(
              imageUrl: "assets/images/my.jpg",
            ),
          )
        ],
      ),
    );
  }
}
