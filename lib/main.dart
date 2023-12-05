
import 'package:flutter/material.dart';
import 'package:portfolio/controller/scrollProvider.dart';
import 'package:provider/provider.dart';

import 'controller/pdf_downloded.dart';
import 'controller/contact_provider.dart';
import 'view/my_app.dart';

void main() {

  runApp(  MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context)=>ScrollProvider()),
      ChangeNotifierProvider(create: (context)=>PDFProvider()),
      ChangeNotifierProvider(create: (context)=>ContactProvider()),

    ],
    child: const MyApp(),
  ),
  );
}

