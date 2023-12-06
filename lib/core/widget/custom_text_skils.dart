
import 'package:flutter/material.dart';

import '../utils/app_color.dart';
import '../utils/app_style.dart';

class CustomTextSkills extends StatelessWidget {
  final String text;
  const CustomTextSkills({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 14,
            height: 14,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white,width: 1),
                color: AppColor.colorC,
                borderRadius: BorderRadius.circular(7)
            ),
          ),
          const SizedBox(width: 10,),
          SizedBox(
            width: 320,
            child: Text(text,
              style: width<825?AppStyle.skillsStyleM:AppStyle.skillsStyle,),
          ),
        ],
      ),
    );
  }
}

