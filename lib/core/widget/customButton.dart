import 'package:flutter/material.dart';
import 'package:portfolio/controller/pdf_downloded.dart';
import 'package:portfolio/controller/responsive_provider.dart';
import 'package:portfolio/controller/scroll_provider.dart';
import 'package:portfolio/core/utils/app_color.dart';
import 'package:provider/provider.dart';

import '../../model/drawer_option.dart';
import '../enum/app_size.dart';
import '../utils/app_style.dart';

class CustomButton extends StatefulWidget {
  final DrawerOptions drawerOptions;

  const CustomButton({Key? key, required   this.drawerOptions})
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
    double width=MediaQuery.of(context).size.width;
    double factor=(width/1366)*15;
    bool active=Provider.of<ScrollProvider>(context).activeIndex==widget.drawerOptions.index  && widget.drawerOptions.index!=5;
    return Padding(
      padding:  EdgeInsets.only(right: factor,left: factor,top: 10,bottom: 5),
      child: MouseRegion(
        onEnter: (_) async{
          if(widget.drawerOptions.index!=5){
            Provider.of<ScrollProvider>(context,listen: false).changeIndex(widget.drawerOptions.index);
            await Provider.of<ScrollProvider>(context,listen:  false).doScroll(widget.drawerOptions.index,Provider.of<ResponsiveProvider>(context,listen: false).appSize==AppSize.mobile);
          }


        },
        onExit: (_) {

        },
        child: ElevatedButton(
          onPressed: ()async {
            if(widget.drawerOptions.index==5){
              Provider.of<PDFProvider>(context,listen: false).downloadResume();
            }
          },
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            backgroundColor: MaterialStateProperty.all(widget.drawerOptions.index==5?AppColor.colorB:AppColor.colorA),
            shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0))),
            side: MaterialStateProperty.all(active?
                const BorderSide(color: AppColor.colorB, width: 2):null),
          ),
          child: Text(
            widget.drawerOptions.label,
            style: AppStyle.buttonStyle,
          ),
        ),
      ),
    );
  }
}
