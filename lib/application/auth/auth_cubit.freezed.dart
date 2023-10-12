// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LoginResponseModel loginResponseModel)
        loginSuccess,
    required TResult Function(NetworkExceptions error) dioError,
    required TResult Function() loading,
    required TResult Function() saveUserSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult? Function(NetworkExceptions error)? dioError,
    TResult? Function()? loading,
    TResult? Function()? saveUserSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult Function(NetworkExceptions error)? dioError,
    TResult Function()? loading,
    TResult Function()? saveUserSession,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_DioError value) dioError,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SaveUserSession value) saveUserSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_DioError value)? dioError,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SaveUserSession value)? saveUserSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_DioError value)? dioError,
    TResult Function(_Loading value)? loading,
    TResult Function(_SaveUserSession value)? saveUserSession,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LoginResponseModel loginResponseModel)
        loginSuccess,
    required TResult Function(NetworkExceptions error) dioError,
    required TResult Function() loading,
    required TResult Function() saveUserSession,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult? Function(NetworkExceptions error)? dioError,
    TResult? Function()? loading,
    TResult? Function()? saveUserSession,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult Function(NetworkExceptions error)? dioError,
    TResult Function()? loading,
    TResult Function()? saveUserSession,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_DioError value) dioError,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SaveUserSession value) saveUserSession,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_DioError value)? dioError,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SaveUserSession value)? saveUserSession,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_DioError value)? dioError,
    TResult Function(_Loading value)? loading,
    TResult Function(_SaveUserSession value)? saveUserSession,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoginSuccessImplCopyWith<$Res> {
  factory _$$LoginSuccessImplCopyWith(
          _$LoginSuccessImpl value, $Res Function(_$LoginSuccessImpl) then) =
      __$$LoginSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginResponseModel loginResponseModel});

  $LoginResponseModelCopyWith<$Res> get loginResponseModel;
}

/// @nodoc
class __$$LoginSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoginSuccessImpl>
    implements _$$LoginSuccessImplCopyWith<$Res> {
  __$$LoginSuccessImplCopyWithImpl(
      _$LoginSuccessImpl _value, $Res Function(_$LoginSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginResponseModel = null,
  }) {
    return _then(_$LoginSuccessImpl(
      null == loginResponseModel
          ? _value.loginResponseModel
          : loginResponseModel // ignore: cast_nullable_to_non_nullable
              as LoginResponseModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginResponseModelCopyWith<$Res> get loginResponseModel {
    return $LoginResponseModelCopyWith<$Res>(_value.loginResponseModel,
        (value) {
      return _then(_value.copyWith(loginResponseModel: value));
    });
  }
}

/// @nodoc

class _$LoginSuccessImpl implements _LoginSuccess {
  const _$LoginSuccessImpl(this.loginResponseModel);

  @override
  final LoginResponseModel loginResponseModel;

  @override
  String toString() {
    return 'AuthState.loginSuccess(loginResponseModel: $loginResponseModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSuccessImpl &&
            (identical(other.loginResponseModel, loginResponseModel) ||
                other.loginResponseModel == loginResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginResponseModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSuccessImplCopyWith<_$LoginSuccessImpl> get copyWith =>
      __$$LoginSuccessImplCopyWithImpl<_$LoginSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LoginResponseModel loginResponseModel)
        loginSuccess,
    required TResult Function(NetworkExceptions error) dioError,
    required TResult Function() loading,
    required TResult Function() saveUserSession,
  }) {
    return loginSuccess(loginResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult? Function(NetworkExceptions error)? dioError,
    TResult? Function()? loading,
    TResult? Function()? saveUserSession,
  }) {
    return loginSuccess?.call(loginResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult Function(NetworkExceptions error)? dioError,
    TResult Function()? loading,
    TResult Function()? saveUserSession,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(loginResponseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_DioError value) dioError,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SaveUserSession value) saveUserSession,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_DioError value)? dioError,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SaveUserSession value)? saveUserSession,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_DioError value)? dioError,
    TResult Function(_Loading value)? loading,
    TResult Function(_SaveUserSession value)? saveUserSession,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoginSuccess implements AuthState {
  const factory _LoginSuccess(final LoginResponseModel loginResponseModel) =
      _$LoginSuccessImpl;

  LoginResponseModel get loginResponseModel;
  @JsonKey(ignore: true)
  _$$LoginSuccessImplCopyWith<_$LoginSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DioErrorImplCopyWith<$Res> {
  factory _$$DioErrorImplCopyWith(
          _$DioErrorImpl value, $Res Function(_$DioErrorImpl) then) =
      __$$DioErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NetworkExceptions error});

  $NetworkExceptionsCopyWith<$Res> get error;
}

/// @nodoc
class __$$DioErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$DioErrorImpl>
    implements _$$DioErrorImplCopyWith<$Res> {
  __$$DioErrorImplCopyWithImpl(
      _$DioErrorImpl _value, $Res Function(_$DioErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$DioErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as NetworkExceptions,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NetworkExceptionsCopyWith<$Res> get error {
    return $NetworkExceptionsCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$DioErrorImpl implements _DioError {
  const _$DioErrorImpl(this.error);

  @override
  final NetworkExceptions error;

  @override
  String toString() {
    return 'AuthState.dioError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DioErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DioErrorImplCopyWith<_$DioErrorImpl> get copyWith =>
      __$$DioErrorImplCopyWithImpl<_$DioErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LoginResponseModel loginResponseModel)
        loginSuccess,
    required TResult Function(NetworkExceptions error) dioError,
    required TResult Function() loading,
    required TResult Function() saveUserSession,
  }) {
    return dioError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult? Function(NetworkExceptions error)? dioError,
    TResult? Function()? loading,
    TResult? Function()? saveUserSession,
  }) {
    return dioError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult Function(NetworkExceptions error)? dioError,
    TResult Function()? loading,
    TResult Function()? saveUserSession,
    required TResult orElse(),
  }) {
    if (dioError != null) {
      return dioError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_DioError value) dioError,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SaveUserSession value) saveUserSession,
  }) {
    return dioError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_DioError value)? dioError,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SaveUserSession value)? saveUserSession,
  }) {
    return dioError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_DioError value)? dioError,
    TResult Function(_Loading value)? loading,
    TResult Function(_SaveUserSession value)? saveUserSession,
    required TResult orElse(),
  }) {
    if (dioError != null) {
      return dioError(this);
    }
    return orElse();
  }
}

abstract class _DioError implements AuthState {
  const factory _DioError(final NetworkExceptions error) = _$DioErrorImpl;

  NetworkExceptions get error;
  @JsonKey(ignore: true)
  _$$DioErrorImplCopyWith<_$DioErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LoginResponseModel loginResponseModel)
        loginSuccess,
    required TResult Function(NetworkExceptions error) dioError,
    required TResult Function() loading,
    required TResult Function() saveUserSession,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult? Function(NetworkExceptions error)? dioError,
    TResult? Function()? loading,
    TResult? Function()? saveUserSession,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult Function(NetworkExceptions error)? dioError,
    TResult Function()? loading,
    TResult Function()? saveUserSession,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_DioError value) dioError,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SaveUserSession value) saveUserSession,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_DioError value)? dioError,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SaveUserSession value)? saveUserSession,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_DioError value)? dioError,
    TResult Function(_Loading value)? loading,
    TResult Function(_SaveUserSession value)? saveUserSession,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SaveUserSessionImplCopyWith<$Res> {
  factory _$$SaveUserSessionImplCopyWith(_$SaveUserSessionImpl value,
          $Res Function(_$SaveUserSessionImpl) then) =
      __$$SaveUserSessionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveUserSessionImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SaveUserSessionImpl>
    implements _$$SaveUserSessionImplCopyWith<$Res> {
  __$$SaveUserSessionImplCopyWithImpl(
      _$SaveUserSessionImpl _value, $Res Function(_$SaveUserSessionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SaveUserSessionImpl implements _SaveUserSession {
  const _$SaveUserSessionImpl();

  @override
  String toString() {
    return 'AuthState.saveUserSession()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SaveUserSessionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LoginResponseModel loginResponseModel)
        loginSuccess,
    required TResult Function(NetworkExceptions error) dioError,
    required TResult Function() loading,
    required TResult Function() saveUserSession,
  }) {
    return saveUserSession();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult? Function(NetworkExceptions error)? dioError,
    TResult? Function()? loading,
    TResult? Function()? saveUserSession,
  }) {
    return saveUserSession?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult Function(NetworkExceptions error)? dioError,
    TResult Function()? loading,
    TResult Function()? saveUserSession,
    required TResult orElse(),
  }) {
    if (saveUserSession != null) {
      return saveUserSession();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_DioError value) dioError,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SaveUserSession value) saveUserSession,
  }) {
    return saveUserSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_DioError value)? dioError,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SaveUserSession value)? saveUserSession,
  }) {
    return saveUserSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_DioError value)? dioError,
    TResult Function(_Loading value)? loading,
    TResult Function(_SaveUserSession value)? saveUserSession,
    required TResult orElse(),
  }) {
    if (saveUserSession != null) {
      return saveUserSession(this);
    }
    return orElse();
  }
}

abstract class _SaveUserSession implements AuthState {
  const factory _SaveUserSession() = _$SaveUserSessionImpl;
}
