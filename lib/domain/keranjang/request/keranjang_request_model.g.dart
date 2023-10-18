// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keranjang_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KeranjangRequestModelImpl _$$KeranjangRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$KeranjangRequestModelImpl(
      produkId: json['produk_id'] as int? ?? 0,
      kuantiti: json['kuantiti'] as int? ?? 0,
      jenisPembelian: json['jenis_pembelian'] as int? ?? 0,
      namaProduk: json['namaProduk'] as String? ?? "",
      satuan: json['satuan'] as String? ?? "",
      harga: json['harga'] as int? ?? 0,
    );

Map<String, dynamic> _$$KeranjangRequestModelImplToJson(
        _$KeranjangRequestModelImpl instance) =>
    <String, dynamic>{
      'produk_id': instance.produkId,
      'kuantiti': instance.kuantiti,
      'jenis_pembelian': instance.jenisPembelian,
      'namaProduk': instance.namaProduk,
      'satuan': instance.satuan,
      'harga': instance.harga,
    };
