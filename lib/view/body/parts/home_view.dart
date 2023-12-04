
import 'package:flutter/material.dart';

import '../../../core/utils/app_style.dart';

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
          /// we wil add another image later
          Expanded(
            child: Image.asset(
              "assets/images/home.png",
              height: 400,
              width: 300,
              fit: BoxFit.contain,
            ),
          )


        ],
      ),
    );
  }
}
