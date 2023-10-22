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
import 'package:sliding_sheet2/sliding_sheet2.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import '../utils/price_format.dart';
import 'controller/controller.dart';

class CashierPage extends StatefulWidget {
  const CashierPage({super.key});

  @override
  State<CashierPage> createState() => _CashierPageState();
}

class _CashierPageState extends State<CashierPage> {
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
    controller.foundListCashier = controller.listcashier;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<DataStock> results = [];
    if (enteredKeyword.isEmpty) {
      results = controller.listcashier;
    } else {
      results = controller.listcashier
          .where((user) => user.namaProduk
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      controller.foundListCashier.value = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            SizedBox(
              height: 100,
              child: DrawerHeader(
                child: Row(
                  children: [
                    ProfilePicture(
                      name: username,
                      radius: 25,
                      fontsize: 21,
                      random: true,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            username,
                            style: tBody.copyWith(
                                color: Colors.black, fontSize: 14),
                          ),
                          Text(
                            "username",
                            style: tBody.copyWith(
                                color: Colors.black,
                                fontStyle: FontStyle.italic),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Stock',
                  style: tBody.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const HeroIcon(HeroIcons.archiveBox),
              visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
              dense: true,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const StockPage()),
                );
              },
              title: Text(
                'Stock Barang',
                style: tBody,
              ),
            ),
            Divider(),
            Container(
              margin: const EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Laporan',
                  style: tBody.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const HeroIcon(HeroIcons.chartPie),
              visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
              dense: true,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ReportPage()),
              ),
              title: Text(
                'Penjualan',
                style: tBody,
              ),
            ),
          ],
        ),
      ),
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
                leading: Builder(
                  builder: (BuildContext context) {
                    return IconButton(
                      icon: const HeroIcon(
                        HeroIcons.bars4,
                        style: HeroIconStyle.solid,
                        color: Colors.black,
                        size: 30,
                      ),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      tooltip: MaterialLocalizations.of(context)
                          .openAppDrawerTooltip,
                    );
                  },
                ),
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
                      controller.listcashier
                          .addAll(value.stockResponseModel.dataStock);
                    },
                  );
                },
                child: Obx(
                  () => controller.foundListCashier.isNotEmpty
                      ? SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                              var data = controller.foundListCashier[index];
                              return Container(
                                margin: EdgeInsets.only(
                                    bottom: index ==
                                            controller.foundListCashier.length -
                                                1
                                        ? 80
                                        : 10,
                                    left: 5,
                                    right: 10),
                                child: InkWell(
                                  splashColor: Colors.grey.withOpacity(0.2),
                                  onTap: () {
                                    Future.delayed(
                                      const Duration(milliseconds: 100),
                                      () {
                                        modalFilter(context);
                                      },
                                    );
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
                            childCount: controller.foundListCashier.length,
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
      floatingActionButton: Obx(
        () => controller.listKeranjang.isEmpty
            ? const SizedBox()
            : FloatingActionButton(
                child: badges.Badge(
                  badgeStyle:
                      const badges.BadgeStyle(badgeColor: secondaryColor),
                  badgeContent: Text(
                    controller.listKeranjang.length.toString(),
                    style: tBody.copyWith(color: Colors.white, fontSize: 10),
                  ),
                  child: const HeroIcon(
                    HeroIcons.shoppingBag,
                    color: primaryColor,
                    size: 30,
                  ),
                ),
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                onPressed: () {
                  Get.to(KeranjangPage());
                  print(jsonEncode(controller.listKeranjang));
                }),
      ),
    );
  }

  Future modalFilter(context) => showSlidingBottomSheet(
        context,
        builder: (context) => SlidingSheetDialog(
          cornerRadius: 15,
          avoidStatusBar: true,
          snapSpec: const SnapSpec(
            snappings: [0.7, 0.95],
          ),
          builder: buildSheet,
          headerBuilder: header,
          // footerBuilder: footerBuildSheet,
        ),
      );
  Widget header(BuildContext context, SheetState state) => StatefulBuilder(
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
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Detail Barang",
                      style: titleStyle,
                    ),
                    const Divider()
                  ],
                ),
              ),
            ),
          );
        },
      );

  Widget buildSheet(context, state) => Material(
        color: Colors.white,
        child: StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Ecer',
                        style: tBody,
                      ),
                      Text(
                        CurrencyFormat.convertToIdr(32131231, 0),
                        style: tBody.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Spacer(),
                      GestureDetector(
                        onTap: () {},
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
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '23',
                        style: tBody.copyWith(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
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
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider()
                ],
              ),
            );
          },
        ),
      );
}
