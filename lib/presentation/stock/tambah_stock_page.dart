import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:hastapos/application/stock/stock_cubit.dart';
import 'package:hastapos/domain/stock/request/insert_request_model.dart';
import 'package:hastapos/domain/stock/response/data_satuan_response_model.dart';
import 'package:hastapos/injectable.dart';
import 'package:hastapos/presentation/components/sumbit_button.dart';
import 'package:hastapos/presentation/controller/controller.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hastapos/utils/style.dart';

class TambahStockPage extends StatefulWidget {
  const TambahStockPage({super.key});

  @override
  State<TambahStockPage> createState() => _TambahStockPageState();
}

class _TambahStockPageState extends State<TambahStockPage> {
  final satuan = getIt<StockCubit>();

  @override
  void initState() {
    satuan.dataSatuan();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final form = GlobalKey<FormState>();
    final namaBarang = TextEditingController();
    final hargaBeli = TextEditingController();
    final kuantiti = TextEditingController();
    final isi = TextEditingController();
    final hargaGrosir = TextEditingController();
    final hargaEcer = TextEditingController();
    final controller = Get.put(Controller());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        title: Text(
          'Tambah Stock',
          style: titleStyle.copyWith(
            fontSize: 18,
          ),
        ),
        backgroundColor: Colors.white,
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
        elevation: 0.5,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.white,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Form(
                      key: form,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              "Data Barang",
                              style: titleStyle,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, bottom: 5),
                            child: Text(
                              'Nama Barang',
                              style: tBody.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                          TextFormField(
                            style: tBody.copyWith(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            controller: namaBarang,
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding:
                                  const EdgeInsets.only(left: 10, bottom: 30),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: const BorderSide(
                                  color: secondaryColor,
                                ),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              errorStyle:
                                  tBody.copyWith(fontSize: 12, height: 0.8),
                              hintText: 'Cth. Kursi',
                              hintStyle: tBody.copyWith(
                                  color: Colors.grey.withOpacity(0.6),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            validator: (value) {
                              if (value == "") {
                                return "Nama barang harus di isi";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, bottom: 5),
                            child: Text(
                              'Harga Beli',
                              style: tBody.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                          TextFormField(
                            inputFormatters: [
                              CurrencyTextInputFormatter(
                                  symbol: 'Rp ', decimalDigits: 0)
                            ],
                            keyboardType: TextInputType.number,
                            style: tBody.copyWith(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            controller: hargaBeli,
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding:
                                  const EdgeInsets.only(left: 10, bottom: 30),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: const BorderSide(
                                  color: secondaryColor,
                                ),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              errorStyle:
                                  tBody.copyWith(fontSize: 12, height: 0.8),
                              hintText: 'Rp.20.000',
                              hintStyle: tBody.copyWith(
                                  color: Colors.grey.withOpacity(0.6),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            validator: (value) {
                              if (value == "") {
                                return "Harga beli harus di isi";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, bottom: 5),
                            child: Text(
                              'Kuantiti',
                              style: tBody.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                          TextFormField(
                            style: tBody.copyWith(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            controller: kuantiti,
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding:
                                  const EdgeInsets.only(left: 10, bottom: 30),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: const BorderSide(
                                  color: secondaryColor,
                                ),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              errorStyle:
                                  tBody.copyWith(fontSize: 12, height: 0.8),
                              hintText: 'Cth. 120',
                              hintStyle: tBody.copyWith(
                                  color: Colors.grey.withOpacity(0.6),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            validator: (value) {
                              if (value == "") {
                                return "Kuantiti harus di isi";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, bottom: 5),
                            child: Text(
                              'Isi/pack',
                              style: tBody.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                          TextFormField(
                            style: tBody.copyWith(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            controller: isi,
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding:
                                  const EdgeInsets.only(left: 10, bottom: 30),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: const BorderSide(
                                  color: secondaryColor,
                                ),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              errorStyle:
                                  tBody.copyWith(fontSize: 12, height: 0.8),
                              hintText: 'Cth. 12 pcs',
                              hintStyle: tBody.copyWith(
                                  color: Colors.grey.withOpacity(0.6),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            validator: (value) {
                              if (value == "") {
                                return "Isi/pack harus di isi";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              "Data Grosir",
                              style: titleStyle,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, bottom: 5),
                            child: Text(
                              'Harga Grosir',
                              style: tBody.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                          TextFormField(
                            style: tBody.copyWith(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            controller: hargaGrosir,
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding:
                                  const EdgeInsets.only(left: 10, bottom: 30),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: const BorderSide(
                                  color: secondaryColor,
                                ),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              errorStyle:
                                  tBody.copyWith(fontSize: 12, height: 0.8),
                              hintText: 'Rp.120.000',
                              hintStyle: tBody.copyWith(
                                  color: Colors.grey.withOpacity(0.6),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            validator: (value) {
                              if (value == "") {
                                return "Harga Grosir harus di isi";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, bottom: 5),
                            child: Text(
                              'Satuan Grosir',
                              style: tBody.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                          BlocProvider(
                            create: (context) => satuan,
                            child: BlocConsumer<StockCubit, StockState>(
                              listener: (context, state) {
                                // TODO: implement listener
                              },
                              builder: (context, state) {
                                return state.maybeMap(
                                  orElse: () => Container(),
                                  satuan: (value) => DropdownButtonFormField(
                                    value: "1",
                                    isExpanded: true,
                                    icon: const HeroIcon(
                                      HeroIcons.chevronDown,
                                      // solid: true,
                                      color: Color(0xff656565),
                                      size: 30,
                                    ),
                                    decoration: InputDecoration(
                                      isDense: true,
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(50),
                                        borderSide: const BorderSide(
                                          color: secondaryColor,
                                        ),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      errorStyle: tBody.copyWith(
                                          fontSize: 12, height: 0.8),
                                      hintText: 'Cth. reza',
                                      hintStyle: tBody.copyWith(
                                          color: Colors.grey.withOpacity(0.6),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    style: tBody.copyWith(color: Colors.black),
                                    onChanged: (value) {
                                      controller.selectedGrosir.value =
                                          int.parse(value!);
                                    },
                                    items: value
                                        .dataSatuanResponseModel.satuanGrosir
                                        .map((value) {
                                      return DropdownMenuItem<String>(
                                        value: value.id.toString(),
                                        child: Text(
                                          value.namaSatuan,
                                          style: tBody,
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              "Data Ecer",
                              style: titleStyle,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, bottom: 5),
                            child: Text(
                              'Harga Ecer',
                              style: tBody.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                          TextFormField(
                            style: tBody.copyWith(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            controller: hargaEcer,
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding:
                                  const EdgeInsets.only(left: 10, bottom: 30),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: const BorderSide(
                                  color: secondaryColor,
                                ),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              errorStyle:
                                  tBody.copyWith(fontSize: 12, height: 0.8),
                              hintText: 'Cth. Rp.10.000',
                              hintStyle: tBody.copyWith(
                                  color: Colors.grey.withOpacity(0.6),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            validator: (value) {
                              if (value == "") {
                                return "Harga Ecer harus di isi";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, bottom: 5),
                            child: Text(
                              'Satuan Ecer',
                              style: tBody.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                          BlocProvider(
                            create: (context) => satuan,
                            child: BlocConsumer<StockCubit, StockState>(
                              listener: (context, state) {
                                // TODO: implement listener
                              },
                              builder: (context, state) {
                                return state.maybeMap(
                                    orElse: () => Container(),
                                    satuan: (value) => DropdownButtonFormField(
                                          value: "1",
                                          isExpanded: true,
                                          icon: const HeroIcon(
                                            HeroIcons.chevronDown,
                                            // solid: true,
                                            color: Color(0xff656565),
                                            size: 30,
                                          ),
                                          decoration: InputDecoration(
                                            isDense: true,
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              borderSide: const BorderSide(
                                                color: secondaryColor,
                                              ),
                                            ),
                                            filled: true,
                                            fillColor: Colors.white,
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(50)),
                                            errorStyle: tBody.copyWith(
                                                fontSize: 12, height: 0.8),
                                            hintText: 'Cth. reza',
                                            hintStyle: tBody.copyWith(
                                                color: Colors.grey
                                                    .withOpacity(0.6),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                          style: tBody.copyWith(
                                              color: Colors.black),
                                          onChanged: (value) {
                                            controller.selectedEcer.value =
                                                int.parse(value!);
                                          },
                                          items: value.dataSatuanResponseModel
                                              .satuanEcer
                                              .map((value) {
                                            return DropdownMenuItem<String>(
                                              value: value.id.toString(),
                                              child: Text(
                                                value.namaSatuan,
                                                style: tBody,
                                              ),
                                            );
                                          }).toList(),
                                        ));
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(10),
        child: BlocProvider(
          create: (context) => satuan,
          child: BlocConsumer<StockCubit, StockState>(
            listener: (context, state) {
              state.maybeMap(
                orElse: () {},
                messageSuccess: (value) => print(value),
                messageFailed: (value) => print(value),
              );
            },
            builder: (context, state) {
              return state.maybeMap(
                orElse: () => SubmitButton(
                  color: primaryColor,
                  ontap: () {
                    // ! HARGA BELI
                    var deleteKomaHargaBeli =
                        hargaBeli.text.replaceAll(RegExp(','), '');
                    var deleteRpHargaBeli =
                        deleteKomaHargaBeli.replaceAll(RegExp('Rp'), '');
                    var hargaBeliFinal =
                        deleteRpHargaBeli.replaceAll(RegExp(' '), '');

                    // ! HARGA ECER
                    var deleteKomaHargaEcer =
                        hargaEcer.text.replaceAll(RegExp(','), '');
                    var deleteRpHargaEcer =
                        deleteKomaHargaEcer.replaceAll(RegExp('Rp'), '');
                    var hargaEcerFinal =
                        deleteRpHargaEcer.replaceAll(RegExp(' '), '');

                    // ! HARGA GROSIR
                    var deleteKomaHargaGrosir =
                        hargaGrosir.text.replaceAll(RegExp(','), '');
                    var deleteRpHargaGrosir =
                        deleteKomaHargaGrosir.replaceAll(RegExp('Rp'), '');
                    var hargaGrosirFinal =
                        deleteRpHargaGrosir.replaceAll(RegExp(' '), '');

                    if (form.currentState!.validate()) {
                      var req = InsertRequestModel(
                          namaProduk: namaBarang.text,
                          hargaBeli: int.parse(hargaBeliFinal),
                          hargaEcer: int.parse(hargaEcerFinal),
                          hargaGrosir: int.parse(hargaGrosirFinal),
                          isiPerPack: int.parse(isi.text),
                          kuantiti: int.parse(kuantiti.text),
                          satuanEcer: controller.selectedEcer.value,
                          satuanGrosir: controller.selectedEcer.value);

                      satuan.createStock(data: req);
                    } else {
                      print("Gaga");
                    }
                  },
                  title: 'Tambah',
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
