import 'package:get/get.dart';
import 'package:hastapos/domain/stock/response/stock_response_model.dart';

class Controller extends GetxController {
  // ! REGISTER
  var selectedJenisToko = 0.obs;
  var selectedStatusToko = 0.obs;

  var isObscure = false.obs;
  var isSelected = false.obs;

  //! CASHSER
  var listcashier = <DataStock>[].obs;
  var foundListCashier = <DataStock>[].obs;

  // ! DETAIL DASHBOARD
  final input_quantity = 0.obs;
  var selected_id = 0.obs;
  var selected_harga = 0.obs;
  var listKeranjang = [].obs;
  var jenisSatuan = "".obs;
  var namaBarang = "".obs;
  var selectedJeninsPembelianId = 0.obs;

  //! TAMBAH STOCK
  var selectedGrosir = 0.obs;
  var selectedEcer = 0.obs;

  // ! STOCK
  var listStock = <DataStock>[].obs;
  var foundListStock = <DataStock>[].obs;
}
