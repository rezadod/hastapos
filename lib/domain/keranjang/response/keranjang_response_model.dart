import 'package:freezed_annotation/freezed_annotation.dart';

part 'keranjang_response_model.freezed.dart';
part 'keranjang_response_model.g.dart';

@freezed
class KeranjangResponseModel with _$KeranjangResponseModel {
  factory KeranjangResponseModel({
    @Default(0) int id,
    @Default([]) @JsonKey(name: 'invoice') List<Invoice> invoice,
    @Default(0) @JsonKey(name: 'total_harga') int totalHarga,
    @Default('') @JsonKey(name: 'nama_kasir') String namaKasir,
  }) = _KeranjangResponseModel;

  factory KeranjangResponseModel.fromJson(Map<String, dynamic> json) =>
      _$KeranjangResponseModelFromJson(json);
}

@freezed
class Invoice with _$Invoice {
  factory Invoice({
    @Default(0) int id,
    @Default("") @JsonKey(name: 'nama_barang') String namaBarang,
    @Default("") @JsonKey(name: 'kuantiti') String kuantiti,
    @Default("") @JsonKey(name: 'jenis_pembelian') String jenisPembelian,
    @Default("") @JsonKey(name: 'satuan') String satuan,
  }) = _Invoice;

  factory Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);
}
