import 'dart:convert';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:blue_thermal_printer/blue_thermal_printer.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:hastapos/application/keranjang/keranjang_cubit.dart';
import 'package:hastapos/domain/keranjang/request/keranjang_request_model.dart';
import 'package:hastapos/injectable.dart';
import 'package:hastapos/presentation/components/sumbit_button.dart';
import 'package:hastapos/utils/price_format.dart';
import 'package:hastapos/utils/style.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hastapos/utils/modal/modal_heading.dart';
import 'package:sliding_sheet2/sliding_sheet2.dart';
import 'controller/controller.dart';
import 'dart:async';

import 'package:loading_overlay/loading_overlay.dart';

class KeranjangPage extends StatefulWidget {
  const KeranjangPage({super.key});

  @override
  State<KeranjangPage> createState() => _KeranjangPageState();
}

class _KeranjangPageState extends State<KeranjangPage> {
  final controller = Get.put(Controller());
  int _counter = 0;
  double total = 0;
  bool isLoading = false;
  TextEditingController nominal = TextEditingController();
  List<BluetoothDevice> devices = [];
  BluetoothDevice? selectedDevice;
  BlueThermalPrinter printer = BlueThermalPrinter.instance;
  final cubitKeranjang = getIt<KeranjangCubit>();

  @override
  void initState() {
    getDevice();
    super.initState();
  }

  void getDevice() async {
    devices = await printer.getBondedDevices();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => LoadingOverlay(
        isLoading: isLoading,
        progressIndicator: SpinKitRing(
          color: primaryColor,
          size: 70,
          lineWidth: 5,
        ),
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            titleSpacing: 0,
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const HeroIcon(
                HeroIcons.arrowLeft,
                size: 22,
                color: Colors.black,
              ),
            ),
            elevation: 1,
            backgroundColor: whiteColor,
            title: Text(
              "Keranjang",
              style: titleStyle.copyWith(),
            ),
          ),
          body: controller.listKeranjang.isEmpty
              ? const Center(
                  child: Text('Data Kosong'),
                )
              : ListView.builder(
                  itemCount: controller.listKeranjang.length,
                  itemBuilder: (context, index) {
                    var data = controller.listKeranjang[index];
                    return Container(
                      margin: EdgeInsets.only(
                          bottom: index == controller.listKeranjang.length - 1
                              ? 100
                              : 10,
                          left: 5,
                          right: 10),
                      child: Column(
                        children: [
                          const Divider(
                            height: 0,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      data['nama_produk'],
                                      style: titleStyle.copyWith(fontSize: 14),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      data['satuan'],
                                      style: tBody.copyWith(
                                          fontStyle: FontStyle.italic),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      CurrencyFormat.convertToIdr(
                                          data['harga'], 0),
                                      style: tBody.copyWith(),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 85,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 85,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: const DecorationImage(
                                          image: NetworkImage(
                                              'https://images.unsplash.com/photo-1506898667547-42e22a46e125?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=406&q=80'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            var target = controller
                                                .listKeranjang
                                                .firstWhere((element) =>
                                                    element['produk_id'] ==
                                                    data['produk_id']);
                                            if (target != null) {
                                              target["kuantiti"] =
                                                  target['kuantiti'] - 1;

                                              print(target['kuantiti']);
                                            }

                                            setState(() {
                                              _counter--;
                                            });
                                            target['kuantiti'] <= 1
                                                ? Future.delayed(
                                                    const Duration(
                                                        milliseconds: 100),
                                                    () {
                                                      AwesomeDialog(
                                                        dismissOnTouchOutside:
                                                            false,
                                                        dismissOnBackKeyPress:
                                                            false,
                                                        context: context,
                                                        animType:
                                                            AnimType.scale,
                                                        headerAnimationLoop:
                                                            false,
                                                        dialogType:
                                                            DialogType.error,
                                                        descTextStyle: tBody,
                                                        btnCancel:
                                                            OutlinedButton(
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              side: const BorderSide(
                                                                  color: Colors
                                                                      .green),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                          ),
                                                          onPressed: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                          child: Text(
                                                            'Batal',
                                                            style:
                                                                tBody.copyWith(
                                                                    color: Colors
                                                                        .green),
                                                          ),
                                                        ),
                                                        btnOk: ElevatedButton(
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(8),
                                                                  ),
                                                                  backgroundColor:
                                                                      Colors
                                                                          .red),
                                                          onPressed: () {
                                                            controller
                                                                .listKeranjang
                                                                .remove(data);
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                          child: Text(
                                                            'Hapus',
                                                            style:
                                                                tBody.copyWith(
                                                                    color: Colors
                                                                        .white),
                                                          ),
                                                        ),
                                                        buttonsTextStyle:
                                                            tBody.copyWith(
                                                                color: Colors
                                                                    .white),
                                                        titleTextStyle:
                                                            tBody.copyWith(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    semiBold),
                                                        desc:
                                                            "Mau hapus pesananan ini?",
                                                      ).show();
                                                    },
                                                  )
                                                : null;
                                          },
                                          child: Container(
                                            width: 25,
                                            height: 25,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: primaryColor),
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                            ),
                                            child: const Center(
                                              child: HeroIcon(
                                                HeroIcons.minus,
                                                size: 18,
                                                color: primaryColor,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          data['kuantiti'].toString(),
                                          style: tBody.copyWith(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            var target = controller
                                                .listKeranjang
                                                .firstWhere((element) =>
                                                    element['produk_id'] ==
                                                    data['produk_id']);
                                            if (target != null) {
                                              target["kuantiti"] =
                                                  target['kuantiti'] + 1;
                                            }

                                            for (var item
                                                in controller.listKeranjang) {
                                              //getting the key direectly from the name of the key
                                              total += item["harga"] *
                                                  item['kuantiti'];
                                            }
                                            setState(() {
                                              _counter++;
                                            });
                                          },
                                          child: Container(
                                            width: 25,
                                            height: 25,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: primaryColor),
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                            ),
                                            child: const Center(
                                                child: HeroIcon(
                                              HeroIcons.plus,
                                              size: 18,
                                              color: primaryColor,
                                            )),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
          bottomNavigationBar: controller.listKeranjang.isEmpty
              ? null
              : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SubmitButton(
                      ontap: () async {
                        bool? stringfuture = await printer.isConnected;
                        stringfuture == false
                            ? selectPrinter(context)
                            : payment(context);
                      },
                      title: "Bayar"),
                ),
        ),
      ),
    );
  }

  Future<void> selectPrinter(BuildContext context) {
    return Future.delayed(
      const Duration(milliseconds: 100),
      () {
        showSlidingBottomSheet(
          context,
          builder: (context) => SlidingSheetDialog(
            cornerRadius: 15,
            avoidStatusBar: true,
            snapSpec: const SnapSpec(
              snappings: [0.7, 0.95],
            ),
            builder: printerChoose,
            headerBuilder: (context, state) => StatefulBuilder(
              builder: (BuildContext context, setState) {
                return Material(
                  color: Colors.white,
                  child: SizedBox(
                    height: 80,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.5),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              margin: const EdgeInsets.only(top: 8),
                              width: 50,
                              height: 5,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Pilih Printer",
                            style: titleStyle,
                          ),
                          Divider()
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            footerBuilder: (context, state) => StatefulBuilder(
              builder: (BuildContext context, setState) {
                return Material(
                  color: Colors.white,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: SubmitButton(
                        ontap: () {
                          Navigator.pop(context);
                          payment(context);
                        },
                        title: "Pilih Printer"),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }

  Future<void> payment(BuildContext context) {
    return Future.delayed(
      const Duration(milliseconds: 100),
      () {
        showSlidingBottomSheet(
          context,
          builder: (context) => SlidingSheetDialog(
            cornerRadius: 15,
            avoidStatusBar: true,
            snapSpec: const SnapSpec(
              snappings: [0.7, 0.95],
            ),
            builder: (context, state) => Material(
              color: Colors.white,
              child: StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      style: tBody.copyWith(
                          fontSize: 16, fontWeight: FontWeight.bold),
                      // controller: password,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(
                            color: secondaryColor,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100)),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 15),
                        errorStyle: tBody.copyWith(fontSize: 12, height: 0.8),
                        hintText: '******',
                        hintStyle: tBody.copyWith(
                            color: Colors.grey.withOpacity(0.6),
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                        isDense: true,
                      ),
                      validator: (value) {
                        if (value == "") {
                          return "Password harus di isi";
                        }
                        return null;
                      },
                    ),
                  );
                },
              ),
            ),
            headerBuilder: (context, state) => StatefulBuilder(
              builder: (BuildContext context, setState) {
                return Material(
                  color: Colors.white,
                  child: SizedBox(
                    height: 80,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.5),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              margin: const EdgeInsets.only(top: 8),
                              width: 50,
                              height: 5,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Pembayaran",
                            style: titleStyle,
                          ),
                          Divider()
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            footerBuilder: (context, state) => StatefulBuilder(
              builder: (BuildContext context, setState) {
                return Material(
                  color: Colors.white,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: BlocProvider(
                      create: (context) => cubitKeranjang,
                      child: BlocConsumer<KeranjangCubit, KeranjangState>(
                        listener: (context, state) {
                          state.maybeMap(
                            orElse: () {},
                            getKeranjangSuccess: (value) async {
                              if ((await printer.isConnected)!) {
                                printer.printNewLine();
                                var _data =
                                    value.keranjangResponseModel.invoice;
                                printer.print3Column(
                                    "NAMA BARANG", 'SATUAN', "KUANTITI", 1);
                                for (var element in _data) {
                                  printer.print3Column(element.namaBarang,
                                      element.satuan, element.kuantiti, 1);
                                }

                                printer.print3Column(
                                    value.keranjangResponseModel.id.toString(),
                                    value.keranjangResponseModel.namaKasir,
                                    value.keranjangResponseModel.id.toString(),
                                    1);

                                printer.printNewLine();
                              }
                            },
                            dioError: (value) => print(value),
                          );
                        },
                        builder: (context, state) {
                          return state.maybeMap(
                            orElse: () => SubmitButton(
                              ontap: () async {
                                // print(
                                //     stringfuture);

                                cubitKeranjang.keranjang(
                                    data: jsonEncode(controller.listKeranjang));
                                Navigator.pop(context);
                              },
                              title: "Bayar",
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }

  Widget printerChoose(context, state) => Material(
        color: Colors.white,
        child: StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DropdownButtonFormField<BluetoothDevice>(
                    hint: Text("Pilih Printer"),
                    isExpanded: true,
                    icon: const HeroIcon(
                      HeroIcons.chevronDown,
                      // solid: true,
                      color: Color(0xff656565),
                      size: 30,
                    ),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    style: tBody.copyWith(color: Colors.black),
                    value: selectedDevice,
                    items: devices
                        .map(
                          (e) => DropdownMenuItem(
                            value: e,
                            child: Text(
                              e.name!,
                              style: tBody.copyWith(color: Colors.black),
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedDevice = value;
                        printer.connect(selectedDevice!);
                        printer.isConnected;
                      });
                    },
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '* Jika di menu tidak ada print anda silahkan sambungkan dengan terlebih dahalu',
                    style: tBody.copyWith(color: Colors.red, fontSize: 12),
                  )
                ],
              ),
            );
          },
        ),
      );
}
