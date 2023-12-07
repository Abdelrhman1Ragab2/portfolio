import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/utils/app_color.dart';

import '../model/drawer_option.dart';

enum AppSize {mobile,web,tablet}

class ResponsiveProvider extends ChangeNotifier{


  AppSize appSize=AppSize.web;
  List<DrawerOptions> drawerOptions = [
    DrawerOptions(
        label: "Home", widget: const FaIcon(FontAwesomeIcons.home,color: AppColor.colorD,size: 20), position: 0, index: 0),
    DrawerOptions(
        label: "About", widget: const FaIcon(FontAwesomeIcons.circleInfo,color: AppColor.colorD,size: 20), position: 705, index: 1),
    DrawerOptions(
        label: "Experience", widget: const FaIcon(FontAwesomeIcons.check,color: AppColor.colorD,size: 20), position: 1510, index: 2),
    DrawerOptions(
        label: "Work", widget: const FaIcon(FontAwesomeIcons.file,color: AppColor.colorD,size: 20), position: 2115, index: 3),
    DrawerOptions(
        label: "Contact", widget: const FaIcon(FontAwesomeIcons.addressBook,color: AppColor.colorD,size: 20), position: 4520, index: 4),
    DrawerOptions(
        label: "Resume", widget: const FaIcon(FontAwesomeIcons.download,color: AppColor.colorD,size: 20), position: 0, index: 5),
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