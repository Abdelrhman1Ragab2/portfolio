import 'package:flutter/cupertino.dart';

import '../view/body/parts/about_view.dart';
import '../view/body/parts/contact_view.dart';
import '../view/body/parts/experince_view.dart';
import '../view/body/parts/home_view.dart';
import '../view/body/parts/work_view.dart';

class ScrollProvider with ChangeNotifier{

  late ScrollController scrollController;

  ScrollProvider() {
    scrollController = ScrollController();
    scrollController.addListener(_scrollListener);
  }

  int activeIndex=0;

  changeIndex(int index){
    activeIndex=index;
    notifyListeners();
  }

  List<Widget> parts=const [HomeView(), AboutView(),ExperienceView(),OurWork(),ContactView()];

  Future<void>doScroll(int index,bool isMobile)async{
    await scrollController.animateTo(
      // Specify the position you want to scroll to
      getPosition(index,isMobile),
      // Specify the duration of the animation
      duration:  const Duration(milliseconds: 1500),
      // Specify the curve for the animation (optional)
      curve: Curves.easeInOut,
    );
  }


  double getPosition(int index,bool isMobile){
    switch(index){
      case 0:
        return 0;
      case 1:
        return 705;
      case 2:
        return 1510;
      case 3:
        return 2115;
      case 4:
        return isMobile?3170: 4400;

    }
   return 4300;
   // return (700*(index-1))+(5*index).toDouble();
  }






  void _scrollListener() {
    if(scrollController.offset <600){
      activeIndex=0;
      notifyListeners();
    }
    else if (scrollController.offset >= 705 && scrollController.offset <1300)  {
      activeIndex=1;
      notifyListeners();
    }
    else if (scrollController.offset >= 1300 && scrollController.offset <1900)  {
      activeIndex=2;
      notifyListeners();
    }
    else if (scrollController.offset >= 1900 && scrollController.offset <3800)  {
      activeIndex=3;
      notifyListeners();
    }else if (scrollController.offset >= 3900 )  {
      activeIndex=4;
      notifyListeners();
    }
  }

  @override
  void dispose() {
    scrollController.removeListener(_scrollListener);
    scrollController.dispose();
    super.dispose();
  }

}