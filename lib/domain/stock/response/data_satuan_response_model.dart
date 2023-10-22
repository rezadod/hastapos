import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_satuan_response_model.freezed.dart';
part 'data_satuan_response_model.g.dart';

@freezed
class DataSatuanResponseModel with _$DataSatuanResponseModel {
  factory DataSatuanResponseModel({
    @Default([]) @JsonKey(name: 'satuan_ecer') List<Satuan> satuanEcer,
    @Default([]) @JsonKey(name: 'satuan_grosir') List<Satuan> satuanGrosir,
  }) = _DataSatuanResponseModel;

  factory DataSatuanResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DataSatuanResponseModelFromJson(json);
}

@freezed
class Satuan with _$Satuan {
  factory Satuan({
    @Default(0) int id,
    @Default('') @JsonKey(name: 'nama_satuan') String namaSatuan,
  }) = _Satuan;

  factory Satuan.fromJson(Map<String, dynamic> json) => _$SatuanFromJson(json);
}
