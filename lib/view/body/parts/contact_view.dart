import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_color.dart';
import 'package:portfolio/core/utils/app_style.dart';
import 'package:provider/provider.dart';

import '../../../controller/contact_provider.dart';
import '../../../controller/responsive_provider.dart';
import '../../../core/widget/confirmation_dialog.dart';
import '../../../core/widget/custom_text_feild.dart';

class ContactView extends StatelessWidget {
  const ContactView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Form(
        key: Provider.of<ContactProvider>(context).formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "CONTACT ",
                  style: AppStyle.bigStyle,
                ),
                Text(
                  "US",
                  style: AppStyle.bigStyleR,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 2,
              width: 100,
              color: AppColor.colorB,
            ),
            const SizedBox(
              height: 25,
            ),
            Provider.of<ResponsiveProvider>(context).appSize==AppSize.web?fieldBodyWeb(context):fieldBodyMobile(context),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(AppColor.colorB),
                ),
                onPressed: () {
                  bool isSowDialog=Provider.of<ContactProvider>(context,listen: false).onSubmit();
                  if(isSowDialog){
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const ConfirmationDialog(
                            contentMessage:
                            "Thank you for sending this message, I will contact you soon",
                          );
                        });
                  }

                },
                child: Text(
                  "Send Message ",
                  style: AppStyle.textStyle,
                ))
          ],
        ),
      ),
    );
  }

  fieldBodyWeb(BuildContext context){
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: CustomTextField(
                  controller:
                  Provider.of<ContactProvider>(context).nameController,
                  hintText: "Name",
                )),
            Expanded(
                child: CustomTextField(
                  controller:
                  Provider.of<ContactProvider>(context).emailController,
                  hintText: "Email",
                )),
            Expanded(
                child: CustomTextField(
                  controller:
                  Provider.of<ContactProvider>(context).subjectController,
                  hintText: "Subject",
                )),
          ],
        ),
        CustomTextField(
            controller:
            Provider.of<ContactProvider>(context).messageController,
            hintText: "Message",
            width: 1100,
            height: 200),
      ],
    );
  }

  fieldBodyMobile(BuildContext context){
    return Column(
      children: [
         CustomTextField(
              controller:
              Provider.of<ContactProvider>(context).nameController,
              hintText: "Name",
            ),
        const SizedBox(height: 10,),
        CustomTextField(
              controller:
              Provider.of<ContactProvider>(context).emailController,
              hintText: "Email",
            ),
        CustomTextField(
              controller:
              Provider.of<ContactProvider>(context).subjectController,
              hintText: "Subject",
            ),
        CustomTextField(
            controller:
            Provider.of<ContactProvider>(context).messageController,
            hintText: "Message",),
      ],
    );
  }
}
