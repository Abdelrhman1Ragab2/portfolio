import 'package:flutter/material.dart';
import 'package:portfolio/controller/responsive_provider.dart';
import 'package:portfolio/core/utils/app_color.dart';
import 'package:portfolio/core/utils/app_style.dart';
import 'package:provider/provider.dart';

import '../enum/app_size.dart';

class CustomText extends StatelessWidget {
  final String text;

  const CustomText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
              color: AppColor.colorB,
              border: Border.all(color: Colors.white, width: 1),
              borderRadius: BorderRadius.circular(10)),
        ),
        const SizedBox(
          width: 10,
        ),
        SizedBox(
          width:
              Provider.of<ResponsiveProvider>(context).appSize == AppSize.mobile
                  ? 300
                  : 700,
          child: Text(
            text,
            style: Provider.of<ResponsiveProvider>(context).appSize ==
                    AppSize.mobile
                ? AppStyle.textStyleM
                : AppStyle.textStyle,
          ),
        ),
      ],
    );
  }
}
