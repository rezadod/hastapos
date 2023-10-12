// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'keranjang_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KeranjangRequestModel _$KeranjangRequestModelFromJson(
    Map<String, dynamic> json) {
  return _KeranjangRequestModel.fromJson(json);
}

/// @nodoc
mixin _$KeranjangRequestModel {
  int get id => throw _privateConstructorUsedError;
  int get qty => throw _privateConstructorUsedError;
  String get satuan => throw _privateConstructorUsedError;
  int get harga => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KeranjangRequestModelCopyWith<KeranjangRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeranjangRequestModelCopyWith<$Res> {
  factory $KeranjangRequestModelCopyWith(KeranjangRequestModel value,
          $Res Function(KeranjangRequestModel) then) =
      _$KeranjangRequestModelCopyWithImpl<$Res, KeranjangRequestModel>;
  @useResult
  $Res call({int id, int qty, String satuan, int harga});
}

/// @nodoc
class _$KeranjangRequestModelCopyWithImpl<$Res,
        $Val extends KeranjangRequestModel>
    implements $KeranjangRequestModelCopyWith<$Res> {
  _$KeranjangRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? qty = null,
    Object? satuan = null,
    Object? harga = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
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
abstract class _$$KeranjangRequestModelImplCopyWith<$Res>
    implements $KeranjangRequestModelCopyWith<$Res> {
  factory _$$KeranjangRequestModelImplCopyWith(
          _$KeranjangRequestModelImpl value,
          $Res Function(_$KeranjangRequestModelImpl) then) =
      __$$KeranjangRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int qty, String satuan, int harga});
}

/// @nodoc
class __$$KeranjangRequestModelImplCopyWithImpl<$Res>
    extends _$KeranjangRequestModelCopyWithImpl<$Res,
        _$KeranjangRequestModelImpl>
    implements _$$KeranjangRequestModelImplCopyWith<$Res> {
  __$$KeranjangRequestModelImplCopyWithImpl(_$KeranjangRequestModelImpl _value,
      $Res Function(_$KeranjangRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? qty = null,
    Object? satuan = null,
    Object? harga = null,
  }) {
    return _then(_$KeranjangRequestModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
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
class _$KeranjangRequestModelImpl implements _KeranjangRequestModel {
  _$KeranjangRequestModelImpl(
      {this.id = 0, this.qty = 0, this.satuan = "", this.harga = 0});

  factory _$KeranjangRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$KeranjangRequestModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int qty;
  @override
  @JsonKey()
  final String satuan;
  @override
  @JsonKey()
  final int harga;

  @override
  String toString() {
    return 'KeranjangRequestModel(id: $id, qty: $qty, satuan: $satuan, harga: $harga)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeranjangRequestModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.satuan, satuan) || other.satuan == satuan) &&
            (identical(other.harga, harga) || other.harga == harga));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, qty, satuan, harga);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KeranjangRequestModelImplCopyWith<_$KeranjangRequestModelImpl>
      get copyWith => __$$KeranjangRequestModelImplCopyWithImpl<
          _$KeranjangRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeranjangRequestModelImplToJson(
      this,
    );
  }
}

abstract class _KeranjangRequestModel implements KeranjangRequestModel {
  factory _KeranjangRequestModel(
      {final int id,
      final int qty,
      final String satuan,
      final int harga}) = _$KeranjangRequestModelImpl;

  factory _KeranjangRequestModel.fromJson(Map<String, dynamic> json) =
      _$KeranjangRequestModelImpl.fromJson;

  @override
  int get id;
  @override
  int get qty;
  @override
  String get satuan;
  @override
  int get harga;
  @override
  @JsonKey(ignore: true)
  _$$KeranjangRequestModelImplCopyWith<_$KeranjangRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
