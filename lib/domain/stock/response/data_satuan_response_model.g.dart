// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_satuan_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataSatuanResponseModelImpl _$$DataSatuanResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DataSatuanResponseModelImpl(
      satuanEcer: (json['satuan_ecer'] as List<dynamic>?)
              ?.map((e) => Satuan.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      satuanGrosir: (json['satuan_grosir'] as List<dynamic>?)
              ?.map((e) => Satuan.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$DataSatuanResponseModelImplToJson(
        _$DataSatuanResponseModelImpl instance) =>
    <String, dynamic>{
      'satuan_ecer': instance.satuanEcer,
      'satuan_grosir': instance.satuanGrosir,
    };

_$SatuanImpl _$$SatuanImplFromJson(Map<String, dynamic> json) => _$SatuanImpl(
      id: json['id'] as int? ?? 0,
      namaSatuan: json['nama_satuan'] as String? ?? '',
    );

Map<String, dynamic> _$$SatuanImplToJson(_$SatuanImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama_satuan': instance.namaSatuan,
    };
