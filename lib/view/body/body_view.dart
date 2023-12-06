import 'package:flutter/material.dart';
import 'package:portfolio/view/body/parts/all_parts.dart';
import 'package:portfolio/view/body/social_media/email.dart';
import 'package:portfolio/view/body/social_media/social_media.dart';



class BodyView extends StatelessWidget {
  const BodyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;

    return  width<825?const Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Expanded(child: AllPartsPage()),
        ],
      ),
    ):const Row(
      children: [
        Expanded(flex: 2, child: SocialMedia()),
        Expanded(flex: 18, child: AllPartsPage()),
        Expanded(flex: 3, child:EmailView())

      ],
    );
  }
}
