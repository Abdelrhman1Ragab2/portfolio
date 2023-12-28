// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import '../utils/app_style.dart';
//
// class CustomAnimationText extends StatefulWidget {
//   const CustomAnimationText({Key? key}) : super(key: key);
//
//   @override
//   State<CustomAnimationText> createState() => _CustomAnimationTextState();
// }
//
// class _CustomAnimationTextState extends State<CustomAnimationText> with SingleTickerProviderStateMixin{
//
//   late Animation<RelativeRect> positionAnimation ;
//   late AnimationController animationController;
//
//   @override
//   void initState() {
//     animationController=AnimationController(vsync: this,duration: const Duration(seconds: 1),);
//     positionAnimation=   RelativeRectTween(begin:const RelativeRect.fromLTRB(0, 0, 0, 0) ,
//         end: const RelativeRect.fromLTRB(500, 0, 0, 0)).animate(animationController);
//     animationController.repeat(reverse: true);
//     super.initState();
//
//   }
//   @override
//   Widget build(BuildContext context) {
//     return PositionedTransition(
//       rect:  positionAnimation,
//       child: Container(
//
//         color: Colors.white.withOpacity(0.2),
//         width: 2,
//         height: 10,
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

import '../utils/app_style.dart';

class AnimatedText extends StatefulWidget {
  const AnimatedText({super.key});

  @override
  _AnimatedTextState createState() => _AnimatedTextState();
}

class _AnimatedTextState extends State<AnimatedText> with SingleTickerProviderStateMixin {
  late  AnimationController _controller;
 late Animation<double> _animation;
  final String _fullText = 'I Am Flutter Developer ';
  String _partialText = '';

  @override
  void initState() {
    super.initState();

    // Create the animation controller
    _controller = AnimationController(
      duration: const Duration(seconds:2),
      vsync: this,
    );

    // Create the animation using Tween
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    // Start the animation
    _controller.forward();

    // Add listener to update the partial text
    _animation.addListener(() {
      setState(() {
        final int endIndex = (_animation.value * _fullText.length).round();
        _partialText = "${_fullText.substring(0, endIndex)} ..|";
      });

    });
    _controller.repeat(reverse: true);

  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  AnimatedBuilder(
          animation: _animation,
          builder: (BuildContext context, Widget? child) {
            return Opacity(
              opacity: 0.8,
              child: Text(
                _partialText,
                style: AppStyle.bigStyle,
              ),
            );
          },
    );
  }
}