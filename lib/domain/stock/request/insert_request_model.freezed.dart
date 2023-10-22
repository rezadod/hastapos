// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'insert_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InsertRequestModel _$InsertRequestModelFromJson(Map<String, dynamic> json) {
  return _InsertRequestModel.fromJson(json);
}

/// @nodoc
mixin _$InsertRequestModel {
  @JsonKey(name: 'nama_produk')
  String get namaProduk => throw _privateConstructorUsedError;
  @JsonKey(name: 'harga_beli')
  int get hargaBeli => throw _privateConstructorUsedError;
  @JsonKey(name: 'kuantiti')
  int get kuantiti => throw _privateConstructorUsedError;
  @JsonKey(name: 'isi_per_pack')
  int get isiPerPack => throw _privateConstructorUsedError;
  @JsonKey(name: 'harga_grosir')
  int get hargaGrosir => throw _privateConstructorUsedError;
  @JsonKey(name: 'harga_ecer')
  int get hargaEcer => throw _privateConstructorUsedError;
  @JsonKey(name: 'satuan_grosir')
  int get satuanGrosir => throw _privateConstructorUsedError;
  @JsonKey(name: 'satuan_ecer')
  int get satuanEcer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InsertRequestModelCopyWith<InsertRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsertRequestModelCopyWith<$Res> {
  factory $InsertRequestModelCopyWith(
          InsertRequestModel value, $Res Function(InsertRequestModel) then) =
      _$InsertRequestModelCopyWithImpl<$Res, InsertRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'nama_produk') String namaProduk,
      @JsonKey(name: 'harga_beli') int hargaBeli,
      @JsonKey(name: 'kuantiti') int kuantiti,
      @JsonKey(name: 'isi_per_pack') int isiPerPack,
      @JsonKey(name: 'harga_grosir') int hargaGrosir,
      @JsonKey(name: 'harga_ecer') int hargaEcer,
      @JsonKey(name: 'satuan_grosir') int satuanGrosir,
      @JsonKey(name: 'satuan_ecer') int satuanEcer});
}

/// @nodoc
class _$InsertRequestModelCopyWithImpl<$Res, $Val extends InsertRequestModel>
    implements $InsertRequestModelCopyWith<$Res> {
  _$InsertRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? namaProduk = null,
    Object? hargaBeli = null,
    Object? kuantiti = null,
    Object? isiPerPack = null,
    Object? hargaGrosir = null,
    Object? hargaEcer = null,
    Object? satuanGrosir = null,
    Object? satuanEcer = null,
  }) {
    return _then(_value.copyWith(
      namaProduk: null == namaProduk
          ? _value.namaProduk
          : namaProduk // ignore: cast_nullable_to_non_nullable
              as String,
      hargaBeli: null == hargaBeli
          ? _value.hargaBeli
          : hargaBeli // ignore: cast_nullable_to_non_nullable
              as int,
      kuantiti: null == kuantiti
          ? _value.kuantiti
          : kuantiti // ignore: cast_nullable_to_non_nullable
              as int,
      isiPerPack: null == isiPerPack
          ? _value.isiPerPack
          : isiPerPack // ignore: cast_nullable_to_non_nullable
              as int,
      hargaGrosir: null == hargaGrosir
          ? _value.hargaGrosir
          : hargaGrosir // ignore: cast_nullable_to_non_nullable
              as int,
      hargaEcer: null == hargaEcer
          ? _value.hargaEcer
          : hargaEcer // ignore: cast_nullable_to_non_nullable
              as int,
      satuanGrosir: null == satuanGrosir
          ? _value.satuanGrosir
          : satuanGrosir // ignore: cast_nullable_to_non_nullable
              as int,
      satuanEcer: null == satuanEcer
          ? _value.satuanEcer
          : satuanEcer // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InsertRequestModelImplCopyWith<$Res>
    implements $InsertRequestModelCopyWith<$Res> {
  factory _$$InsertRequestModelImplCopyWith(_$InsertRequestModelImpl value,
          $Res Function(_$InsertRequestModelImpl) then) =
      __$$InsertRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'nama_produk') String namaProduk,
      @JsonKey(name: 'harga_beli') int hargaBeli,
      @JsonKey(name: 'kuantiti') int kuantiti,
      @JsonKey(name: 'isi_per_pack') int isiPerPack,
      @JsonKey(name: 'harga_grosir') int hargaGrosir,
      @JsonKey(name: 'harga_ecer') int hargaEcer,
      @JsonKey(name: 'satuan_grosir') int satuanGrosir,
      @JsonKey(name: 'satuan_ecer') int satuanEcer});
}

/// @nodoc
class __$$InsertRequestModelImplCopyWithImpl<$Res>
    extends _$InsertRequestModelCopyWithImpl<$Res, _$InsertRequestModelImpl>
    implements _$$InsertRequestModelImplCopyWith<$Res> {
  __$$InsertRequestModelImplCopyWithImpl(_$InsertRequestModelImpl _value,
      $Res Function(_$InsertRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? namaProduk = null,
    Object? hargaBeli = null,
    Object? kuantiti = null,
    Object? isiPerPack = null,
    Object? hargaGrosir = null,
    Object? hargaEcer = null,
    Object? satuanGrosir = null,
    Object? satuanEcer = null,
  }) {
    return _then(_$InsertRequestModelImpl(
      namaProduk: null == namaProduk
          ? _value.namaProduk
          : namaProduk // ignore: cast_nullable_to_non_nullable
              as String,
      hargaBeli: null == hargaBeli
          ? _value.hargaBeli
          : hargaBeli // ignore: cast_nullable_to_non_nullable
              as int,
      kuantiti: null == kuantiti
          ? _value.kuantiti
          : kuantiti // ignore: cast_nullable_to_non_nullable
              as int,
      isiPerPack: null == isiPerPack
          ? _value.isiPerPack
          : isiPerPack // ignore: cast_nullable_to_non_nullable
              as int,
      hargaGrosir: null == hargaGrosir
          ? _value.hargaGrosir
          : hargaGrosir // ignore: cast_nullable_to_non_nullable
              as int,
      hargaEcer: null == hargaEcer
          ? _value.hargaEcer
          : hargaEcer // ignore: cast_nullable_to_non_nullable
              as int,
      satuanGrosir: null == satuanGrosir
          ? _value.satuanGrosir
          : satuanGrosir // ignore: cast_nullable_to_non_nullable
              as int,
      satuanEcer: null == satuanEcer
          ? _value.satuanEcer
          : satuanEcer // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InsertRequestModelImpl implements _InsertRequestModel {
  _$InsertRequestModelImpl(
      {@JsonKey(name: 'nama_produk') this.namaProduk = '',
      @JsonKey(name: 'harga_beli') this.hargaBeli = 0,
      @JsonKey(name: 'kuantiti') this.kuantiti = 0,
      @JsonKey(name: 'isi_per_pack') this.isiPerPack = 0,
      @JsonKey(name: 'harga_grosir') this.hargaGrosir = 0,
      @JsonKey(name: 'harga_ecer') this.hargaEcer = 0,
      @JsonKey(name: 'satuan_grosir') this.satuanGrosir = 0,
      @JsonKey(name: 'satuan_ecer') this.satuanEcer = 0});

  factory _$InsertRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InsertRequestModelImplFromJson(json);

  @override
  @JsonKey(name: 'nama_produk')
  final String namaProduk;
  @override
  @JsonKey(name: 'harga_beli')
  final int hargaBeli;
  @override
  @JsonKey(name: 'kuantiti')
  final int kuantiti;
  @override
  @JsonKey(name: 'isi_per_pack')
  final int isiPerPack;
  @override
  @JsonKey(name: 'harga_grosir')
  final int hargaGrosir;
  @override
  @JsonKey(name: 'harga_ecer')
  final int hargaEcer;
  @override
  @JsonKey(name: 'satuan_grosir')
  final int satuanGrosir;
  @override
  @JsonKey(name: 'satuan_ecer')
  final int satuanEcer;

  @override
  String toString() {
    return 'InsertRequestModel(namaProduk: $namaProduk, hargaBeli: $hargaBeli, kuantiti: $kuantiti, isiPerPack: $isiPerPack, hargaGrosir: $hargaGrosir, hargaEcer: $hargaEcer, satuanGrosir: $satuanGrosir, satuanEcer: $satuanEcer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsertRequestModelImpl &&
            (identical(other.namaProduk, namaProduk) ||
                other.namaProduk == namaProduk) &&
            (identical(other.hargaBeli, hargaBeli) ||
                other.hargaBeli == hargaBeli) &&
            (identical(other.kuantiti, kuantiti) ||
                other.kuantiti == kuantiti) &&
            (identical(other.isiPerPack, isiPerPack) ||
                other.isiPerPack == isiPerPack) &&
            (identical(other.hargaGrosir, hargaGrosir) ||
                other.hargaGrosir == hargaGrosir) &&
            (identical(other.hargaEcer, hargaEcer) ||
                other.hargaEcer == hargaEcer) &&
            (identical(other.satuanGrosir, satuanGrosir) ||
                other.satuanGrosir == satuanGrosir) &&
            (identical(other.satuanEcer, satuanEcer) ||
                other.satuanEcer == satuanEcer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, namaProduk, hargaBeli, kuantiti,
      isiPerPack, hargaGrosir, hargaEcer, satuanGrosir, satuanEcer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InsertRequestModelImplCopyWith<_$InsertRequestModelImpl> get copyWith =>
      __$$InsertRequestModelImplCopyWithImpl<_$InsertRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InsertRequestModelImplToJson(
      this,
    );
  }
}

abstract class _InsertRequestModel implements InsertRequestModel {
  factory _InsertRequestModel(
          {@JsonKey(name: 'nama_produk') final String namaProduk,
          @JsonKey(name: 'harga_beli') final int hargaBeli,
          @JsonKey(name: 'kuantiti') final int kuantiti,
          @JsonKey(name: 'isi_per_pack') final int isiPerPack,
          @JsonKey(name: 'harga_grosir') final int hargaGrosir,
          @JsonKey(name: 'harga_ecer') final int hargaEcer,
          @JsonKey(name: 'satuan_grosir') final int satuanGrosir,
          @JsonKey(name: 'satuan_ecer') final int satuanEcer}) =
      _$InsertRequestModelImpl;

  factory _InsertRequestModel.fromJson(Map<String, dynamic> json) =
      _$InsertRequestModelImpl.fromJson;

  @override
  @JsonKey(name: 'nama_produk')
  String get namaProduk;
  @override
  @JsonKey(name: 'harga_beli')
  int get hargaBeli;
  @override
  @JsonKey(name: 'kuantiti')
  int get kuantiti;
  @override
  @JsonKey(name: 'isi_per_pack')
  int get isiPerPack;
  @override
  @JsonKey(name: 'harga_grosir')
  int get hargaGrosir;
  @override
  @JsonKey(name: 'harga_ecer')
  int get hargaEcer;
  @override
  @JsonKey(name: 'satuan_grosir')
  int get satuanGrosir;
  @override
  @JsonKey(name: 'satuan_ecer')
  int get satuanEcer;
  @override
  @JsonKey(ignore: true)
  _$$InsertRequestModelImplCopyWith<_$InsertRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
