import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_color.dart';
import 'package:portfolio/core/utils/app_style.dart';


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
          color: AppColor.colorA,
          padding: const EdgeInsets.only(
              left: 50, right: 50, top: 50, bottom: 50),
          child: Center(
              child: Text(
                contentMessage,style: AppStyle.
          bigStyleR,
                textAlign: TextAlign.center,

              )
          )
        ),

    );
  }


}
