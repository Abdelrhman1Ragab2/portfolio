import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/widget/custom_image.dart';

class CustomAnimationImage extends StatefulWidget  {
  const CustomAnimationImage ({Key? key}) : super(key: key);

  @override
  State<CustomAnimationImage> createState() => _CustomAnimationImageState();
}

class _CustomAnimationImageState extends State<CustomAnimationImage>  with SingleTickerProviderStateMixin{
  late Animation<RelativeRect> positionAnimation ;
  late AnimationController animationController;

  @override
  void initState() {
    animationController=AnimationController(vsync: this,duration: const Duration(seconds: 1),);
    positionAnimation=   RelativeRectTween(begin:const RelativeRect.fromLTRB(0, 20, 0, 0) ,
        end: const RelativeRect.fromLTRB(0, 0, 0, 20)).animate(animationController);
    animationController.repeat(reverse: true);
    super.initState();

  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return
      PositionedTransition(
        rect: positionAnimation ,
        child:  Image.asset("assets/images/home.png",height: 350,width: 300,
        ),
    );
  }
}
