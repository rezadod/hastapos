// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StockResponseModel _$StockResponseModelFromJson(Map<String, dynamic> json) {
  return _StockResponseModel.fromJson(json);
}

/// @nodoc
mixin _$StockResponseModel {
  @JsonKey(name: 'data_stock')
  List<DataStock> get dataStock => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockResponseModelCopyWith<StockResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockResponseModelCopyWith<$Res> {
  factory $StockResponseModelCopyWith(
          StockResponseModel value, $Res Function(StockResponseModel) then) =
      _$StockResponseModelCopyWithImpl<$Res, StockResponseModel>;
  @useResult
  $Res call({@JsonKey(name: 'data_stock') List<DataStock> dataStock});
}

/// @nodoc
class _$StockResponseModelCopyWithImpl<$Res, $Val extends StockResponseModel>
    implements $StockResponseModelCopyWith<$Res> {
  _$StockResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataStock = null,
  }) {
    return _then(_value.copyWith(
      dataStock: null == dataStock
          ? _value.dataStock
          : dataStock // ignore: cast_nullable_to_non_nullable
              as List<DataStock>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StockResponseModelImplCopyWith<$Res>
    implements $StockResponseModelCopyWith<$Res> {
  factory _$$StockResponseModelImplCopyWith(_$StockResponseModelImpl value,
          $Res Function(_$StockResponseModelImpl) then) =
      __$$StockResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'data_stock') List<DataStock> dataStock});
}

/// @nodoc
class __$$StockResponseModelImplCopyWithImpl<$Res>
    extends _$StockResponseModelCopyWithImpl<$Res, _$StockResponseModelImpl>
    implements _$$StockResponseModelImplCopyWith<$Res> {
  __$$StockResponseModelImplCopyWithImpl(_$StockResponseModelImpl _value,
      $Res Function(_$StockResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataStock = null,
  }) {
    return _then(_$StockResponseModelImpl(
      dataStock: null == dataStock
          ? _value._dataStock
          : dataStock // ignore: cast_nullable_to_non_nullable
              as List<DataStock>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockResponseModelImpl implements _StockResponseModel {
  _$StockResponseModelImpl(
      {@JsonKey(name: 'data_stock') final List<DataStock> dataStock = const []})
      : _dataStock = dataStock;

  factory _$StockResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockResponseModelImplFromJson(json);

  final List<DataStock> _dataStock;
  @override
  @JsonKey(name: 'data_stock')
  List<DataStock> get dataStock {
    if (_dataStock is EqualUnmodifiableListView) return _dataStock;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dataStock);
  }

  @override
  String toString() {
    return 'StockResponseModel(dataStock: $dataStock)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockResponseModelImpl &&
            const DeepCollectionEquality()
                .equals(other._dataStock, _dataStock));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_dataStock));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StockResponseModelImplCopyWith<_$StockResponseModelImpl> get copyWith =>
      __$$StockResponseModelImplCopyWithImpl<_$StockResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockResponseModelImplToJson(
      this,
    );
  }
}

abstract class _StockResponseModel implements StockResponseModel {
  factory _StockResponseModel(
          {@JsonKey(name: 'data_stock') final List<DataStock> dataStock}) =
      _$StockResponseModelImpl;

  factory _StockResponseModel.fromJson(Map<String, dynamic> json) =
      _$StockResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'data_stock')
  List<DataStock> get dataStock;
  @override
  @JsonKey(ignore: true)
  _$$StockResponseModelImplCopyWith<_$StockResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataStock _$DataStockFromJson(Map<String, dynamic> json) {
  return _DataStock.fromJson(json);
}

/// @nodoc
mixin _$DataStock {
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
  @JsonKey(name: 'harga_per_pcs')
  int get hargaPerPcs => throw _privateConstructorUsedError;
  @JsonKey(name: 'harga_per_pack')
  int get hargaPerPack => throw _privateConstructorUsedError;
  @JsonKey(name: 'toko_id')
  int get tokoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'username_input')
  int get usernameInput => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataStockCopyWith<DataStock> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataStockCopyWith<$Res> {
  factory $DataStockCopyWith(DataStock value, $Res Function(DataStock) then) =
      _$DataStockCopyWithImpl<$Res, DataStock>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'nama_produk') String namaProduk,
      @JsonKey(name: 'harga_beli') int hargaBeli,
      @JsonKey(name: 'kuantiti') int kuantiti,
      @JsonKey(name: 'isi_per_pack') int isiPerPack,
      @JsonKey(name: 'harga_per_pcs') int hargaPerPcs,
      @JsonKey(name: 'harga_per_pack') int hargaPerPack,
      @JsonKey(name: 'toko_id') int tokoId,
      @JsonKey(name: 'username_input') int usernameInput,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class _$DataStockCopyWithImpl<$Res, $Val extends DataStock>
    implements $DataStockCopyWith<$Res> {
  _$DataStockCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? namaProduk = null,
    Object? hargaBeli = null,
    Object? kuantiti = null,
    Object? isiPerPack = null,
    Object? hargaPerPcs = null,
    Object? hargaPerPack = null,
    Object? tokoId = null,
    Object? usernameInput = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
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
      hargaPerPcs: null == hargaPerPcs
          ? _value.hargaPerPcs
          : hargaPerPcs // ignore: cast_nullable_to_non_nullable
              as int,
      hargaPerPack: null == hargaPerPack
          ? _value.hargaPerPack
          : hargaPerPack // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataStockImplCopyWith<$Res>
    implements $DataStockCopyWith<$Res> {
  factory _$$DataStockImplCopyWith(
          _$DataStockImpl value, $Res Function(_$DataStockImpl) then) =
      __$$DataStockImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'nama_produk') String namaProduk,
      @JsonKey(name: 'harga_beli') int hargaBeli,
      @JsonKey(name: 'kuantiti') int kuantiti,
      @JsonKey(name: 'isi_per_pack') int isiPerPack,
      @JsonKey(name: 'harga_per_pcs') int hargaPerPcs,
      @JsonKey(name: 'harga_per_pack') int hargaPerPack,
      @JsonKey(name: 'toko_id') int tokoId,
      @JsonKey(name: 'username_input') int usernameInput,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class __$$DataStockImplCopyWithImpl<$Res>
    extends _$DataStockCopyWithImpl<$Res, _$DataStockImpl>
    implements _$$DataStockImplCopyWith<$Res> {
  __$$DataStockImplCopyWithImpl(
      _$DataStockImpl _value, $Res Function(_$DataStockImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? namaProduk = null,
    Object? hargaBeli = null,
    Object? kuantiti = null,
    Object? isiPerPack = null,
    Object? hargaPerPcs = null,
    Object? hargaPerPack = null,
    Object? tokoId = null,
    Object? usernameInput = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$DataStockImpl(
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
      hargaPerPcs: null == hargaPerPcs
          ? _value.hargaPerPcs
          : hargaPerPcs // ignore: cast_nullable_to_non_nullable
              as int,
      hargaPerPack: null == hargaPerPack
          ? _value.hargaPerPack
          : hargaPerPack // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataStockImpl implements _DataStock {
  _$DataStockImpl(
      {@JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'nama_produk') this.namaProduk = "",
      @JsonKey(name: 'harga_beli') this.hargaBeli = 0,
      @JsonKey(name: 'kuantiti') this.kuantiti = 0,
      @JsonKey(name: 'isi_per_pack') this.isiPerPack = 0,
      @JsonKey(name: 'harga_per_pcs') this.hargaPerPcs = 0,
      @JsonKey(name: 'harga_per_pack') this.hargaPerPack = 0,
      @JsonKey(name: 'toko_id') this.tokoId = 0,
      @JsonKey(name: 'username_input') this.usernameInput = 0,
      @JsonKey(name: 'created_at') this.createdAt = "",
      @JsonKey(name: 'updated_at') this.updatedAt = ""});

  factory _$DataStockImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataStockImplFromJson(json);

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
  @JsonKey(name: 'harga_per_pcs')
  final int hargaPerPcs;
  @override
  @JsonKey(name: 'harga_per_pack')
  final int hargaPerPack;
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
  String toString() {
    return 'DataStock(id: $id, namaProduk: $namaProduk, hargaBeli: $hargaBeli, kuantiti: $kuantiti, isiPerPack: $isiPerPack, hargaPerPcs: $hargaPerPcs, hargaPerPack: $hargaPerPack, tokoId: $tokoId, usernameInput: $usernameInput, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataStockImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.namaProduk, namaProduk) ||
                other.namaProduk == namaProduk) &&
            (identical(other.hargaBeli, hargaBeli) ||
                other.hargaBeli == hargaBeli) &&
            (identical(other.kuantiti, kuantiti) ||
                other.kuantiti == kuantiti) &&
            (identical(other.isiPerPack, isiPerPack) ||
                other.isiPerPack == isiPerPack) &&
            (identical(other.hargaPerPcs, hargaPerPcs) ||
                other.hargaPerPcs == hargaPerPcs) &&
            (identical(other.hargaPerPack, hargaPerPack) ||
                other.hargaPerPack == hargaPerPack) &&
            (identical(other.tokoId, tokoId) || other.tokoId == tokoId) &&
            (identical(other.usernameInput, usernameInput) ||
                other.usernameInput == usernameInput) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      namaProduk,
      hargaBeli,
      kuantiti,
      isiPerPack,
      hargaPerPcs,
      hargaPerPack,
      tokoId,
      usernameInput,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataStockImplCopyWith<_$DataStockImpl> get copyWith =>
      __$$DataStockImplCopyWithImpl<_$DataStockImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataStockImplToJson(
      this,
    );
  }
}

abstract class _DataStock implements DataStock {
  factory _DataStock(
      {@JsonKey(name: 'id') final int id,
      @JsonKey(name: 'nama_produk') final String namaProduk,
      @JsonKey(name: 'harga_beli') final int hargaBeli,
      @JsonKey(name: 'kuantiti') final int kuantiti,
      @JsonKey(name: 'isi_per_pack') final int isiPerPack,
      @JsonKey(name: 'harga_per_pcs') final int hargaPerPcs,
      @JsonKey(name: 'harga_per_pack') final int hargaPerPack,
      @JsonKey(name: 'toko_id') final int tokoId,
      @JsonKey(name: 'username_input') final int usernameInput,
      @JsonKey(name: 'created_at') final String createdAt,
      @JsonKey(name: 'updated_at') final String updatedAt}) = _$DataStockImpl;

  factory _DataStock.fromJson(Map<String, dynamic> json) =
      _$DataStockImpl.fromJson;

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
  @JsonKey(name: 'harga_per_pcs')
  int get hargaPerPcs;
  @override
  @JsonKey(name: 'harga_per_pack')
  int get hargaPerPack;
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
  @JsonKey(ignore: true)
  _$$DataStockImplCopyWith<_$DataStockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
