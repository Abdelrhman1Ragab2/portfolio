import 'package:flutter/cupertino.dart';

import '../view/body/parts/about_view.dart';
import '../view/body/parts/contact_view.dart';
import '../view/body/parts/experince_view.dart';
import '../view/body/parts/home_view.dart';

class ScrollProvider with ChangeNotifier{

  ScrollController scrollController=ScrollController();

  int activeIndex=0;

  changeIndex(int index){
    activeIndex=index;
    notifyListeners();
  }

  List<Widget> parts=const [HomeView(), AboutView(),ExperienceView(),ContactView()];

  Future<void>doScroll(int index)async{
    await scrollController.animateTo(
      // Specify the position you want to scroll to
      getPostion(index),
      // Specify the duration of the animation
      duration: const Duration(seconds: 1),
      // Specify the curve for the animation (optional)
      curve: Curves.easeInOut,
    );
  }


  double getPostion(int index){
    switch(index){
      case 0:
        return 0;
      case 1:
        return 705;
      case 2:
        return 1510;
      case 3:
        return 2215;
      case 4:
        return 2920;

    }

    return (700*(index-1))+(5*index).toDouble();
  }

}