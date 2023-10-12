import 'package:freezed_annotation/freezed_annotation.dart';

part 'keranjang_request_model.freezed.dart';
part 'keranjang_request_model.g.dart';

@freezed
class KeranjangRequestModel with _$KeranjangRequestModel {
  factory KeranjangRequestModel({
    @Default(0) int id,
    @Default(0) int qty,
    @Default("") String satuan,
    @Default(0) int harga,
  }) = _KeranjangRequestModel;

  factory KeranjangRequestModel.fromJson(Map<String, dynamic> json) =>
      _$KeranjangRequestModelFromJson(json);
}
