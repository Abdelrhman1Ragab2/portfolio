import 'package:flutter/material.dart';
import 'package:portfolio/controller/responsive_provider.dart';
import 'package:portfolio/view/body/social_media/social_media.dart';
import 'package:provider/provider.dart';

import '../../../core/enum/app_size.dart';
import '../../../core/utils/app_style.dart';
import '../../../core/widget/custom_image.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppSize appSize =Provider.of<ResponsiveProvider>(context).appSize;

    return appSize==AppSize.mobile ?mobileBody():webBody();

  }

  Widget webBody(){
    return SizedBox(
      height: 700,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
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
                Text(
                  "i'm Flutter Developer with 1 year of experience,I got my experience through learning, researching making applications and many more.... ",
                  style: AppStyle.textStyle,
                ),
              ],
            ),
          ),
          const Expanded(
              flex: 1,
              child: CustomImage(
                imageUrl: "assets/images/home.png",
              ))
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
