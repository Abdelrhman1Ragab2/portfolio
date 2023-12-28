import 'package:flutter/material.dart';
import 'package:portfolio/controller/responsive_provider.dart';
import 'package:portfolio/core/utils/app_color.dart';
import 'package:portfolio/view/body/social_media/social_media.dart';
import 'package:provider/provider.dart';

import '../../../core/enum/app_size.dart';
import '../../../core/utils/app_style.dart';
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
        Row(
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
                  Text(
                    "I Am Flutter Developer ",
                    style: AppStyle.bigStyle,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/2,
                    child: Text(
                      "i'm Flutter Developer with 1 year of experience,I got my experience through learning, researching making applications and many more.... ",
                      style: AppStyle.textStyle,
                    ),
                  ),
                ],
              ),
            ),

                Stack(
                children: [
                  Container(
                  height: 350,
                  width: 300,
                    decoration: BoxDecoration(

                    border: Border.all(color: AppColor.colorC,width: 2),
                  ),
                  ),
                  const  CustomAnimationImage()

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
            "I Am Flutter Developer ",
            style: AppStyle.bigStyleM,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "i'm Flutter Developer with 1 year of experience,I got my experience through learning, researching making applications and many more.... ",
            style: AppStyle.textStyleM,
          ),
          const SizedBox(
            height: 20,
          ),
          const  SocialMedia(),
          const SizedBox(height: 20,),
          const Center(
            child: CustomImage(
              imageUrl: "assets/images/home.png",
            ),
          )
        ],
      ),
    );
  }
}
