
import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final String imageUrl;
  const CustomImage({Key? key,required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(imageUrl,
        height: 400,
        width: 300,
        fit: BoxFit.contain,
    );
  }
}
