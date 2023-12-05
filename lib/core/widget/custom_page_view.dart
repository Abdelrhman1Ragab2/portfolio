import 'package:flutter/material.dart';
import 'package:portfolio/model/work_page.dart';

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
    bool isMobile= MediaQuery.of(context).size.width<500;
    return Container(
      padding:  EdgeInsets.all(isMobile?10:40),
      height: isMobile?400:600,
      child: Column(
        children: [
          Expanded(flex: 2,
              child: workTitle()),
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
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.0),
      ),
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
            size: 28,
            color: Colors.white,

          )),
    );
  }
  Widget workTitle() {
    return SizedBox(
        height: 100,
        child: Text(widget.workPage.workName,style: AppStyle.bigStyle,
        ));
  }
}
