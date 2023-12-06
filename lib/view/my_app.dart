
import 'package:flutter/material.dart';
import 'package:portfolio/view/dashboard.dart';
import 'package:provider/provider.dart';

import '../controller/responsive_provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const DashBoard(),
      theme: ThemeData(



      ),
    );
  }
}
