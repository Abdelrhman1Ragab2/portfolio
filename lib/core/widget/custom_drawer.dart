import 'package:flutter/material.dart';
import 'package:portfolio/controller/responsive_provider.dart';
import 'package:portfolio/controller/scroll_provider.dart';
import 'package:portfolio/core/utils/app_color.dart';
import 'package:portfolio/core/utils/app_style.dart';
import 'package:provider/provider.dart';

import '../../controller/pdf_downloded.dart';
import '../../model/drawer_option.dart';

class MyDrawer extends StatelessWidget {
 const  MyDrawer({
    Key? key,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 5,

      width: MediaQuery.of(context).size.width*1/2,
      backgroundColor: Colors.black.withOpacity(0.1),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return itemBody(context,Provider.of<ResponsiveProvider>(context,listen: false).drawerOptions[index]);
                },
                separatorBuilder: (_, __) => const SizedBox(
                  height: 10,
                ),
                itemCount: Provider.of<ResponsiveProvider>(context,listen: false).drawerOptions.length,
              ),
            ),

          ],
        ),
      ),
    );
  }

  Widget itemBody(BuildContext context,DrawerOptions drawerOption) {
    return InkWell(
      onTap: () {
        if(drawerOption.index==5){
          Provider.of<PDFProvider>(context,listen: false).downloadResume();
        }else{
          Provider.of<ScrollProvider>(context,listen: false).changeIndex(drawerOption.index);
          Provider.of<ScrollProvider>(context,listen: false).doScroll(drawerOption.index,drawerOption.index==4);
        }

        Navigator.pop(context);
      },
      child: Card(color: AppColor.colorA,
        elevation: 20,
        child: Container(
          height: 50,
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(drawerOption.label,style: AppStyle.titleStyleM,
              ),
              drawerOption.widget
            ],
          ),
        ),
      ),
    );
  }

}
