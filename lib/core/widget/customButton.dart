import 'package:flutter/material.dart';
import 'package:portfolio/controller/appBarProvider.dart';
import 'package:portfolio/controller/scrollProvider.dart';
import 'package:portfolio/core/utils/app_color.dart';
import 'package:provider/provider.dart';

import '../utils/app_style.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final int index;

  const CustomButton({Key? key,  required this.text,required this.index})
      : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}


class _CustomButtonState extends State<CustomButton> {

  late bool active;
  @override
  void initState() {
    active=false;
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    bool active=Provider.of<ScrollProvider>(context).activeIndex==widget.index  && widget.index!=5;
    return Padding(
      padding: const EdgeInsets.only(right: 40.0,left: 40.0,top: 5,bottom: 5),
      child: MouseRegion(
        onEnter: (_) async{
          if(widget.index!=5){
            Provider.of<ScrollProvider>(context,listen: false).changeIndex(widget.index);
            await Provider.of<ScrollProvider>(context,listen:  false).doScroll(widget.index);
          }


        },
        onExit: (_) {

        },
        child: ElevatedButton(
          onPressed: ()async {
            if(widget.index==5){
              Provider.of<PDFProvider>(context,listen: false).downloadResume();
            }
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(widget.index==5?AppColor.colorB:AppColor.colorA),
            shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0))),
            side: MaterialStateProperty.all(active?
                const BorderSide(color: AppColor.colorB, width: 2):null),
          ),
          child: Text(
            widget.text,
            style: AppStyle.buttonStyle,
          ),
        ),
      ),
    );
  }
}
