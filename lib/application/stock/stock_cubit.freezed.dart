// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StockState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(NetworkExceptions networkExceptions) dioError,
    required TResult Function() stockLoading,
    required TResult Function(StockResponseModel stockResponseModel) dataStock,
    required TResult Function(DetailStockResponseModel detailResponseModel)
        datadetailStock,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(NetworkExceptions networkExceptions)? dioError,
    TResult? Function()? stockLoading,
    TResult? Function(StockResponseModel stockResponseModel)? dataStock,
    TResult? Function(DetailStockResponseModel detailResponseModel)?
        datadetailStock,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(NetworkExceptions networkExceptions)? dioError,
    TResult Function()? stockLoading,
    TResult Function(StockResponseModel stockResponseModel)? dataStock,
    TResult Function(DetailStockResponseModel detailResponseModel)?
        datadetailStock,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DioError value) dioError,
    required TResult Function(_StockLoading value) stockLoading,
    required TResult Function(_DataStock value) dataStock,
    required TResult Function(_DatadetailStock value) datadetailStock,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DioError value)? dioError,
    TResult? Function(_StockLoading value)? stockLoading,
    TResult? Function(_DataStock value)? dataStock,
    TResult? Function(_DatadetailStock value)? datadetailStock,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DioError value)? dioError,
    TResult Function(_StockLoading value)? stockLoading,
    TResult Function(_DataStock value)? dataStock,
    TResult Function(_DatadetailStock value)? datadetailStock,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockStateCopyWith<$Res> {
  factory $StockStateCopyWith(
          StockState value, $Res Function(StockState) then) =
      _$StockStateCopyWithImpl<$Res, StockState>;
}

/// @nodoc
class _$StockStateCopyWithImpl<$Res, $Val extends StockState>
    implements $StockStateCopyWith<$Res> {
  _$StockStateCopyWithImpl(this._value, this._then);

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
    extends _$StockStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'StockState.initial()';
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
    required TResult Function(NetworkExceptions networkExceptions) dioError,
    required TResult Function() stockLoading,
    required TResult Function(StockResponseModel stockResponseModel) dataStock,
    required TResult Function(DetailStockResponseModel detailResponseModel)
        datadetailStock,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(NetworkExceptions networkExceptions)? dioError,
    TResult? Function()? stockLoading,
    TResult? Function(StockResponseModel stockResponseModel)? dataStock,
    TResult? Function(DetailStockResponseModel detailResponseModel)?
        datadetailStock,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(NetworkExceptions networkExceptions)? dioError,
    TResult Function()? stockLoading,
    TResult Function(StockResponseModel stockResponseModel)? dataStock,
    TResult Function(DetailStockResponseModel detailResponseModel)?
        datadetailStock,
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
    required TResult Function(_DioError value) dioError,
    required TResult Function(_StockLoading value) stockLoading,
    required TResult Function(_DataStock value) dataStock,
    required TResult Function(_DatadetailStock value) datadetailStock,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DioError value)? dioError,
    TResult? Function(_StockLoading value)? stockLoading,
    TResult? Function(_DataStock value)? dataStock,
    TResult? Function(_DatadetailStock value)? datadetailStock,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DioError value)? dioError,
    TResult Function(_StockLoading value)? stockLoading,
    TResult Function(_DataStock value)? dataStock,
    TResult Function(_DatadetailStock value)? datadetailStock,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements StockState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$DioErrorImplCopyWith<$Res> {
  factory _$$DioErrorImplCopyWith(
          _$DioErrorImpl value, $Res Function(_$DioErrorImpl) then) =
      __$$DioErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NetworkExceptions networkExceptions});

  $NetworkExceptionsCopyWith<$Res> get networkExceptions;
}

/// @nodoc
class __$$DioErrorImplCopyWithImpl<$Res>
    extends _$StockStateCopyWithImpl<$Res, _$DioErrorImpl>
    implements _$$DioErrorImplCopyWith<$Res> {
  __$$DioErrorImplCopyWithImpl(
      _$DioErrorImpl _value, $Res Function(_$DioErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkExceptions = null,
  }) {
    return _then(_$DioErrorImpl(
      null == networkExceptions
          ? _value.networkExceptions
          : networkExceptions // ignore: cast_nullable_to_non_nullable
              as NetworkExceptions,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NetworkExceptionsCopyWith<$Res> get networkExceptions {
    return $NetworkExceptionsCopyWith<$Res>(_value.networkExceptions, (value) {
      return _then(_value.copyWith(networkExceptions: value));
    });
  }
}

/// @nodoc

class _$DioErrorImpl implements _DioError {
  const _$DioErrorImpl(this.networkExceptions);

  @override
  final NetworkExceptions networkExceptions;

  @override
  String toString() {
    return 'StockState.dioError(networkExceptions: $networkExceptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DioErrorImpl &&
            (identical(other.networkExceptions, networkExceptions) ||
                other.networkExceptions == networkExceptions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, networkExceptions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DioErrorImplCopyWith<_$DioErrorImpl> get copyWith =>
      __$$DioErrorImplCopyWithImpl<_$DioErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(NetworkExceptions networkExceptions) dioError,
    required TResult Function() stockLoading,
    required TResult Function(StockResponseModel stockResponseModel) dataStock,
    required TResult Function(DetailStockResponseModel detailResponseModel)
        datadetailStock,
  }) {
    return dioError(networkExceptions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(NetworkExceptions networkExceptions)? dioError,
    TResult? Function()? stockLoading,
    TResult? Function(StockResponseModel stockResponseModel)? dataStock,
    TResult? Function(DetailStockResponseModel detailResponseModel)?
        datadetailStock,
  }) {
    return dioError?.call(networkExceptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(NetworkExceptions networkExceptions)? dioError,
    TResult Function()? stockLoading,
    TResult Function(StockResponseModel stockResponseModel)? dataStock,
    TResult Function(DetailStockResponseModel detailResponseModel)?
        datadetailStock,
    required TResult orElse(),
  }) {
    if (dioError != null) {
      return dioError(networkExceptions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DioError value) dioError,
    required TResult Function(_StockLoading value) stockLoading,
    required TResult Function(_DataStock value) dataStock,
    required TResult Function(_DatadetailStock value) datadetailStock,
  }) {
    return dioError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DioError value)? dioError,
    TResult? Function(_StockLoading value)? stockLoading,
    TResult? Function(_DataStock value)? dataStock,
    TResult? Function(_DatadetailStock value)? datadetailStock,
  }) {
    return dioError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DioError value)? dioError,
    TResult Function(_StockLoading value)? stockLoading,
    TResult Function(_DataStock value)? dataStock,
    TResult Function(_DatadetailStock value)? datadetailStock,
    required TResult orElse(),
  }) {
    if (dioError != null) {
      return dioError(this);
    }
    return orElse();
  }
}

abstract class _DioError implements StockState {
  const factory _DioError(final NetworkExceptions networkExceptions) =
      _$DioErrorImpl;

  NetworkExceptions get networkExceptions;
  @JsonKey(ignore: true)
  _$$DioErrorImplCopyWith<_$DioErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StockLoadingImplCopyWith<$Res> {
  factory _$$StockLoadingImplCopyWith(
          _$StockLoadingImpl value, $Res Function(_$StockLoadingImpl) then) =
      __$$StockLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StockLoadingImplCopyWithImpl<$Res>
    extends _$StockStateCopyWithImpl<$Res, _$StockLoadingImpl>
    implements _$$StockLoadingImplCopyWith<$Res> {
  __$$StockLoadingImplCopyWithImpl(
      _$StockLoadingImpl _value, $Res Function(_$StockLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StockLoadingImpl implements _StockLoading {
  const _$StockLoadingImpl();

  @override
  String toString() {
    return 'StockState.stockLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StockLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(NetworkExceptions networkExceptions) dioError,
    required TResult Function() stockLoading,
    required TResult Function(StockResponseModel stockResponseModel) dataStock,
    required TResult Function(DetailStockResponseModel detailResponseModel)
        datadetailStock,
  }) {
    return stockLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(NetworkExceptions networkExceptions)? dioError,
    TResult? Function()? stockLoading,
    TResult? Function(StockResponseModel stockResponseModel)? dataStock,
    TResult? Function(DetailStockResponseModel detailResponseModel)?
        datadetailStock,
  }) {
    return stockLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(NetworkExceptions networkExceptions)? dioError,
    TResult Function()? stockLoading,
    TResult Function(StockResponseModel stockResponseModel)? dataStock,
    TResult Function(DetailStockResponseModel detailResponseModel)?
        datadetailStock,
    required TResult orElse(),
  }) {
    if (stockLoading != null) {
      return stockLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DioError value) dioError,
    required TResult Function(_StockLoading value) stockLoading,
    required TResult Function(_DataStock value) dataStock,
    required TResult Function(_DatadetailStock value) datadetailStock,
  }) {
    return stockLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DioError value)? dioError,
    TResult? Function(_StockLoading value)? stockLoading,
    TResult? Function(_DataStock value)? dataStock,
    TResult? Function(_DatadetailStock value)? datadetailStock,
  }) {
    return stockLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DioError value)? dioError,
    TResult Function(_StockLoading value)? stockLoading,
    TResult Function(_DataStock value)? dataStock,
    TResult Function(_DatadetailStock value)? datadetailStock,
    required TResult orElse(),
  }) {
    if (stockLoading != null) {
      return stockLoading(this);
    }
    return orElse();
  }
}

abstract class _StockLoading implements StockState {
  const factory _StockLoading() = _$StockLoadingImpl;
}

/// @nodoc
abstract class _$$DataStockImplCopyWith<$Res> {
  factory _$$DataStockImplCopyWith(
          _$DataStockImpl value, $Res Function(_$DataStockImpl) then) =
      __$$DataStockImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StockResponseModel stockResponseModel});

  $StockResponseModelCopyWith<$Res> get stockResponseModel;
}

/// @nodoc
class __$$DataStockImplCopyWithImpl<$Res>
    extends _$StockStateCopyWithImpl<$Res, _$DataStockImpl>
    implements _$$DataStockImplCopyWith<$Res> {
  __$$DataStockImplCopyWithImpl(
      _$DataStockImpl _value, $Res Function(_$DataStockImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stockResponseModel = null,
  }) {
    return _then(_$DataStockImpl(
      null == stockResponseModel
          ? _value.stockResponseModel
          : stockResponseModel // ignore: cast_nullable_to_non_nullable
              as StockResponseModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $StockResponseModelCopyWith<$Res> get stockResponseModel {
    return $StockResponseModelCopyWith<$Res>(_value.stockResponseModel,
        (value) {
      return _then(_value.copyWith(stockResponseModel: value));
    });
  }
}

/// @nodoc

class _$DataStockImpl implements _DataStock {
  const _$DataStockImpl(this.stockResponseModel);

  @override
  final StockResponseModel stockResponseModel;

  @override
  String toString() {
    return 'StockState.dataStock(stockResponseModel: $stockResponseModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataStockImpl &&
            (identical(other.stockResponseModel, stockResponseModel) ||
                other.stockResponseModel == stockResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stockResponseModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataStockImplCopyWith<_$DataStockImpl> get copyWith =>
      __$$DataStockImplCopyWithImpl<_$DataStockImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(NetworkExceptions networkExceptions) dioError,
    required TResult Function() stockLoading,
    required TResult Function(StockResponseModel stockResponseModel) dataStock,
    required TResult Function(DetailStockResponseModel detailResponseModel)
        datadetailStock,
  }) {
    return dataStock(stockResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(NetworkExceptions networkExceptions)? dioError,
    TResult? Function()? stockLoading,
    TResult? Function(StockResponseModel stockResponseModel)? dataStock,
    TResult? Function(DetailStockResponseModel detailResponseModel)?
        datadetailStock,
  }) {
    return dataStock?.call(stockResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(NetworkExceptions networkExceptions)? dioError,
    TResult Function()? stockLoading,
    TResult Function(StockResponseModel stockResponseModel)? dataStock,
    TResult Function(DetailStockResponseModel detailResponseModel)?
        datadetailStock,
    required TResult orElse(),
  }) {
    if (dataStock != null) {
      return dataStock(stockResponseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DioError value) dioError,
    required TResult Function(_StockLoading value) stockLoading,
    required TResult Function(_DataStock value) dataStock,
    required TResult Function(_DatadetailStock value) datadetailStock,
  }) {
    return dataStock(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DioError value)? dioError,
    TResult? Function(_StockLoading value)? stockLoading,
    TResult? Function(_DataStock value)? dataStock,
    TResult? Function(_DatadetailStock value)? datadetailStock,
  }) {
    return dataStock?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DioError value)? dioError,
    TResult Function(_StockLoading value)? stockLoading,
    TResult Function(_DataStock value)? dataStock,
    TResult Function(_DatadetailStock value)? datadetailStock,
    required TResult orElse(),
  }) {
    if (dataStock != null) {
      return dataStock(this);
    }
    return orElse();
  }
}

abstract class _DataStock implements StockState {
  const factory _DataStock(final StockResponseModel stockResponseModel) =
      _$DataStockImpl;

  StockResponseModel get stockResponseModel;
  @JsonKey(ignore: true)
  _$$DataStockImplCopyWith<_$DataStockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DatadetailStockImplCopyWith<$Res> {
  factory _$$DatadetailStockImplCopyWith(_$DatadetailStockImpl value,
          $Res Function(_$DatadetailStockImpl) then) =
      __$$DatadetailStockImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DetailStockResponseModel detailResponseModel});

  $DetailStockResponseModelCopyWith<$Res> get detailResponseModel;
}

/// @nodoc
class __$$DatadetailStockImplCopyWithImpl<$Res>
    extends _$StockStateCopyWithImpl<$Res, _$DatadetailStockImpl>
    implements _$$DatadetailStockImplCopyWith<$Res> {
  __$$DatadetailStockImplCopyWithImpl(
      _$DatadetailStockImpl _value, $Res Function(_$DatadetailStockImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailResponseModel = null,
  }) {
    return _then(_$DatadetailStockImpl(
      null == detailResponseModel
          ? _value.detailResponseModel
          : detailResponseModel // ignore: cast_nullable_to_non_nullable
              as DetailStockResponseModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DetailStockResponseModelCopyWith<$Res> get detailResponseModel {
    return $DetailStockResponseModelCopyWith<$Res>(_value.detailResponseModel,
        (value) {
      return _then(_value.copyWith(detailResponseModel: value));
    });
  }
}

/// @nodoc

class _$DatadetailStockImpl implements _DatadetailStock {
  const _$DatadetailStockImpl(this.detailResponseModel);

  @override
  final DetailStockResponseModel detailResponseModel;

  @override
  String toString() {
    return 'StockState.datadetailStock(detailResponseModel: $detailResponseModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatadetailStockImpl &&
            (identical(other.detailResponseModel, detailResponseModel) ||
                other.detailResponseModel == detailResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, detailResponseModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DatadetailStockImplCopyWith<_$DatadetailStockImpl> get copyWith =>
      __$$DatadetailStockImplCopyWithImpl<_$DatadetailStockImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(NetworkExceptions networkExceptions) dioError,
    required TResult Function() stockLoading,
    required TResult Function(StockResponseModel stockResponseModel) dataStock,
    required TResult Function(DetailStockResponseModel detailResponseModel)
        datadetailStock,
  }) {
    return datadetailStock(detailResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(NetworkExceptions networkExceptions)? dioError,
    TResult? Function()? stockLoading,
    TResult? Function(StockResponseModel stockResponseModel)? dataStock,
    TResult? Function(DetailStockResponseModel detailResponseModel)?
        datadetailStock,
  }) {
    return datadetailStock?.call(detailResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(NetworkExceptions networkExceptions)? dioError,
    TResult Function()? stockLoading,
    TResult Function(StockResponseModel stockResponseModel)? dataStock,
    TResult Function(DetailStockResponseModel detailResponseModel)?
        datadetailStock,
    required TResult orElse(),
  }) {
    if (datadetailStock != null) {
      return datadetailStock(detailResponseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DioError value) dioError,
    required TResult Function(_StockLoading value) stockLoading,
    required TResult Function(_DataStock value) dataStock,
    required TResult Function(_DatadetailStock value) datadetailStock,
  }) {
    return datadetailStock(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DioError value)? dioError,
    TResult? Function(_StockLoading value)? stockLoading,
    TResult? Function(_DataStock value)? dataStock,
    TResult? Function(_DatadetailStock value)? datadetailStock,
  }) {
    return datadetailStock?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DioError value)? dioError,
    TResult Function(_StockLoading value)? stockLoading,
    TResult Function(_DataStock value)? dataStock,
    TResult Function(_DatadetailStock value)? datadetailStock,
    required TResult orElse(),
  }) {
    if (datadetailStock != null) {
      return datadetailStock(this);
    }
    return orElse();
  }
}

abstract class _DatadetailStock implements StockState {
  const factory _DatadetailStock(
          final DetailStockResponseModel detailResponseModel) =
      _$DatadetailStockImpl;

  DetailStockResponseModel get detailResponseModel;
  @JsonKey(ignore: true)
  _$$DatadetailStockImplCopyWith<_$DatadetailStockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
