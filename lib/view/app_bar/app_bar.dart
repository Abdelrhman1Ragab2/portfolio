import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_color.dart';
import 'package:portfolio/core/utils/app_style.dart';

import '../../core/widget/customButton.dart';

  PreferredSizeWidget? customAppBar() {
    return AppBar(
      leading: Center(child: Text("ABDELRHMAN",style: AppStyle.logoStyle)),
      leadingWidth: 300,
      elevation: 10,
      backgroundColor: AppColor.colorA,
      actions: const [
        CustomButton(text: "Home",index: 0),
        CustomButton(text: "About",index: 1),
        CustomButton(text: "Experience",index: 2),
        CustomButton(text: "Work",index: 3),
        CustomButton(text: "Contact",index: 4),
        CustomButton(text: "Resume", index: 5,),
      ],
    );
  }
