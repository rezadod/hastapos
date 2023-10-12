import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_stock_response_model.freezed.dart';
part 'detail_stock_response_model.g.dart';

@freezed
class DetailStockResponseModel with _$DetailStockResponseModel {
  factory DetailStockResponseModel({
    @JsonKey(name: 'data_stock') DetailStock? detailStock,
    @Default([]) List<Satuan> satuan,
  }) = _DetailStockResponseModel;

  factory DetailStockResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DetailStockResponseModelFromJson(json);
}

@freezed
class DetailStock with _$DetailStock {
  factory DetailStock({
    @Default('') @JsonKey(name: 'nama_satuan') String namaSatuan,
    @Default(0) @JsonKey(name: 'id') int id,
    @Default('') @JsonKey(name: 'nama_produk') String namaProduk,
    @Default(0) @JsonKey(name: 'harga_beli') int hargaBeli,
    @Default(0) @JsonKey(name: 'kuantiti') int kuantiti,
    @Default(0) @JsonKey(name: 'isi_per_pack') int isiPerPack,
    @Default(0) @JsonKey(name: 'harga_grosir') int hargaGrosir,
    @Default(0) @JsonKey(name: 'satuan_ecer') int satuanEcer,
    @Default(0) @JsonKey(name: 'harga_ecer') int hargaEcer,
    @Default(0) @JsonKey(name: 'toko_id') int tokoId,
    @Default(0) @JsonKey(name: 'username_input') int usernameInput,
    @Default('') @JsonKey(name: 'created_at') String createdAt,
    @Default('') @JsonKey(name: 'updated_at') String updatedAt,
    @Default(0) @JsonKey(name: 'satuan_grosir') int satuanGrosir,
  }) = _DetailStock;

  factory DetailStock.fromJson(Map<String, dynamic> json) =>
      _$DetailStockFromJson(json);
}

@freezed
class Satuan with _$Satuan {
  factory Satuan({
    @Default(0) int id,
    @Default('') String satuan,
    @Default(0) int harga,
  }) = _Satuan;

  factory Satuan.fromJson(Map<String, dynamic> json) => _$SatuanFromJson(json);
}
