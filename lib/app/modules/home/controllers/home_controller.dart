import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:dotted_line/dotted_line.dart';
import 'package:open_file/open_file.dart';

class HomeController extends GetxController {
  TextEditingController tKode = TextEditingController();
  TextEditingController tSPBU = TextEditingController();
  TextEditingController tAlamat = TextEditingController();
  TextEditingController tShift = TextEditingController();
  TextEditingController tTrans = TextEditingController();
  TextEditingController tWaktu = TextEditingController();
  TextEditingController tPompa = TextEditingController();
  TextEditingController tProduk = TextEditingController();
  TextEditingController tHarga = TextEditingController();
  TextEditingController tVolume = TextEditingController();
  TextEditingController tTotal = TextEditingController();
  TextEditingController tOperator = TextEditingController();
  TextEditingController tCash = TextEditingController();
  TextEditingController tPlat = TextEditingController();
  // TextEditingController tPompa = TextEditingController();
  var selectedDrowpdown = '';

  List items = ["Pertalite", "Dexlite"];

  void getPdf() async {
    final pdf = pw.Document();

    pdf.addPage(pw.Page(
        pageFormat: PdfPageFormat(30 * PdfPageFormat.mm, 58 * PdfPageFormat.mm,
            marginAll: 2 * PdfPageFormat.mm),
        build: (pw.Context context) {
          return pw.Column(children: [
            pw.Center(
                child: pw.Text(' ${tKode.text} ',
                    style: pw.TextStyle(fontSize: 5))), //kode
            pw.SizedBox(height: 10),
            pw.Center(
                child: pw.Text('${tSPBU.text} ',
                    style: pw.TextStyle(fontSize: 5))), //spbu
            pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Text('Shift: ${tShift.text}',
                      style: pw.TextStyle(fontSize: 4)), //shift
                  pw.Text('No. Trans: ${tTrans.text}',
                      style: pw.TextStyle(fontSize: 4)) //no trans
                ]),
            pw.Text('Waktu: ${tWaktu.text}', style: pw.TextStyle(fontSize: 3)),
            pw.SizedBox(height: 10),
            ///////22222
            pw.Text('Pulau/Pompa : ${tPompa.text}',
                style: pw.TextStyle(fontSize: 4)),
            pw.Text('Nama Produk : ${tProduk.text}',
                style: pw.TextStyle(fontSize: 4)),
          ]);
        }));

    //save
    Uint8List bytes = await pdf.save();

    //buatfile kosong
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/mydocument.pdf');

    //timpa file
    await file.writeAsBytes(bytes);

    //open pdf
    await OpenFile.open(file.path);
  }
}
