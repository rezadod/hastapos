// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keranjang_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KeranjangResponseModelImpl _$$KeranjangResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$KeranjangResponseModelImpl(
      id: json['id'] as int? ?? 0,
      invoice: (json['invoice'] as List<dynamic>?)
              ?.map((e) => Invoice.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalHarga: json['total_harga'] as int? ?? 0,
      namaKasir: json['nama_kasir'] as String? ?? '',
    );

Map<String, dynamic> _$$KeranjangResponseModelImplToJson(
        _$KeranjangResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'invoice': instance.invoice,
      'total_harga': instance.totalHarga,
      'nama_kasir': instance.namaKasir,
    };

_$InvoiceImpl _$$InvoiceImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceImpl(
      id: json['id'] as int? ?? 0,
      namaBarang: json['nama_barang'] as String? ?? "",
      kuantiti: json['kuantiti'] as String? ?? "",
      jenisPembelian: json['jenis_pembelian'] as String? ?? "",
      satuan: json['satuan'] as String? ?? "",
    );

Map<String, dynamic> _$$InvoiceImplToJson(_$InvoiceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama_barang': instance.namaBarang,
      'kuantiti': instance.kuantiti,
      'jenis_pembelian': instance.jenisPembelian,
      'satuan': instance.satuan,
    };
