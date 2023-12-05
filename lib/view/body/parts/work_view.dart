import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_color.dart';
import 'package:portfolio/core/widget/custom_page_view.dart';

import '../../../core/utils/app_constant.dart';
import '../../../core/utils/app_style.dart';

class OurWork extends StatefulWidget {
  const OurWork({Key? key}) : super(key: key);

  @override
  State<OurWork> createState() => _OurWorkState();
}

class _OurWorkState extends State<OurWork> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 2450,
      child: ListView.separated(
        itemBuilder: (context, index) =>CustomPageView(workPage:  AppConstant.workPageViews[index],),
        separatorBuilder: (context, index) => const SizedBox(
          height: 5,
        ),
        itemCount: AppConstant.workPageViews.length),
    );
  }

}
