import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../model/social_media_model.dart';
import '../../model/work_page.dart';

class AppConstant {
  static List<SocialMediaModel> socialMediaModelItem = const [
    SocialMediaModel(
        icon: FaIcon(FontAwesomeIcons.squareGithub),
        link: "https://github.com/Abdelrhman1Ragab2"),
    SocialMediaModel(
        icon: FaIcon(FontAwesomeIcons.linkedinIn),
        link: "https://www.linkedin.com/in/abdelrhman-ragab-030001226/"),
    SocialMediaModel(icon: FaIcon(FontAwesomeIcons.envelope), link: "email"),
    SocialMediaModel(
        icon: FaIcon(FontAwesomeIcons.whatsapp), link: whatsappLink),
  ];
  static const String whatsappLink =
      "https://api.whatsapp.com/send?phone=%2B201550886075";

  static const String emailRecipient = "abdelrhman1ragab2@gmail.com";

  static const List<WorkPage> workPageViews = [rayban, ssas, todo, equation];

  static const WorkPage rayban = WorkPage(workName: "Rayban", workPages: [
    "assets/images/rayban/rayban1.PNG",
    "assets/images/rayban/rayban2.PNG",
    "assets/images/rayban/rayban3.PNG",
    "assets/images/rayban/rayban4.PNG",
    "assets/images/rayban/rayban5.PNG",
    "assets/images/rayban/rayban6.PNG",
    "assets/images/rayban/rayban7.PNG",
    "assets/images/rayban/rayban8.PNG",
    "assets/images/rayban/rayban9.PNG",
  ]);
  static const WorkPage ssas = WorkPage(workName: "Smart Student Attendance System", workPages: [
    "assets/images/ssas/1.PNG",
    "assets/images/ssas/2.PNG",
    "assets/images/ssas/3.PNG",
    "assets/images/ssas/4.PNG",
    "assets/images/ssas/5.PNG",
    "assets/images/ssas/6.PNG",
    "assets/images/ssas/7.PNG",
    "assets/images/ssas/8.PNG",
    "assets/images/ssas/9.PNG",
    "assets/images/ssas/10.PNG",
    "assets/images/ssas/12.PNG",
    "assets/images/ssas/13.PNG",
    "assets/images/ssas/14.PNG",
    "assets/images/ssas/15.PNG",
    "assets/images/ssas/16.PNG",
    "assets/images/ssas/17.PNG",
    "assets/images/ssas/18.PNG",
    "assets/images/ssas/20.PNG",
    "assets/images/ssas/21.PNG",
    "assets/images/ssas/22.PNG",
    "assets/images/ssas/23.jpg",
    "assets/images/ssas/24.jpg",
    "assets/images/ssas/25.jpg",
    "assets/images/ssas/26.jpg",
    "assets/images/ssas/27.jpg",
    "assets/images/ssas/28.jpg",
    "assets/images/ssas/29.jpg",
  ]);
  static const WorkPage todo = WorkPage(workName: "TODO Desktop app", workPages: [
    "assets/images/todo/todo1.PNG",
    "assets/images/todo/todo2.PNG",
    "assets/images/todo/todo3.PNG",
    "assets/images/todo/todo4.PNG",
    "assets/images/todo/todo5.PNG",
    "assets/images/todo/todo6.PNG",
    "assets/images/todo/todo7.PNG",
    "assets/images/todo/todo8.PNG",
    "assets/images/todo/todo9.PNG",
    "assets/images/todo/todo10.PNG",
  ]);
  static const WorkPage equation = WorkPage(workName: "Chemistry Equations", workPages: [
    "assets/images/eq/eq1.PNG",
    "assets/images/eq/eq2.PNG",
    "assets/images/eq/eq3.PNG",
    "assets/images/eq/eq4.PNG",
    "assets/images/eq/eq1.jpg",
    "assets/images/eq/eq2.jpg",
    "assets/images/eq/eq3.jpg",
    "assets/images/eq/eq4.jpg",
  ]);
}
