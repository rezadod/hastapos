import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_response_model.freezed.dart';
part 'stock_response_model.g.dart';

@freezed
class StockResponseModel with _$StockResponseModel {
  factory StockResponseModel(
      {@Default([])
      @JsonKey(name: 'data_stock')
      List<DataStock> dataStock}) = _StockResponseModel;

  factory StockResponseModel.fromJson(Map<String, dynamic> json) =>
      _$StockResponseModelFromJson(json);
}

@freezed
class DataStock with _$DataStock {
  factory DataStock({
    @Default(0) @JsonKey(name: 'id') int id,
    @Default("") @JsonKey(name: 'nama_produk') String namaProduk,
    @Default(0) @JsonKey(name: 'harga_beli') int hargaBeli,
    @Default(0) @JsonKey(name: 'kuantiti') int kuantiti,
    @Default(0) @JsonKey(name: 'isi_per_pack') int isiPerPack,
    @Default(0) @JsonKey(name: 'harga_per_pcs') int hargaPerPcs,
    @Default(0) @JsonKey(name: 'harga_per_pack') int hargaPerPack,
    @Default(0) @JsonKey(name: 'toko_id') int tokoId,
    @Default(0) @JsonKey(name: 'username_input') int usernameInput,
    @Default("") @JsonKey(name: 'created_at') String createdAt,
    @Default("") @JsonKey(name: 'updated_at') String updatedAt,
  }) = _DataStock;

  factory DataStock.fromJson(Map<String, dynamic> json) =>
      _$DataStockFromJson(json);
}
