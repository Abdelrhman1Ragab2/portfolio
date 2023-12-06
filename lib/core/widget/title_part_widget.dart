
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controller/responsive_provider.dart';
import '../utils/app_style.dart';

class TitlePartWidget extends StatelessWidget {
  final String text;
  const TitlePartWidget({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width :250,
      child: Text(text,

        style:Provider.of<ResponsiveProvider>(context).activeWidth<825?AppStyle.titleStyleM: AppStyle.titleStyle,),
    );
  }
}
