import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_color.dart';
import 'package:portfolio/core/utils/app_style.dart';
import 'package:provider/provider.dart';

import '../../controller/responsive_provider.dart';
import '../../core/widget/customButton.dart';

PreferredSizeWidget? customAppBar(BuildContext context) {
  return MediaQuery.of(context).size.width < 961
      ? AppBar(
          elevation: 0,
          backgroundColor: AppColor.colorA,
        )
      : PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: AppBar(
            leading:
                Center(child: Text("ABDELRHMAN", style: AppStyle.logoStyle)),
            leadingWidth: 300,
            elevation: 0,
            backgroundColor: AppColor.colorA,
            actions: [
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
            ],
          ),
        );
}
