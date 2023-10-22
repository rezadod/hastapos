// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_satuan_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataSatuanResponseModel _$DataSatuanResponseModelFromJson(
    Map<String, dynamic> json) {
  return _DataSatuanResponseModel.fromJson(json);
}

/// @nodoc
mixin _$DataSatuanResponseModel {
  @JsonKey(name: 'satuan_ecer')
  List<Satuan> get satuanEcer => throw _privateConstructorUsedError;
  @JsonKey(name: 'satuan_grosir')
  List<Satuan> get satuanGrosir => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataSatuanResponseModelCopyWith<DataSatuanResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataSatuanResponseModelCopyWith<$Res> {
  factory $DataSatuanResponseModelCopyWith(DataSatuanResponseModel value,
          $Res Function(DataSatuanResponseModel) then) =
      _$DataSatuanResponseModelCopyWithImpl<$Res, DataSatuanResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'satuan_ecer') List<Satuan> satuanEcer,
      @JsonKey(name: 'satuan_grosir') List<Satuan> satuanGrosir});
}

/// @nodoc
class _$DataSatuanResponseModelCopyWithImpl<$Res,
        $Val extends DataSatuanResponseModel>
    implements $DataSatuanResponseModelCopyWith<$Res> {
  _$DataSatuanResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? satuanEcer = null,
    Object? satuanGrosir = null,
  }) {
    return _then(_value.copyWith(
      satuanEcer: null == satuanEcer
          ? _value.satuanEcer
          : satuanEcer // ignore: cast_nullable_to_non_nullable
              as List<Satuan>,
      satuanGrosir: null == satuanGrosir
          ? _value.satuanGrosir
          : satuanGrosir // ignore: cast_nullable_to_non_nullable
              as List<Satuan>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataSatuanResponseModelImplCopyWith<$Res>
    implements $DataSatuanResponseModelCopyWith<$Res> {
  factory _$$DataSatuanResponseModelImplCopyWith(
          _$DataSatuanResponseModelImpl value,
          $Res Function(_$DataSatuanResponseModelImpl) then) =
      __$$DataSatuanResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'satuan_ecer') List<Satuan> satuanEcer,
      @JsonKey(name: 'satuan_grosir') List<Satuan> satuanGrosir});
}

/// @nodoc
class __$$DataSatuanResponseModelImplCopyWithImpl<$Res>
    extends _$DataSatuanResponseModelCopyWithImpl<$Res,
        _$DataSatuanResponseModelImpl>
    implements _$$DataSatuanResponseModelImplCopyWith<$Res> {
  __$$DataSatuanResponseModelImplCopyWithImpl(
      _$DataSatuanResponseModelImpl _value,
      $Res Function(_$DataSatuanResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? satuanEcer = null,
    Object? satuanGrosir = null,
  }) {
    return _then(_$DataSatuanResponseModelImpl(
      satuanEcer: null == satuanEcer
          ? _value._satuanEcer
          : satuanEcer // ignore: cast_nullable_to_non_nullable
              as List<Satuan>,
      satuanGrosir: null == satuanGrosir
          ? _value._satuanGrosir
          : satuanGrosir // ignore: cast_nullable_to_non_nullable
              as List<Satuan>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataSatuanResponseModelImpl implements _DataSatuanResponseModel {
  _$DataSatuanResponseModelImpl(
      {@JsonKey(name: 'satuan_ecer') final List<Satuan> satuanEcer = const [],
      @JsonKey(name: 'satuan_grosir')
      final List<Satuan> satuanGrosir = const []})
      : _satuanEcer = satuanEcer,
        _satuanGrosir = satuanGrosir;

  factory _$DataSatuanResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataSatuanResponseModelImplFromJson(json);

  final List<Satuan> _satuanEcer;
  @override
  @JsonKey(name: 'satuan_ecer')
  List<Satuan> get satuanEcer {
    if (_satuanEcer is EqualUnmodifiableListView) return _satuanEcer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_satuanEcer);
  }

  final List<Satuan> _satuanGrosir;
  @override
  @JsonKey(name: 'satuan_grosir')
  List<Satuan> get satuanGrosir {
    if (_satuanGrosir is EqualUnmodifiableListView) return _satuanGrosir;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_satuanGrosir);
  }

  @override
  String toString() {
    return 'DataSatuanResponseModel(satuanEcer: $satuanEcer, satuanGrosir: $satuanGrosir)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataSatuanResponseModelImpl &&
            const DeepCollectionEquality()
                .equals(other._satuanEcer, _satuanEcer) &&
            const DeepCollectionEquality()
                .equals(other._satuanGrosir, _satuanGrosir));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_satuanEcer),
      const DeepCollectionEquality().hash(_satuanGrosir));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataSatuanResponseModelImplCopyWith<_$DataSatuanResponseModelImpl>
      get copyWith => __$$DataSatuanResponseModelImplCopyWithImpl<
          _$DataSatuanResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataSatuanResponseModelImplToJson(
      this,
    );
  }
}

abstract class _DataSatuanResponseModel implements DataSatuanResponseModel {
  factory _DataSatuanResponseModel(
          {@JsonKey(name: 'satuan_ecer') final List<Satuan> satuanEcer,
          @JsonKey(name: 'satuan_grosir') final List<Satuan> satuanGrosir}) =
      _$DataSatuanResponseModelImpl;

  factory _DataSatuanResponseModel.fromJson(Map<String, dynamic> json) =
      _$DataSatuanResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'satuan_ecer')
  List<Satuan> get satuanEcer;
  @override
  @JsonKey(name: 'satuan_grosir')
  List<Satuan> get satuanGrosir;
  @override
  @JsonKey(ignore: true)
  _$$DataSatuanResponseModelImplCopyWith<_$DataSatuanResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Satuan _$SatuanFromJson(Map<String, dynamic> json) {
  return _Satuan.fromJson(json);
}

/// @nodoc
mixin _$Satuan {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama_satuan')
  String get namaSatuan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SatuanCopyWith<Satuan> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SatuanCopyWith<$Res> {
  factory $SatuanCopyWith(Satuan value, $Res Function(Satuan) then) =
      _$SatuanCopyWithImpl<$Res, Satuan>;
  @useResult
  $Res call({int id, @JsonKey(name: 'nama_satuan') String namaSatuan});
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
    Object? namaSatuan = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      namaSatuan: null == namaSatuan
          ? _value.namaSatuan
          : namaSatuan // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call({int id, @JsonKey(name: 'nama_satuan') String namaSatuan});
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
    Object? namaSatuan = null,
  }) {
    return _then(_$SatuanImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      namaSatuan: null == namaSatuan
          ? _value.namaSatuan
          : namaSatuan // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SatuanImpl implements _Satuan {
  _$SatuanImpl(
      {this.id = 0, @JsonKey(name: 'nama_satuan') this.namaSatuan = ''});

  factory _$SatuanImpl.fromJson(Map<String, dynamic> json) =>
      _$$SatuanImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey(name: 'nama_satuan')
  final String namaSatuan;

  @override
  String toString() {
    return 'Satuan(id: $id, namaSatuan: $namaSatuan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SatuanImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.namaSatuan, namaSatuan) ||
                other.namaSatuan == namaSatuan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, namaSatuan);

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
  factory _Satuan(
      {final int id,
      @JsonKey(name: 'nama_satuan') final String namaSatuan}) = _$SatuanImpl;

  factory _Satuan.fromJson(Map<String, dynamic> json) = _$SatuanImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'nama_satuan')
  String get namaSatuan;
  @override
  @JsonKey(ignore: true)
  _$$SatuanImplCopyWith<_$SatuanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
