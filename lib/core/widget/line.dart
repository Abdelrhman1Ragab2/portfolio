import 'package:flutter/material.dart';

import '../utils/app_color.dart';

class CustomLine extends StatelessWidget {
  const CustomLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1,
      height: 100,
      color: AppColor.colorD,
    );
  }
}
