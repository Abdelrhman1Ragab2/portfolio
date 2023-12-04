import 'package:flutter/material.dart';
import 'package:portfolio/view/body/parts/all_parts.dart';
import 'package:portfolio/view/body/social_media/email.dart';
import 'package:portfolio/view/body/social_media/social_media.dart';



class BodyView extends StatelessWidget {
  const BodyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 2, child: SocialMedia()),
        Expanded(flex: 18, child: AllPartsPage()),
        Expanded(flex: 3, child:EmailView())

      ],
    );
  }
}
