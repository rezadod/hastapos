// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StockResponseModelImpl _$$StockResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StockResponseModelImpl(
      dataStock: (json['data_stock'] as List<dynamic>?)
              ?.map((e) => DataStock.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$StockResponseModelImplToJson(
        _$StockResponseModelImpl instance) =>
    <String, dynamic>{
      'data_stock': instance.dataStock,
    };

_$DataStockImpl _$$DataStockImplFromJson(Map<String, dynamic> json) =>
    _$DataStockImpl(
      id: json['id'] as int? ?? 0,
      namaProduk: json['nama_produk'] as String? ?? "",
      hargaBeli: json['harga_beli'] as int? ?? 0,
      kuantiti: json['kuantiti'] as int? ?? 0,
      isiPerPack: json['isi_per_pack'] as int? ?? 0,
      hargaPerPcs: json['harga_per_pcs'] as int? ?? 0,
      hargaPerPack: json['harga_per_pack'] as int? ?? 0,
      tokoId: json['toko_id'] as int? ?? 0,
      usernameInput: json['username_input'] as int? ?? 0,
      createdAt: json['created_at'] as String? ?? "",
      updatedAt: json['updated_at'] as String? ?? "",
    );

Map<String, dynamic> _$$DataStockImplToJson(_$DataStockImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama_produk': instance.namaProduk,
      'harga_beli': instance.hargaBeli,
      'kuantiti': instance.kuantiti,
      'isi_per_pack': instance.isiPerPack,
      'harga_per_pcs': instance.hargaPerPcs,
      'harga_per_pack': instance.hargaPerPack,
      'toko_id': instance.tokoId,
      'username_input': instance.usernameInput,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
