import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_color.dart';
import 'package:url_launcher/url_launcher.dart';


import '../../model/social_media_model.dart';
import '../utils/app_constant.dart';

class SocialBody extends StatefulWidget {
  final SocialMediaModel socialMediaModel;
  const SocialBody({Key? key,required this.socialMediaModel}) : super(key: key);

  @override
  State<SocialBody> createState() => _SocialBodyState();
}
bool active=false;
class _SocialBodyState extends State<SocialBody> {
  @override
  Widget build(BuildContext context) {
    return  MouseRegion(
      onEnter: (_){
        setState(() {
          active=true;
        });
      },
      onExit: (_){
        setState(() {
          active=false;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: active?AppColor.colorB:null,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: AppColor.colorB

          )
        ),

        child: IconButton(
          onPressed: ()async {
           await lunchURL();
          },
          icon: widget.socialMediaModel.icon,
          iconSize: 18,
          color: AppColor.colorD,
        )

      ),
    );
  }

  Future<void> lunchURL()async{

    if(widget.socialMediaModel.link=="email"){
      final Uri emailUri = Uri(
        scheme: 'mailto',

        path: AppConstant.emailRecipient,
        queryParameters: {
          'subject': "",
          'body': "",
        },
      );

      if (await canLaunch(emailUri.toString())) {
        await launch(emailUri.toString());
      } else {
        throw 'Could not launch email client';
      }
    }else{
      String  url = widget.socialMediaModel.link;
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

  }


}

