import 'package:flutter/material.dart';

class DrawerOptions {


  final String label;
  final Widget widget;
  final int position ;
  final int index ;

  DrawerOptions(
      {required this.label, required this.widget, required this.position,required this.index});
}