import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_color.dart';
import 'package:portfolio/model/work_page.dart';
import 'package:provider/provider.dart';

import '../../controller/responsive_provider.dart';
import '../utils/app_style.dart';

class CustomPageView extends StatefulWidget {
  final WorkPage workPage;
  const CustomPageView({Key? key,required this.workPage}) : super(key: key);

  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    bool isMobile= Provider.of<ResponsiveProvider>(context).appSize==AppSize.mobile;
    return Container(
      padding:  EdgeInsets.all(isMobile?10:40),
      height: isMobile?400:600,
      child: Column(
mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(flex: 2,
              child: workTitle(isMobile)),
          Expanded(flex: 8,
            child: Row(
              children: [
                myButton(Icons.arrow_back_ios, false),
                SizedBox(width: isMobile?10:20),
                Expanded(
                  child: PageView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        widget.workPage.workPages[currentIndex],
                        fit: BoxFit.contain,
                      );
                    },
                    itemCount: widget.workPage.workPages.length,
                  ),
                ),
                SizedBox(width: isMobile?10:20),
                myButton(Icons.arrow_forward_ios, true),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget myButton(IconData iconData, bool isForward) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: AppColor.colorB
      ),
      child: Center(
        child: IconButton(
            onPressed: () {
              if (isForward) {

                setState(() {
                  if(currentIndex<widget.workPage.workPages.length-1)
                    currentIndex++;

                });
              } else {
                setState(() {
                  if(currentIndex!=0)
                    currentIndex--;
                });
              }
            },
            icon: Icon(
              iconData,
              size: 26,
              color: Colors.white,

            )),
      ),
    );
  }
  Widget workTitle(bool isMobile) {
    return SizedBox(
        height: 50,
        child: Text(widget.workPage.workName,
          style: isMobile?AppStyle.bigStyleM:AppStyle.bigStyle,
        ));
  }
}
