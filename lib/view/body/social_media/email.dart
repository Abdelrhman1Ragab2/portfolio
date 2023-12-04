
import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_color.dart';

import '../../../core/widget/custom_routate_text.dart';
import '../../../core/widget/line.dart';

class EmailView extends StatelessWidget {
  const EmailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomRotateText(text: "abdelrhma",),
        CustomRotateText(text: "n1ragab2@",),
        CustomRotateText(text: "gmail.com",),
        CustomLine()
      ],
    );
  }
}
