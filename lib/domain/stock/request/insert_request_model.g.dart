// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insert_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InsertRequestModelImpl _$$InsertRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InsertRequestModelImpl(
      namaProduk: json['nama_produk'] as String? ?? '',
      hargaBeli: json['harga_beli'] as int? ?? 0,
      kuantiti: json['kuantiti'] as int? ?? 0,
      isiPerPack: json['isi_per_pack'] as int? ?? 0,
      hargaGrosir: json['harga_grosir'] as int? ?? 0,
      hargaEcer: json['harga_ecer'] as int? ?? 0,
      satuanGrosir: json['satuan_grosir'] as int? ?? 0,
      satuanEcer: json['satuan_ecer'] as int? ?? 0,
    );

Map<String, dynamic> _$$InsertRequestModelImplToJson(
        _$InsertRequestModelImpl instance) =>
    <String, dynamic>{
      'nama_produk': instance.namaProduk,
      'harga_beli': instance.hargaBeli,
      'kuantiti': instance.kuantiti,
      'isi_per_pack': instance.isiPerPack,
      'harga_grosir': instance.hargaGrosir,
      'harga_ecer': instance.hargaEcer,
      'satuan_grosir': instance.satuanGrosir,
      'satuan_ecer': instance.satuanEcer,
    };
