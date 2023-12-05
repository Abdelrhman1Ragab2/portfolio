import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_style.dart';

import '../../../core/widget/customText.dart';
import '../../../core/widget/custom_image.dart';
import '../../../core/widget/custom_text_skils.dart';
import '../../../core/widget/title_part_widget.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      padding: const EdgeInsets.all(20.0),
      child:  Row(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitlePartWidget(
                text: "About Me ",
              ),
              const SizedBox(
                height: 35,
              ),
              Text("Hello I Am Abdelrhman Ragab Owais",style: AppStyle.logoStyle,),
              const SizedBox(
                height: 35,
              ),
              const CustomText(
                text:
                    "i'm Flutter Developer with 1 year of experience, seeking a challenging position to contribute my expertise in developing innovative and user-friendly mobile,web, and desktop applications. ",
              ),
              const SizedBox(
                height: 35,
              ),
              const CustomText(
                  text:
                      " Education: I graduated from the Faculty of Engineering at Helwan University, where I gained a solid foundation in software development principles and practices."),
              const SizedBox(
                height: 35,
              ),
              const CustomText(
                text: "Here are a few technologies and skills I've been working with recently : ",
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(children: [
                CustomTextSkills(text:"Programming Languages: Dart, Php, Java" ,),
                CustomTextSkills(text:"SOLID principles" ,),
              ],),
              const Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                CustomTextSkills(text:"Technologies : Flutter, Firebase, Git " ,),
                CustomTextSkills(text:"SDLC Concept" ,),
              ],),
              const Row(children: [
                CustomTextSkills(text:"State Management: GetX, Provider, BLOC " ,),
                CustomTextSkills(text:"REST API" ,),
              ],),
              const Row(children: [
                CustomTextSkills(text:"Database: SQL, NoSQL " ,),
                CustomTextSkills(text:"Clean code" ,),
              ],),
              const Row(children: [
                CustomTextSkills(text:"Design patterns & Architecture patterns" ,),
                CustomTextSkills(text:"Problem-solving abilities" ,),
              ],),
            ],
          ),
          //const CustomImage(imageUrl: "assets/images/about.png",)
          Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkY_HqbS2bwHDtqTahgrHpVik9crh8tthw5Q&usqp=CAU"),

        ],
      ),
    );
  }
}
//
// <> Programming Languages: I am proficient in Dart, which is the programming language used in Flutter development. Additionally, I have experience in other languages such as PHP and Java, allowing me to work on various projects.
//
// <> Technologies: I have extensive experience with Flutter, which is a cross-platform framework for developing mobile, web, and desktop applications. I am also skilled in working with Firebase for backend services, Git for version control, and Android development.
//
// <> Database: I have knowledge of both SQL and NoSQL databases, enabling me to design and implement efficient data storage solutions for different types of applications.
//
// <> Design and Architecture: I am familiar with various design patterns and architecture patterns, which help me create scalable and maintainable codebases. I strive to follow SOLID principles to ensure code quality and modularity.
//
// <> State Management: I have experience using popular state management solutions in Flutter, including GetX, Provider, and BLOC. These tools help me manage application state effectively and maintain a clean and organized codebase.
//
// <> SDLC Concept: I have a good understanding of the Software Development Life Cycle (SDLC) and follow industry best practices to ensure efficient and high-quality application development.
//
// <> REST API: I am skilled in working with RESTful APIs to integrate applications with external services and fetch data dynamically.
//
// <> Problem-solving Abilities: I possess strong problem-solving skills, which enable me to analyze complex issues and find optimal solutions. I am proactive in identifying and resolving challenges during the development process.

