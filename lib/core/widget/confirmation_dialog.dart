import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/controller/responsive_provider.dart';
import 'package:portfolio/core/utils/app_color.dart';
import 'package:portfolio/core/utils/app_style.dart';
import 'package:provider/provider.dart';

import '../enum/app_size.dart';


class ConfirmationDialog extends StatelessWidget {
  final String contentMessage;

  const ConfirmationDialog({Key? key, required this.contentMessage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildBody(context);
  }

  Widget buildBody(BuildContext context) {
    return Dialog(
        backgroundColor: Colors.white.withOpacity(0.8),
        child: Container(
          height: 300,
          width: 1000,
          color: AppColor.colorDefault,
          padding: const EdgeInsets.only(
              left: 50, right: 50, top: 50, bottom: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                   Text(
                    contentMessage,
                    style:Provider.of<ResponsiveProvider>(context).appSize==AppSize.mobile? AppStyle.
              bigStyleRM:AppStyle.
                    bigStyle,
                    textAlign: TextAlign.center,

              ),
              const SizedBox(height: 20,),
              const FaIcon(FontAwesomeIcons.circleCheck,color: AppColor.colorB,size: 30,)
            ],
          )
        ),

    );
  }


}
