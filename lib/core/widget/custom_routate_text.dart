import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_style.dart';

import '../utils/app_color.dart';

class CustomRotateText extends StatelessWidget {
  final String text;
  const CustomRotateText({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 60),
      child: Center(
        child: Transform.rotate(
          angle: 90* 3.1415927 / 180, // Convert degrees to radians
          child:  RotationTransition(
            turns: const AlwaysStoppedAnimation(0.0), // 90 degrees as a fraction of a full rotation
            child: Text(
              text,
              maxLines: 10,
              // overflow: TextOverflow.fade,
              textAlign: TextAlign.start,
              style: AppStyle.textStyle
            ),
          ),


        ),
      ),
    );
  }
}
