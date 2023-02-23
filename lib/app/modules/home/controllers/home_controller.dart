import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:dotted_line/dotted_line.dart';

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
  // TextEditingController tPompa = TextEditingController();
  var selectedDrowpdown = '';

  List items = ["Pertalite", "Dexlite"];
  void getPdf() {
    final pdf = pw.Document();

    pdf.addPage(pw.Page(
        pageFormat: PdfPageFormat(58, 38),
        build: (pw.Context context) {
          return pw.Column(children: [
            pw.Center(child: pw.Text('$tKode')),
            pw.Center(child: pw.Text('$tSPBU')),
            pw.Row(children: [pw.Text('$tShift'), pw.Text('$tTrans')]),
            pw.Text('$tWaktu'),
            pw.Text('----------'),
            pw.SizedBox(height: 10),
            pw.Row(children: [pw.Text('Pulau/Pompa :'), pw.Text('$tPompa')])
          ]);
        }));
  }
}
