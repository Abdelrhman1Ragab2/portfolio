import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_color.dart';
import 'package:portfolio/core/utils/app_style.dart';
import 'package:provider/provider.dart';

import '../../controller/responsive_provider.dart';
import '../../core/enum/app_size.dart';
import '../../core/widget/customButton.dart';

PreferredSizeWidget? customAppBar(BuildContext context) {
  bool isMobile =
      Provider.of<ResponsiveProvider>(context).appSize == AppSize.mobile;

  return PreferredSize(
    preferredSize: Size.fromHeight(isMobile ? 50 : 50.0),
    child: AppBar(
      leading: isMobile?null:Center(
          child: Text("ABDELRHMAN",
              style: isMobile ? AppStyle.logoStyle : AppStyle.logoStyleM,)),
      leadingWidth: 300,
      elevation: 0,
      backgroundColor: AppColor.colorA,
      actions: isMobile
          ? null
          : [
              CustomButton(
                  drawerOptions:
                      Provider.of<ResponsiveProvider>(context, listen: false)
                          .drawerOptions[0]),
              CustomButton(
                  drawerOptions:
                      Provider.of<ResponsiveProvider>(context, listen: false)
                          .drawerOptions[1]),
              CustomButton(
                  drawerOptions:
                      Provider.of<ResponsiveProvider>(context, listen: false)
                          .drawerOptions[2]),
              CustomButton(
                  drawerOptions:
                      Provider.of<ResponsiveProvider>(context, listen: false)
                          .drawerOptions[3]),
              CustomButton(
                  drawerOptions:
                      Provider.of<ResponsiveProvider>(context, listen: false)
                          .drawerOptions[4]),
              CustomButton(
                  drawerOptions:
                      Provider.of<ResponsiveProvider>(context, listen: false)
                          .drawerOptions[5]),
            ],
    ),
  );
}
