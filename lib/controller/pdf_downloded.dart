import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PDFProvider with ChangeNotifier{

  Future<void> downloadResume()async{
    try{
      List<int> pdf=await _downloadAssetPDF();
      _downloadPDF(pdf, "Abdelrhman");
    }
    catch(e){
      print(e.toString());
    }


  }

  Future<List<int>> _downloadAssetPDF() async {
    final ByteData assetData = await rootBundle.load('assets/images/Abdelrhman_Ragab_Cv.pdf');
    final List<int> pdfBytes = assetData.buffer.asUint8List();
    return pdfBytes;

  }
  void _downloadPDF(List<int> bytes, String fileName) {

    final anchor = AnchorElement(
      href: 'data:application/pdf;base64,${base64.encode(bytes)}',
    )
      ..setAttribute('download', '$fileName.pdf')
      ..click();
  }

}