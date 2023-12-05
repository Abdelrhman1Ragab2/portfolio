
import 'package:flutter/material.dart';

import '../../../core/utils/app_style.dart';
import '../../../core/widget/custom_image.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome!",style: AppStyle.logoStyle,),
                const SizedBox(height: 20,),
                Text("I Am Flutter Developer ",style: AppStyle.bigStyle,),
                const SizedBox(height: 20,),
                Text(
                    "i'm Flutter Developer with 1 year of experience,I got my experience through learning, researching making applications and many more.... ",

                  style: AppStyle.textStyle,),
              ],
            ),
          ),
          const Expanded(flex:7,child: CustomImage(imageUrl: "assets/images/home.png",))


        ],
      ),
    );
  }
}
