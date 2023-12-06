
import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_color.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final double height;
  final double width;
  const CustomTextField({Key? key,required this.controller,required this.hintText, this.width=350,this.height=70}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: height,
      width: width,
      padding: const EdgeInsets.only(right: 8.0,left: 8.0),
      child: TextFormField(
        minLines: height>100?7:1,
        maxLines: 8,
        controller: controller,
        style: const TextStyle(color: Colors.white),
        validator: (val) {
          if (val != null) {
            if (val.isEmpty) {
              return "value can not be empty";
            }
          }
        },
        decoration: InputDecoration(

            hintText: hintText,
          hintStyle: const TextStyle(color: Colors.white,fontSize: 14),
          focusedBorder:const OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.colorB,width: 1)
          ),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.colorD,width: 1)
          ),

        ),
      ),
    );
  }
}
