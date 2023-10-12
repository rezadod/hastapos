import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:hastapos/application/stock/stock_cubit.dart';
import 'package:heroicons/heroicons.dart';
import '../injectable.dart';
import '../utils/price_format.dart';
import '../utils/style.dart';
import 'controller/controller.dart';

// ignore: must_be_immutable
class DetailCashier extends StatefulWidget {
  int id;
  DetailCashier({super.key, required this.id});

  @override
  State<DetailCashier> createState() => _DetailCashierState();
}

class _DetailCashierState extends State<DetailCashier> {
  final detail = getIt<StockCubit>();
  @override
  void initState() {
    detail.detailStock(id: widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Controller());

    return Scaffold(
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
          "Detail Pesanan",
          style: titleStyle.copyWith(),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: BlocProvider(
            create: (context) => detail,
            child: BlocConsumer<StockCubit, StockState>(
              listener: (context, state) {
                // TODO: implement listener
              },
              builder: (context, state) {
                return state.maybeMap(
                  orElse: () => Container(),
                  datadetailStock: (value) {
                    var detail = value.detailResponseModel.detailStock;
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          detail!.namaProduk,
                          style: titleStyle.copyWith(),
                        ),
                        const Divider(),
                        Text(
                          'Pilih Satuan',
                          style: titleStyle,
                        ),
                        Row(
                          children: [
                            Text(
                              'Wajib ',
                              style: tBody.copyWith(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              height: 5,
                              width: 5,
                              decoration: const BoxDecoration(
                                  color: Colors.grey, shape: BoxShape.circle),
                            ),
                            Text(
                              ' Pilih salah 1',
                              style: tBody.copyWith(
                                  color: Colors.black, fontSize: 10),
                            )
                          ],
                        ),
                        const Divider(),
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: value.detailResponseModel.satuan.length,
                          itemBuilder: (context, index) {
                            var data = value.detailResponseModel.satuan[index];
                            return Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: GestureDetector(
                                    onTap: () {
                                      controller.selected_id.value = data.id;
                                      controller.selected_harga.value =
                                          data.harga;
                                      controller.jenisSatuan.value =
                                          data.satuan;
                                    },
                                    child: Obx(
                                      () => Row(
                                        children: [
                                          Text(
                                            data.satuan.toString(),
                                            style: tBody.copyWith(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const Spacer(),
                                          Text(
                                            CurrencyFormat.convertToIdr(
                                                data.harga, 0),
                                            style: tBody.copyWith(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          controller.selected_id.value !=
                                                  data.id
                                              ? Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    border: Border.all(
                                                        color: primaryColor),
                                                  ),
                                                  width: 25,
                                                  height: 25,
                                                )
                                              : Container(
                                                  decoration: BoxDecoration(
                                                    color: primaryColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  width: 25,
                                                  height: 25,
                                                  child: const Center(
                                                    child: Icon(
                                                      Icons.check_rounded,
                                                      size: 20,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Divider()
                              ],
                            );
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
      bottomNavigationBar: Obx(
        () => Container(
          height: 110,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(color: Colors.grey.withOpacity(0.2)),
            ),
          ),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      'Jumlah Pesanan',
                      style: titleStyle.copyWith(fontSize: 16),
                    ),
                    const Spacer(),
                    controller.input_quantity.value == 0
                        ? Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey.withOpacity(0.8),
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            width: 25,
                            height: 25,
                            child: Center(
                              child: HeroIcon(
                                HeroIcons.minus,
                                size: 20,
                                color: Colors.grey.withOpacity(0.8),
                              ),
                            ),
                          )
                        : GestureDetector(
                            onTap: () => controller.input_quantity.value--,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: primaryColor),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              width: 25,
                              height: 25,
                              child: const Center(
                                child: HeroIcon(
                                  HeroIcons.minus,
                                  size: 20,
                                  color: primaryColor,
                                ),
                              ),
                            ),
                          ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      controller.input_quantity.value.toString(),
                      style: tBody.copyWith(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () => controller.input_quantity.value++,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: primaryColor),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        width: 25,
                        height: 25,
                        child: const Center(
                          child: HeroIcon(
                            HeroIcons.plus,
                            size: 20,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      foregroundColor: secondaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: controller.input_quantity.value == 0
                        ? null
                        : () {
                            Navigator.pop(context);

                            controller.listKeranjang.add({
                              "id": controller.selected_id.value,
                              "qty": controller.input_quantity.value,
                              "satuan": controller.jenisSatuan.value,
                              "harga": controller.selected_harga.value
                            });
                          },
                    child: Text(
                      controller.input_quantity.value == 0
                          ? "Masukkan Kuantitas"
                          : "Tambah Pesanan ${CurrencyFormat.convertToIdr(controller.selected_harga.value * controller.input_quantity.value, 0)}",
                      style: titleStyle.copyWith(
                          color: Colors.white, fontSize: 16),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
