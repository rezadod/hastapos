// ignore_for_file: sort_child_properties_last

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
// import 'package:get_storage/get_storage.dart';
import 'package:hastapos/application/stock/stock_cubit.dart';
import 'package:hastapos/domain/auth/response/login_response_model.dart';
import 'package:hastapos/domain/stock/response/stock_response_model.dart';
import 'package:hastapos/presentation/controller/controller.dart';
import 'package:hastapos/presentation/stock/tambah_stock_page.dart';
import 'package:hastapos/utils/price_format.dart';
import 'package:hastapos/utils/style.dart';
import 'package:heroicons/heroicons.dart';

import 'package:hastapos/injectable.dart';
import 'package:hastapos/presentation/controller/card_product.dart';
import 'package:hastapos/presentation/detail_cashier_page.dart';
import 'package:hastapos/presentation/keranjang_page.dart';
import 'package:hastapos/presentation/report/report_page.dart';
import 'package:hastapos/presentation/stock/stock_page.dart';
import 'package:hastapos/utils/user_session.dart' as userSession;

import 'package:badges/badges.dart' as badges;
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sliding_sheet2/sliding_sheet2.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

class StockPage extends StatefulWidget {
  const StockPage({super.key});

  @override
  State<StockPage> createState() => _StockPageState();
}

class _StockPageState extends State<StockPage> {
  final controller = Get.put(Controller());
  late String username;
  late String toko;

  final stockCubit = getIt<StockCubit>();

  @override
  initState() {
    stockCubit.getDataStock();
    final data = GetStorage().read(userSession.LOCAL);
    var accessToken = LoginResponseModel.fromJson(jsonDecode(data));

    username = accessToken.dataUser!.username;

    toko = accessToken.dataUser!.email;
    controller.foundListStock = controller.listStock;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<DataStock> results = [];
    if (enteredKeyword.isEmpty) {
      results = controller.listStock;
    } else {
      results = controller.listStock
          .where((user) => user.namaProduk
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      controller.foundListStock.value = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          shrinkWrap: true,
          slivers: [
            Obx(
              () => SliverAppBar(
                automaticallyImplyLeading: false,
                titleSpacing: 0,
                title: controller.isObscure.value == true
                    ? TextField(
                        style: tBody.copyWith(
                            fontSize: 16, fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.only(left: 5, bottom: 5),
                          errorStyle: tBody.copyWith(fontSize: 12, height: 0.8),
                          hintText: "Cth. meja bundar",
                          hintStyle: tBody.copyWith(
                              color: Colors.grey.withOpacity(0.6),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                          isDense: true,
                        ),
                        onChanged: (value) => _runFilter(value),
                      )
                    : Text(
                        toko,
                        style: titleStyle.copyWith(
                          fontSize: 18,
                        ),
                      ),
                backgroundColor: Colors.white,
                elevation: 0.5,
                actions: [
                  GestureDetector(
                    onTap: () {
                      controller.isObscure.value = !controller.isObscure.value;
                    },
                    child: HeroIcon(
                      controller.isObscure.value == false
                          ? HeroIcons.magnifyingGlass
                          : HeroIcons.xMark,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  )
                ],
                pinned: false,
                snap: true,
                floating: true,
              ),
            ),
            BlocProvider(
              create: (context) => stockCubit,
              child: BlocListener<StockCubit, StockState>(
                listener: (context, state) {
                  state.maybeMap(
                    orElse: () {},
                    dataStock: (value) {
                      controller.listStock
                          .addAll(value.stockResponseModel.dataStock);
                    },
                  );
                },
                child: Obx(
                  () => controller.foundListStock.isNotEmpty
                      ? SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                              var data = controller.foundListStock[index];
                              return Container(
                                margin: EdgeInsets.only(
                                    bottom: index ==
                                            controller.foundListStock.length - 1
                                        ? 80
                                        : 10,
                                    left: 5,
                                    right: 10),
                                child: InkWell(
                                  splashColor: Colors.grey.withOpacity(0.2),
                                  onTap: () {
                                    // Future.delayed(
                                    //   const Duration(milliseconds: 100),
                                    //   () {
                                    //     modalFilter(context);
                                    //   },
                                    // );
                                  },
                                  child: CardProduct(
                                    action: "Tambah",
                                    namaProduct: data.namaProduk,
                                    stock: data.hargaBeli.toString(),
                                    ontap: () {
                                      Get.to(DetailCashier(
                                        id: data.id,
                                      ));
                                    },
                                  ),
                                ),
                              );
                            },
                            childCount: controller.foundListStock.length,
                          ),
                        )
                      : SliverToBoxAdapter(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Kosong',
                              style: titleStyle.copyWith(
                                  color: Colors.red, fontSize: 12),
                            ),
                          ),
                        ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          MdiIcons.packageVariantClosedPlus,
          color: primaryColor,
          size: 40,
        ),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const TambahStockPage()),
        ),
      ),
    );
  }
}
