import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class ContactProvider with ChangeNotifier{

  TextEditingController nameController =TextEditingController();
  TextEditingController emailController =TextEditingController();
  TextEditingController subjectController =TextEditingController();
  TextEditingController messageController =TextEditingController();


  final formKey = GlobalKey<FormState>();


  bool onSubmit() {
    bool isValid = formKey.currentState!.validate();
    if(isValid){
      nameController.text="";
      emailController.text="";
      subjectController.text="";
      messageController.text="";
      notifyListeners();
    }
    return isValid;

  }
}