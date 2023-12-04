
import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_color.dart';
import 'package:portfolio/core/utils/app_style.dart';
import 'package:provider/provider.dart';

import '../../../controller/contact_provider.dart';
import '../../../core/widget/custom_text_feild.dart';

class ContactView extends StatelessWidget {
  const ContactView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 800,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text("CONTACT ",style: AppStyle.bigStyle,),
               Text("US",style: AppStyle.bigStyleR,),

             ],
           ),
          const SizedBox(height: 30,),

          Container(height: 2,width: 100,color: AppColor.colorB,),
          const SizedBox(height: 50,),
          Row(
            children: [
              Expanded(child: CustomTextField(controller: Provider.of<ContactProvider>(context).nameController ,hintText: "Name",)),
              Expanded(child: CustomTextField(controller: Provider.of<ContactProvider>(context).emailController ,hintText: "Email",)),
              Expanded(child: CustomTextField(controller: Provider.of<ContactProvider>(context).subjectController ,hintText: "Subject",)),

            ],
          ),
          CustomTextField(controller: Provider.of<ContactProvider>(context).messageController ,hintText: "Message",width: 1100,height: 200),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(AppColor.colorB),

              ),
              onPressed: (){}, child: Text("Send Message ",
            style: AppStyle.textStyle,
          ))
        ],
      ),
    );
  }
}
