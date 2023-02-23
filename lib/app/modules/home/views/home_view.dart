import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Struk Maker'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Image.asset('assets/image/logo.png',
                        fit: BoxFit.cover, width: 200),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: controller.tKode,
                  decoration: InputDecoration(
                    focusColor: Colors.white,
                    hintText: "Masukan Kode SPBU",
                    labelText: "Kode SPBU",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: controller.tSPBU,
                  decoration: InputDecoration(
                    focusColor: Colors.white,
                    hintText: "Masukan SPBU",
                    labelText: "SPBU",
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: controller.tAlamat,
                  decoration: InputDecoration(
                    focusColor: Colors.white,
                    hintText: "Masukan Alamat SPBU",
                    labelText: "Alamat SPBU",
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: controller.tShift,
                  decoration: InputDecoration(
                    focusColor: Colors.white,
                    hintText: "Masukan Shift",
                    labelText: "Shift",
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: controller.tTrans,
                  decoration: InputDecoration(
                    focusColor: Colors.white,
                    hintText: "Masukan No. Trans",
                    labelText: "No.Trans",
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: controller.tSPBU,
                  decoration: InputDecoration(
                    focusColor: Colors.white,
                    hintText: "Masukan Waktu",
                    labelText: "Waktu/Tanggal",
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: controller.tSPBU,
                  decoration: InputDecoration(
                    focusColor: Colors.white,
                    hintText: "Masukan Pulau/Pompa",
                    labelText: "Pulau/Pompa",
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Nama Produk',
                  textAlign: TextAlign.left,
                ),
                Container(
                  child: DropdownSearch<String>(
                    popupProps: PopupProps.dialog(
                      fit: FlexFit.tight,
                      showSelectedItems: true,
                      disabledItemFn: (String s) => s.startsWith('I'),
                    ),
                    items: [
                      'Pertamax',
                      'Dexlite',
                    ],

                    dropdownDecoratorProps: DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                        hintText: "Nama Produk",
                      ),
                    ),
                    onChanged: (value) {
                      controller.selectedDrowpdown = value!;
                    },
                    // (ubahStatus(documentSnapshot!.id)),
                    selectedItem: controller.tProduk.text,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: controller.tHarga,
                  decoration: InputDecoration(
                    focusColor: Colors.white,
                    hintText: "Masukan Harga/Liter",
                    labelText: "Harga/Liter",
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: controller.tVolume,
                  decoration: InputDecoration(
                    focusColor: Colors.white,
                    hintText: "Masukan Volume",
                    labelText: "Volume",
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: controller.tOperator,
                  decoration: InputDecoration(
                    focusColor: Colors.white,
                    hintText: "Masukan Operator",
                    labelText: "Operator",
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: controller.tCash,
                  decoration: InputDecoration(
                    focusColor: Colors.white,
                    hintText: "Masukan Cash",
                    labelText: "Cash",
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: controller.tSPBU,
                  decoration: InputDecoration(
                    focusColor: Colors.white,
                    hintText: "Masukan No. Plat",
                    labelText: "No. Plat",
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                // TextFormField(
                //   controller: controller.tSPBU,
                //   decoration: InputDecoration(
                //     focusColor: Colors.white,
                //     hintText: "Masukan Waktu",
                //     labelText: "Waktu/Tanggal",
                //     border: OutlineInputBorder(
                //         borderRadius: new BorderRadius.circular(10.0)),
                //   ),
                // ),
                // SizedBox(
                //   height: 20,
                // ),
                // TextFormField(
                //   controller: controller.tSPBU,
                //   decoration: InputDecoration(
                //     focusColor: Colors.white,
                //     hintText: "Masukan Waktu",
                //     labelText: "Waktu/Tanggal",
                //     border: OutlineInputBorder(
                //         borderRadius: new BorderRadius.circular(10.0)),
                //   ),
                // ),
                // SizedBox(
                //   height: 20,
                // ),
                // TextFormField(
                //   controller: controller.tSPBU,
                //   decoration: InputDecoration(
                //     focusColor: Colors.white,
                //     hintText: "Masukan Waktu",
                //     labelText: "Waktu/Tanggal",
                //     border: OutlineInputBorder(
                //         borderRadius: new BorderRadius.circular(10.0)),
                //   ),
                // ),

                // ElevatedButton(),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ));
  }
}
