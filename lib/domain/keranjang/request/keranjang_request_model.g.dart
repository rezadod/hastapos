// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keranjang_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KeranjangRequestModelImpl _$$KeranjangRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$KeranjangRequestModelImpl(
      id: json['id'] as int? ?? 0,
      qty: json['qty'] as int? ?? 0,
      satuan: json['satuan'] as String? ?? "",
      harga: json['harga'] as int? ?? 0,
    );

Map<String, dynamic> _$$KeranjangRequestModelImplToJson(
        _$KeranjangRequestModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'qty': instance.qty,
      'satuan': instance.satuan,
      'harga': instance.harga,
    };
