import 'package:freezed_annotation/freezed_annotation.dart';

part 'insert_request_model.freezed.dart';
part 'insert_request_model.g.dart';

@freezed
class InsertRequestModel with _$InsertRequestModel {
  factory InsertRequestModel({
    @Default('') @JsonKey(name: 'nama_produk') String namaProduk,
    @Default(0) @JsonKey(name: 'harga_beli') int hargaBeli,
    @Default(0) @JsonKey(name: 'kuantiti') int kuantiti,
    @Default(0) @JsonKey(name: 'isi_per_pack') int isiPerPack,
    @Default(0) @JsonKey(name: 'harga_grosir') int hargaGrosir,
    @Default(0) @JsonKey(name: 'harga_ecer') int hargaEcer,
    @Default(0) @JsonKey(name: 'satuan_grosir') int satuanGrosir,
    @Default(0) @JsonKey(name: 'satuan_ecer') int satuanEcer,
  }) = _InsertRequestModel;

  factory InsertRequestModel.fromJson(Map<String, dynamic> json) =>
      _$InsertRequestModelFromJson(json);
}
