// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_stock_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailStockResponseModelImpl _$$DetailStockResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailStockResponseModelImpl(
      detailStock: json['data_stock'] == null
          ? null
          : DetailStock.fromJson(json['data_stock'] as Map<String, dynamic>),
      satuan: (json['satuan'] as List<dynamic>?)
              ?.map((e) => Satuan.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$DetailStockResponseModelImplToJson(
        _$DetailStockResponseModelImpl instance) =>
    <String, dynamic>{
      'data_stock': instance.detailStock,
      'satuan': instance.satuan,
    };

_$DetailStockImpl _$$DetailStockImplFromJson(Map<String, dynamic> json) =>
    _$DetailStockImpl(
      namaSatuan: json['nama_satuan'] as String? ?? '',
      id: json['id'] as int? ?? 0,
      namaProduk: json['nama_produk'] as String? ?? '',
      hargaBeli: json['harga_beli'] as int? ?? 0,
      kuantiti: json['kuantiti'] as int? ?? 0,
      isiPerPack: json['isi_per_pack'] as int? ?? 0,
      hargaGrosir: json['harga_grosir'] as int? ?? 0,
      satuanEcer: json['satuan_ecer'] as int? ?? 0,
      hargaEcer: json['harga_ecer'] as int? ?? 0,
      tokoId: json['toko_id'] as int? ?? 0,
      usernameInput: json['username_input'] as int? ?? 0,
      createdAt: json['created_at'] as String? ?? '',
      updatedAt: json['updated_at'] as String? ?? '',
      satuanGrosir: json['satuan_grosir'] as int? ?? 0,
    );

Map<String, dynamic> _$$DetailStockImplToJson(_$DetailStockImpl instance) =>
    <String, dynamic>{
      'nama_satuan': instance.namaSatuan,
      'id': instance.id,
      'nama_produk': instance.namaProduk,
      'harga_beli': instance.hargaBeli,
      'kuantiti': instance.kuantiti,
      'isi_per_pack': instance.isiPerPack,
      'harga_grosir': instance.hargaGrosir,
      'satuan_ecer': instance.satuanEcer,
      'harga_ecer': instance.hargaEcer,
      'toko_id': instance.tokoId,
      'username_input': instance.usernameInput,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'satuan_grosir': instance.satuanGrosir,
    };

_$SatuanImpl _$$SatuanImplFromJson(Map<String, dynamic> json) => _$SatuanImpl(
      id: json['id'] as int? ?? 0,
      satuan: json['satuan'] as String? ?? '',
      harga: json['harga'] as int? ?? 0,
    );

Map<String, dynamic> _$$SatuanImplToJson(_$SatuanImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'satuan': instance.satuan,
      'harga': instance.harga,
    };
