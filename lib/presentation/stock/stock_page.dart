// ignore_for_file: sort_child_properties_last
import 'package:hastapos/domain/keranjang/request/keranjang_request_model.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hastapos/presentation/controller/card_product.dart';
import 'package:hastapos/presentation/keranjang_page.dart';
import 'package:hastapos/presentation/stock/edit_stock_page.dart';
import 'package:hastapos/presentation/stock/tambah_stock_page.dart';
import 'package:hastapos/utils/style.dart';

import '../controller/controller.dart';

class StockPage extends StatefulWidget {
  const StockPage({super.key});

  @override
  State<StockPage> createState() => _StockPageState();
}

class _StockPageState extends State<StockPage> {
  final controller = Get.put(Controller());
  List<KeranjangRequestModel> dataArray = [];

  final List<Map<String, dynamic>> _allUsers = [
    {"id": 1, "name": "Cat", "age": 293123},
    {"id": 2, "name": "Peralon", "age": 4022},
    {"id": 3, "name": "Kursi", "age": 53},
  ];

  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    // at the beginning, all users are shown
    _foundUsers = _allUsers;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
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
                        'Stok Barang',
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
            _foundUsers.isNotEmpty
                ? SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        var data = _foundUsers[index];
                        return Container(
                            margin: EdgeInsets.only(
                                bottom:
                                    index == _foundUsers.length - 1 ? 80 : 10,
                                left: 5,
                                right: 10),
                            child: CardProduct(
                              action: 'Ubah',
                              namaProduct: data['name'],
                              stock: data['age'].toString(),
                              ontap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const EditStockPage(),
                                  ),
                                );
                              },
                            ));
                      },
                      childCount: _foundUsers.length,
                    ),
                  )
                : SliverToBoxAdapter(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Kosong',
                        style: titleStyle.copyWith(
                            color: Colors.red, fontSize: 40),
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
