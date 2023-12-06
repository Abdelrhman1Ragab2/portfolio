import 'package:flutter/material.dart';

import '../model/drawer_option.dart';

enum AppSize {mobile,web,tablet}

class ResponsiveProvider extends ChangeNotifier{


  AppSize appSize=AppSize.web;
  List<DrawerOptions> drawerOptions = [
    DrawerOptions(
        lable: "Home", icon: Icons.home_filled, position: 0, index: 0),
    DrawerOptions(
        lable: "About", icon: Icons.table_rows, position: 705, index: 1),
    DrawerOptions(
        lable: "Experience", icon: Icons.call, position: 1510, index: 2),
    DrawerOptions(
        lable: "Work", icon: Icons.info, position: 2115, index: 3),
    DrawerOptions(
        lable: "Contact", icon: Icons.info, position: 4520, index: 4),
  ];




  late double activeWidth;
  late double activeHeight;

  activateUI(double height,double width){
    if(width<825){
      appSize=AppSize.mobile;
    }
    else {
      appSize=AppSize.web;
    }
    activeWidth=width;
    activeHeight=height;
    notifyListeners();
  }







}