import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_color.dart';
import 'package:portfolio/view/body/body_view.dart';
import 'package:provider/provider.dart';

import '../controller/scrollProvider.dart';
import 'app_bar/app_bar.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Visibility(
        visible:Provider.of<ScrollProvider>(context).activeIndex>0,
        child: FloatingActionButton(onPressed: ()async{
          await Provider.of<ScrollProvider>(context,listen: false).doScroll(0);
          Provider.of<ScrollProvider>(context,listen: false).changeIndex(0);
        },backgroundColor: AppColor.colorB, child: const Icon(Icons.arrow_upward,color: Colors.white,)),
      ),
      backgroundColor: AppColor.colorA,
        appBar: customAppBar(),
        body: const BodyView()
    );
  }
}
