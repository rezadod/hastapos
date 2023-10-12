// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_stock_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailStockResponseModel _$DetailStockResponseModelFromJson(
    Map<String, dynamic> json) {
  return _DetailStockResponseModel.fromJson(json);
}

/// @nodoc
mixin _$DetailStockResponseModel {
  @JsonKey(name: 'data_stock')
  DetailStock? get detailStock => throw _privateConstructorUsedError;
  List<Satuan> get satuan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailStockResponseModelCopyWith<DetailStockResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailStockResponseModelCopyWith<$Res> {
  factory $DetailStockResponseModelCopyWith(DetailStockResponseModel value,
          $Res Function(DetailStockResponseModel) then) =
      _$DetailStockResponseModelCopyWithImpl<$Res, DetailStockResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data_stock') DetailStock? detailStock,
      List<Satuan> satuan});

  $DetailStockCopyWith<$Res>? get detailStock;
}

/// @nodoc
class _$DetailStockResponseModelCopyWithImpl<$Res,
        $Val extends DetailStockResponseModel>
    implements $DetailStockResponseModelCopyWith<$Res> {
  _$DetailStockResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailStock = freezed,
    Object? satuan = null,
  }) {
    return _then(_value.copyWith(
      detailStock: freezed == detailStock
          ? _value.detailStock
          : detailStock // ignore: cast_nullable_to_non_nullable
              as DetailStock?,
      satuan: null == satuan
          ? _value.satuan
          : satuan // ignore: cast_nullable_to_non_nullable
              as List<Satuan>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DetailStockCopyWith<$Res>? get detailStock {
    if (_value.detailStock == null) {
      return null;
    }

    return $DetailStockCopyWith<$Res>(_value.detailStock!, (value) {
      return _then(_value.copyWith(detailStock: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailStockResponseModelImplCopyWith<$Res>
    implements $DetailStockResponseModelCopyWith<$Res> {
  factory _$$DetailStockResponseModelImplCopyWith(
          _$DetailStockResponseModelImpl value,
          $Res Function(_$DetailStockResponseModelImpl) then) =
      __$$DetailStockResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data_stock') DetailStock? detailStock,
      List<Satuan> satuan});

  @override
  $DetailStockCopyWith<$Res>? get detailStock;
}

/// @nodoc
class __$$DetailStockResponseModelImplCopyWithImpl<$Res>
    extends _$DetailStockResponseModelCopyWithImpl<$Res,
        _$DetailStockResponseModelImpl>
    implements _$$DetailStockResponseModelImplCopyWith<$Res> {
  __$$DetailStockResponseModelImplCopyWithImpl(
      _$DetailStockResponseModelImpl _value,
      $Res Function(_$DetailStockResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailStock = freezed,
    Object? satuan = null,
  }) {
    return _then(_$DetailStockResponseModelImpl(
      detailStock: freezed == detailStock
          ? _value.detailStock
          : detailStock // ignore: cast_nullable_to_non_nullable
              as DetailStock?,
      satuan: null == satuan
          ? _value._satuan
          : satuan // ignore: cast_nullable_to_non_nullable
              as List<Satuan>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailStockResponseModelImpl implements _DetailStockResponseModel {
  _$DetailStockResponseModelImpl(
      {@JsonKey(name: 'data_stock') this.detailStock,
      final List<Satuan> satuan = const []})
      : _satuan = satuan;

  factory _$DetailStockResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailStockResponseModelImplFromJson(json);

  @override
  @JsonKey(name: 'data_stock')
  final DetailStock? detailStock;
  final List<Satuan> _satuan;
  @override
  @JsonKey()
  List<Satuan> get satuan {
    if (_satuan is EqualUnmodifiableListView) return _satuan;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_satuan);
  }

  @override
  String toString() {
    return 'DetailStockResponseModel(detailStock: $detailStock, satuan: $satuan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailStockResponseModelImpl &&
            (identical(other.detailStock, detailStock) ||
                other.detailStock == detailStock) &&
            const DeepCollectionEquality().equals(other._satuan, _satuan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, detailStock, const DeepCollectionEquality().hash(_satuan));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailStockResponseModelImplCopyWith<_$DetailStockResponseModelImpl>
      get copyWith => __$$DetailStockResponseModelImplCopyWithImpl<
          _$DetailStockResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailStockResponseModelImplToJson(
      this,
    );
  }
}

abstract class _DetailStockResponseModel implements DetailStockResponseModel {
  factory _DetailStockResponseModel(
      {@JsonKey(name: 'data_stock') final DetailStock? detailStock,
      final List<Satuan> satuan}) = _$DetailStockResponseModelImpl;

  factory _DetailStockResponseModel.fromJson(Map<String, dynamic> json) =
      _$DetailStockResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'data_stock')
  DetailStock? get detailStock;
  @override
  List<Satuan> get satuan;
  @override
  @JsonKey(ignore: true)
  _$$DetailStockResponseModelImplCopyWith<_$DetailStockResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DetailStock _$DetailStockFromJson(Map<String, dynamic> json) {
  return _DetailStock.fromJson(json);
}

/// @nodoc
mixin _$DetailStock {
  @JsonKey(name: 'nama_satuan')
  String get namaSatuan => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
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
  @JsonKey(name: 'satuan_ecer')
  int get satuanEcer => throw _privateConstructorUsedError;
  @JsonKey(name: 'harga_ecer')
  int get hargaEcer => throw _privateConstructorUsedError;
  @JsonKey(name: 'toko_id')
  int get tokoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'username_input')
  int get usernameInput => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'satuan_grosir')
  int get satuanGrosir => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailStockCopyWith<DetailStock> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailStockCopyWith<$Res> {
  factory $DetailStockCopyWith(
          DetailStock value, $Res Function(DetailStock) then) =
      _$DetailStockCopyWithImpl<$Res, DetailStock>;
  @useResult
  $Res call(
      {@JsonKey(name: 'nama_satuan') String namaSatuan,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'nama_produk') String namaProduk,
      @JsonKey(name: 'harga_beli') int hargaBeli,
      @JsonKey(name: 'kuantiti') int kuantiti,
      @JsonKey(name: 'isi_per_pack') int isiPerPack,
      @JsonKey(name: 'harga_grosir') int hargaGrosir,
      @JsonKey(name: 'satuan_ecer') int satuanEcer,
      @JsonKey(name: 'harga_ecer') int hargaEcer,
      @JsonKey(name: 'toko_id') int tokoId,
      @JsonKey(name: 'username_input') int usernameInput,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'satuan_grosir') int satuanGrosir});
}

/// @nodoc
class _$DetailStockCopyWithImpl<$Res, $Val extends DetailStock>
    implements $DetailStockCopyWith<$Res> {
  _$DetailStockCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? namaSatuan = null,
    Object? id = null,
    Object? namaProduk = null,
    Object? hargaBeli = null,
    Object? kuantiti = null,
    Object? isiPerPack = null,
    Object? hargaGrosir = null,
    Object? satuanEcer = null,
    Object? hargaEcer = null,
    Object? tokoId = null,
    Object? usernameInput = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? satuanGrosir = null,
  }) {
    return _then(_value.copyWith(
      namaSatuan: null == namaSatuan
          ? _value.namaSatuan
          : namaSatuan // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      satuanEcer: null == satuanEcer
          ? _value.satuanEcer
          : satuanEcer // ignore: cast_nullable_to_non_nullable
              as int,
      hargaEcer: null == hargaEcer
          ? _value.hargaEcer
          : hargaEcer // ignore: cast_nullable_to_non_nullable
              as int,
      tokoId: null == tokoId
          ? _value.tokoId
          : tokoId // ignore: cast_nullable_to_non_nullable
              as int,
      usernameInput: null == usernameInput
          ? _value.usernameInput
          : usernameInput // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      satuanGrosir: null == satuanGrosir
          ? _value.satuanGrosir
          : satuanGrosir // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailStockImplCopyWith<$Res>
    implements $DetailStockCopyWith<$Res> {
  factory _$$DetailStockImplCopyWith(
          _$DetailStockImpl value, $Res Function(_$DetailStockImpl) then) =
      __$$DetailStockImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'nama_satuan') String namaSatuan,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'nama_produk') String namaProduk,
      @JsonKey(name: 'harga_beli') int hargaBeli,
      @JsonKey(name: 'kuantiti') int kuantiti,
      @JsonKey(name: 'isi_per_pack') int isiPerPack,
      @JsonKey(name: 'harga_grosir') int hargaGrosir,
      @JsonKey(name: 'satuan_ecer') int satuanEcer,
      @JsonKey(name: 'harga_ecer') int hargaEcer,
      @JsonKey(name: 'toko_id') int tokoId,
      @JsonKey(name: 'username_input') int usernameInput,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'satuan_grosir') int satuanGrosir});
}

/// @nodoc
class __$$DetailStockImplCopyWithImpl<$Res>
    extends _$DetailStockCopyWithImpl<$Res, _$DetailStockImpl>
    implements _$$DetailStockImplCopyWith<$Res> {
  __$$DetailStockImplCopyWithImpl(
      _$DetailStockImpl _value, $Res Function(_$DetailStockImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? namaSatuan = null,
    Object? id = null,
    Object? namaProduk = null,
    Object? hargaBeli = null,
    Object? kuantiti = null,
    Object? isiPerPack = null,
    Object? hargaGrosir = null,
    Object? satuanEcer = null,
    Object? hargaEcer = null,
    Object? tokoId = null,
    Object? usernameInput = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? satuanGrosir = null,
  }) {
    return _then(_$DetailStockImpl(
      namaSatuan: null == namaSatuan
          ? _value.namaSatuan
          : namaSatuan // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      satuanEcer: null == satuanEcer
          ? _value.satuanEcer
          : satuanEcer // ignore: cast_nullable_to_non_nullable
              as int,
      hargaEcer: null == hargaEcer
          ? _value.hargaEcer
          : hargaEcer // ignore: cast_nullable_to_non_nullable
              as int,
      tokoId: null == tokoId
          ? _value.tokoId
          : tokoId // ignore: cast_nullable_to_non_nullable
              as int,
      usernameInput: null == usernameInput
          ? _value.usernameInput
          : usernameInput // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      satuanGrosir: null == satuanGrosir
          ? _value.satuanGrosir
          : satuanGrosir // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailStockImpl implements _DetailStock {
  _$DetailStockImpl(
      {@JsonKey(name: 'nama_satuan') this.namaSatuan = '',
      @JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'nama_produk') this.namaProduk = '',
      @JsonKey(name: 'harga_beli') this.hargaBeli = 0,
      @JsonKey(name: 'kuantiti') this.kuantiti = 0,
      @JsonKey(name: 'isi_per_pack') this.isiPerPack = 0,
      @JsonKey(name: 'harga_grosir') this.hargaGrosir = 0,
      @JsonKey(name: 'satuan_ecer') this.satuanEcer = 0,
      @JsonKey(name: 'harga_ecer') this.hargaEcer = 0,
      @JsonKey(name: 'toko_id') this.tokoId = 0,
      @JsonKey(name: 'username_input') this.usernameInput = 0,
      @JsonKey(name: 'created_at') this.createdAt = '',
      @JsonKey(name: 'updated_at') this.updatedAt = '',
      @JsonKey(name: 'satuan_grosir') this.satuanGrosir = 0});

  factory _$DetailStockImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailStockImplFromJson(json);

  @override
  @JsonKey(name: 'nama_satuan')
  final String namaSatuan;
  @override
  @JsonKey(name: 'id')
  final int id;
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
  @JsonKey(name: 'satuan_ecer')
  final int satuanEcer;
  @override
  @JsonKey(name: 'harga_ecer')
  final int hargaEcer;
  @override
  @JsonKey(name: 'toko_id')
  final int tokoId;
  @override
  @JsonKey(name: 'username_input')
  final int usernameInput;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  @JsonKey(name: 'satuan_grosir')
  final int satuanGrosir;

  @override
  String toString() {
    return 'DetailStock(namaSatuan: $namaSatuan, id: $id, namaProduk: $namaProduk, hargaBeli: $hargaBeli, kuantiti: $kuantiti, isiPerPack: $isiPerPack, hargaGrosir: $hargaGrosir, satuanEcer: $satuanEcer, hargaEcer: $hargaEcer, tokoId: $tokoId, usernameInput: $usernameInput, createdAt: $createdAt, updatedAt: $updatedAt, satuanGrosir: $satuanGrosir)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailStockImpl &&
            (identical(other.namaSatuan, namaSatuan) ||
                other.namaSatuan == namaSatuan) &&
            (identical(other.id, id) || other.id == id) &&
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
            (identical(other.satuanEcer, satuanEcer) ||
                other.satuanEcer == satuanEcer) &&
            (identical(other.hargaEcer, hargaEcer) ||
                other.hargaEcer == hargaEcer) &&
            (identical(other.tokoId, tokoId) || other.tokoId == tokoId) &&
            (identical(other.usernameInput, usernameInput) ||
                other.usernameInput == usernameInput) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.satuanGrosir, satuanGrosir) ||
                other.satuanGrosir == satuanGrosir));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      namaSatuan,
      id,
      namaProduk,
      hargaBeli,
      kuantiti,
      isiPerPack,
      hargaGrosir,
      satuanEcer,
      hargaEcer,
      tokoId,
      usernameInput,
      createdAt,
      updatedAt,
      satuanGrosir);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailStockImplCopyWith<_$DetailStockImpl> get copyWith =>
      __$$DetailStockImplCopyWithImpl<_$DetailStockImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailStockImplToJson(
      this,
    );
  }
}

abstract class _DetailStock implements DetailStock {
  factory _DetailStock(
          {@JsonKey(name: 'nama_satuan') final String namaSatuan,
          @JsonKey(name: 'id') final int id,
          @JsonKey(name: 'nama_produk') final String namaProduk,
          @JsonKey(name: 'harga_beli') final int hargaBeli,
          @JsonKey(name: 'kuantiti') final int kuantiti,
          @JsonKey(name: 'isi_per_pack') final int isiPerPack,
          @JsonKey(name: 'harga_grosir') final int hargaGrosir,
          @JsonKey(name: 'satuan_ecer') final int satuanEcer,
          @JsonKey(name: 'harga_ecer') final int hargaEcer,
          @JsonKey(name: 'toko_id') final int tokoId,
          @JsonKey(name: 'username_input') final int usernameInput,
          @JsonKey(name: 'created_at') final String createdAt,
          @JsonKey(name: 'updated_at') final String updatedAt,
          @JsonKey(name: 'satuan_grosir') final int satuanGrosir}) =
      _$DetailStockImpl;

  factory _DetailStock.fromJson(Map<String, dynamic> json) =
      _$DetailStockImpl.fromJson;

  @override
  @JsonKey(name: 'nama_satuan')
  String get namaSatuan;
  @override
  @JsonKey(name: 'id')
  int get id;
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
  @JsonKey(name: 'satuan_ecer')
  int get satuanEcer;
  @override
  @JsonKey(name: 'harga_ecer')
  int get hargaEcer;
  @override
  @JsonKey(name: 'toko_id')
  int get tokoId;
  @override
  @JsonKey(name: 'username_input')
  int get usernameInput;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  @JsonKey(name: 'satuan_grosir')
  int get satuanGrosir;
  @override
  @JsonKey(ignore: true)
  _$$DetailStockImplCopyWith<_$DetailStockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Satuan _$SatuanFromJson(Map<String, dynamic> json) {
  return _Satuan.fromJson(json);
}

/// @nodoc
mixin _$Satuan {
  int get id => throw _privateConstructorUsedError;
  String get satuan => throw _privateConstructorUsedError;
  int get harga => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SatuanCopyWith<Satuan> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SatuanCopyWith<$Res> {
  factory $SatuanCopyWith(Satuan value, $Res Function(Satuan) then) =
      _$SatuanCopyWithImpl<$Res, Satuan>;
  @useResult
  $Res call({int id, String satuan, int harga});
}

/// @nodoc
class _$SatuanCopyWithImpl<$Res, $Val extends Satuan>
    implements $SatuanCopyWith<$Res> {
  _$SatuanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? satuan = null,
    Object? harga = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      satuan: null == satuan
          ? _value.satuan
          : satuan // ignore: cast_nullable_to_non_nullable
              as String,
      harga: null == harga
          ? _value.harga
          : harga // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SatuanImplCopyWith<$Res> implements $SatuanCopyWith<$Res> {
  factory _$$SatuanImplCopyWith(
          _$SatuanImpl value, $Res Function(_$SatuanImpl) then) =
      __$$SatuanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String satuan, int harga});
}

/// @nodoc
class __$$SatuanImplCopyWithImpl<$Res>
    extends _$SatuanCopyWithImpl<$Res, _$SatuanImpl>
    implements _$$SatuanImplCopyWith<$Res> {
  __$$SatuanImplCopyWithImpl(
      _$SatuanImpl _value, $Res Function(_$SatuanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? satuan = null,
    Object? harga = null,
  }) {
    return _then(_$SatuanImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      satuan: null == satuan
          ? _value.satuan
          : satuan // ignore: cast_nullable_to_non_nullable
              as String,
      harga: null == harga
          ? _value.harga
          : harga // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SatuanImpl implements _Satuan {
  _$SatuanImpl({this.id = 0, this.satuan = '', this.harga = 0});

  factory _$SatuanImpl.fromJson(Map<String, dynamic> json) =>
      _$$SatuanImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String satuan;
  @override
  @JsonKey()
  final int harga;

  @override
  String toString() {
    return 'Satuan(id: $id, satuan: $satuan, harga: $harga)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SatuanImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.satuan, satuan) || other.satuan == satuan) &&
            (identical(other.harga, harga) || other.harga == harga));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, satuan, harga);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SatuanImplCopyWith<_$SatuanImpl> get copyWith =>
      __$$SatuanImplCopyWithImpl<_$SatuanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SatuanImplToJson(
      this,
    );
  }
}

abstract class _Satuan implements Satuan {
  factory _Satuan({final int id, final String satuan, final int harga}) =
      _$SatuanImpl;

  factory _Satuan.fromJson(Map<String, dynamic> json) = _$SatuanImpl.fromJson;

  @override
  int get id;
  @override
  String get satuan;
  @override
  int get harga;
  @override
  @JsonKey(ignore: true)
  _$$SatuanImplCopyWith<_$SatuanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
