import 'package:freezed_annotation/freezed_annotation.dart';

part 'keranjang_request_model.freezed.dart';
part 'keranjang_request_model.g.dart';

@freezed
class KeranjangRequestModel with _$KeranjangRequestModel {
  factory KeranjangRequestModel({
    @Default(0) @JsonKey(name: 'produk_id') int produkId,
    @Default(0) int kuantiti,
    @Default(0) @JsonKey(name: 'jenis_pembelian') int jenisPembelian,
    @Default("") String namaProduk,
    @Default("") String satuan,
    @Default(0) int harga,
  }) = _KeranjangRequestModel;

  factory KeranjangRequestModel.fromJson(Map<String, dynamic> json) =>
      _$KeranjangRequestModelFromJson(json);
}
