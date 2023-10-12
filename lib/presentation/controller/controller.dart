import 'package:get/get.dart';
import 'package:hastapos/domain/stock/response/stock_response_model.dart';

class Controller extends GetxController {
  // ! REGISTER
  var selectedJenisToko = 0.obs;
  var selectedStatusToko = 0.obs;
  //

  var isObscure = false.obs;
  var isSelected = false.obs;
  // final quantity = 0.obs;
  //! DASHBOARD
  var listStock = <DataStock>[].obs;
  var foundListStock = <DataStock>[].obs;

  // ! DETAIL DASHBOARD
  final input_quantity = 0.obs;
  var selected_id = 0.obs;
  var selected_harga = 0.obs;
  var listKeranjang = [].obs;
  var jenisSatuan = "".obs;
}
