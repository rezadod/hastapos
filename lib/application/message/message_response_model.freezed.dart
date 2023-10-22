// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessageResponseModel _$MessageResponseModelFromJson(Map<String, dynamic> json) {
  return _MessageResponseModel.fromJson(json);
}

/// @nodoc
mixin _$MessageResponseModel {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageResponseModelCopyWith<MessageResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageResponseModelCopyWith<$Res> {
  factory $MessageResponseModelCopyWith(MessageResponseModel value,
          $Res Function(MessageResponseModel) then) =
      _$MessageResponseModelCopyWithImpl<$Res, MessageResponseModel>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$MessageResponseModelCopyWithImpl<$Res,
        $Val extends MessageResponseModel>
    implements $MessageResponseModelCopyWith<$Res> {
  _$MessageResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageResponseModelImplCopyWith<$Res>
    implements $MessageResponseModelCopyWith<$Res> {
  factory _$$MessageResponseModelImplCopyWith(_$MessageResponseModelImpl value,
          $Res Function(_$MessageResponseModelImpl) then) =
      __$$MessageResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$MessageResponseModelImplCopyWithImpl<$Res>
    extends _$MessageResponseModelCopyWithImpl<$Res, _$MessageResponseModelImpl>
    implements _$$MessageResponseModelImplCopyWith<$Res> {
  __$$MessageResponseModelImplCopyWithImpl(_$MessageResponseModelImpl _value,
      $Res Function(_$MessageResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MessageResponseModelImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageResponseModelImpl implements _MessageResponseModel {
  _$MessageResponseModelImpl({this.message = ''});

  factory _$MessageResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageResponseModelImplFromJson(json);

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'MessageResponseModel(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageResponseModelImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageResponseModelImplCopyWith<_$MessageResponseModelImpl>
      get copyWith =>
          __$$MessageResponseModelImplCopyWithImpl<_$MessageResponseModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageResponseModelImplToJson(
      this,
    );
  }
}

abstract class _MessageResponseModel implements MessageResponseModel {
  factory _MessageResponseModel({final String message}) =
      _$MessageResponseModelImpl;

  factory _MessageResponseModel.fromJson(Map<String, dynamic> json) =
      _$MessageResponseModelImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$MessageResponseModelImplCopyWith<_$MessageResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
