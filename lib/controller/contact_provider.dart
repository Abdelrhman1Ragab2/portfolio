import 'package:flutter/cupertino.dart';

class ContactProvider with ChangeNotifier{

  TextEditingController nameController =TextEditingController();
  TextEditingController emailController =TextEditingController();
  TextEditingController subjectController =TextEditingController();
  TextEditingController messageController =TextEditingController();
}