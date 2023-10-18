// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'keranjang_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KeranjangResponseModel _$KeranjangResponseModelFromJson(
    Map<String, dynamic> json) {
  return _KeranjangResponseModel.fromJson(json);
}

/// @nodoc
mixin _$KeranjangResponseModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'invoice')
  List<Invoice> get invoice => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_harga')
  int get totalHarga => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama_kasir')
  String get namaKasir => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KeranjangResponseModelCopyWith<KeranjangResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeranjangResponseModelCopyWith<$Res> {
  factory $KeranjangResponseModelCopyWith(KeranjangResponseModel value,
          $Res Function(KeranjangResponseModel) then) =
      _$KeranjangResponseModelCopyWithImpl<$Res, KeranjangResponseModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'invoice') List<Invoice> invoice,
      @JsonKey(name: 'total_harga') int totalHarga,
      @JsonKey(name: 'nama_kasir') String namaKasir});
}

/// @nodoc
class _$KeranjangResponseModelCopyWithImpl<$Res,
        $Val extends KeranjangResponseModel>
    implements $KeranjangResponseModelCopyWith<$Res> {
  _$KeranjangResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? invoice = null,
    Object? totalHarga = null,
    Object? namaKasir = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      invoice: null == invoice
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as List<Invoice>,
      totalHarga: null == totalHarga
          ? _value.totalHarga
          : totalHarga // ignore: cast_nullable_to_non_nullable
              as int,
      namaKasir: null == namaKasir
          ? _value.namaKasir
          : namaKasir // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KeranjangResponseModelImplCopyWith<$Res>
    implements $KeranjangResponseModelCopyWith<$Res> {
  factory _$$KeranjangResponseModelImplCopyWith(
          _$KeranjangResponseModelImpl value,
          $Res Function(_$KeranjangResponseModelImpl) then) =
      __$$KeranjangResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'invoice') List<Invoice> invoice,
      @JsonKey(name: 'total_harga') int totalHarga,
      @JsonKey(name: 'nama_kasir') String namaKasir});
}

/// @nodoc
class __$$KeranjangResponseModelImplCopyWithImpl<$Res>
    extends _$KeranjangResponseModelCopyWithImpl<$Res,
        _$KeranjangResponseModelImpl>
    implements _$$KeranjangResponseModelImplCopyWith<$Res> {
  __$$KeranjangResponseModelImplCopyWithImpl(
      _$KeranjangResponseModelImpl _value,
      $Res Function(_$KeranjangResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? invoice = null,
    Object? totalHarga = null,
    Object? namaKasir = null,
  }) {
    return _then(_$KeranjangResponseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      invoice: null == invoice
          ? _value._invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as List<Invoice>,
      totalHarga: null == totalHarga
          ? _value.totalHarga
          : totalHarga // ignore: cast_nullable_to_non_nullable
              as int,
      namaKasir: null == namaKasir
          ? _value.namaKasir
          : namaKasir // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KeranjangResponseModelImpl implements _KeranjangResponseModel {
  _$KeranjangResponseModelImpl(
      {this.id = 0,
      @JsonKey(name: 'invoice') final List<Invoice> invoice = const [],
      @JsonKey(name: 'total_harga') this.totalHarga = 0,
      @JsonKey(name: 'nama_kasir') this.namaKasir = ''})
      : _invoice = invoice;

  factory _$KeranjangResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$KeranjangResponseModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  final List<Invoice> _invoice;
  @override
  @JsonKey(name: 'invoice')
  List<Invoice> get invoice {
    if (_invoice is EqualUnmodifiableListView) return _invoice;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_invoice);
  }

  @override
  @JsonKey(name: 'total_harga')
  final int totalHarga;
  @override
  @JsonKey(name: 'nama_kasir')
  final String namaKasir;

  @override
  String toString() {
    return 'KeranjangResponseModel(id: $id, invoice: $invoice, totalHarga: $totalHarga, namaKasir: $namaKasir)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeranjangResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._invoice, _invoice) &&
            (identical(other.totalHarga, totalHarga) ||
                other.totalHarga == totalHarga) &&
            (identical(other.namaKasir, namaKasir) ||
                other.namaKasir == namaKasir));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id,
      const DeepCollectionEquality().hash(_invoice), totalHarga, namaKasir);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KeranjangResponseModelImplCopyWith<_$KeranjangResponseModelImpl>
      get copyWith => __$$KeranjangResponseModelImplCopyWithImpl<
          _$KeranjangResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeranjangResponseModelImplToJson(
      this,
    );
  }
}

abstract class _KeranjangResponseModel implements KeranjangResponseModel {
  factory _KeranjangResponseModel(
          {final int id,
          @JsonKey(name: 'invoice') final List<Invoice> invoice,
          @JsonKey(name: 'total_harga') final int totalHarga,
          @JsonKey(name: 'nama_kasir') final String namaKasir}) =
      _$KeranjangResponseModelImpl;

  factory _KeranjangResponseModel.fromJson(Map<String, dynamic> json) =
      _$KeranjangResponseModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'invoice')
  List<Invoice> get invoice;
  @override
  @JsonKey(name: 'total_harga')
  int get totalHarga;
  @override
  @JsonKey(name: 'nama_kasir')
  String get namaKasir;
  @override
  @JsonKey(ignore: true)
  _$$KeranjangResponseModelImplCopyWith<_$KeranjangResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Invoice _$InvoiceFromJson(Map<String, dynamic> json) {
  return _Invoice.fromJson(json);
}

/// @nodoc
mixin _$Invoice {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama_barang')
  String get namaBarang => throw _privateConstructorUsedError;
  @JsonKey(name: 'kuantiti')
  String get kuantiti => throw _privateConstructorUsedError;
  @JsonKey(name: 'jenis_pembelian')
  String get jenisPembelian => throw _privateConstructorUsedError;
  @JsonKey(name: 'satuan')
  String get satuan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceCopyWith<Invoice> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceCopyWith<$Res> {
  factory $InvoiceCopyWith(Invoice value, $Res Function(Invoice) then) =
      _$InvoiceCopyWithImpl<$Res, Invoice>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'nama_barang') String namaBarang,
      @JsonKey(name: 'kuantiti') String kuantiti,
      @JsonKey(name: 'jenis_pembelian') String jenisPembelian,
      @JsonKey(name: 'satuan') String satuan});
}

/// @nodoc
class _$InvoiceCopyWithImpl<$Res, $Val extends Invoice>
    implements $InvoiceCopyWith<$Res> {
  _$InvoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? namaBarang = null,
    Object? kuantiti = null,
    Object? jenisPembelian = null,
    Object? satuan = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      namaBarang: null == namaBarang
          ? _value.namaBarang
          : namaBarang // ignore: cast_nullable_to_non_nullable
              as String,
      kuantiti: null == kuantiti
          ? _value.kuantiti
          : kuantiti // ignore: cast_nullable_to_non_nullable
              as String,
      jenisPembelian: null == jenisPembelian
          ? _value.jenisPembelian
          : jenisPembelian // ignore: cast_nullable_to_non_nullable
              as String,
      satuan: null == satuan
          ? _value.satuan
          : satuan // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvoiceImplCopyWith<$Res> implements $InvoiceCopyWith<$Res> {
  factory _$$InvoiceImplCopyWith(
          _$InvoiceImpl value, $Res Function(_$InvoiceImpl) then) =
      __$$InvoiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'nama_barang') String namaBarang,
      @JsonKey(name: 'kuantiti') String kuantiti,
      @JsonKey(name: 'jenis_pembelian') String jenisPembelian,
      @JsonKey(name: 'satuan') String satuan});
}

/// @nodoc
class __$$InvoiceImplCopyWithImpl<$Res>
    extends _$InvoiceCopyWithImpl<$Res, _$InvoiceImpl>
    implements _$$InvoiceImplCopyWith<$Res> {
  __$$InvoiceImplCopyWithImpl(
      _$InvoiceImpl _value, $Res Function(_$InvoiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? namaBarang = null,
    Object? kuantiti = null,
    Object? jenisPembelian = null,
    Object? satuan = null,
  }) {
    return _then(_$InvoiceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      namaBarang: null == namaBarang
          ? _value.namaBarang
          : namaBarang // ignore: cast_nullable_to_non_nullable
              as String,
      kuantiti: null == kuantiti
          ? _value.kuantiti
          : kuantiti // ignore: cast_nullable_to_non_nullable
              as String,
      jenisPembelian: null == jenisPembelian
          ? _value.jenisPembelian
          : jenisPembelian // ignore: cast_nullable_to_non_nullable
              as String,
      satuan: null == satuan
          ? _value.satuan
          : satuan // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceImpl implements _Invoice {
  _$InvoiceImpl(
      {this.id = 0,
      @JsonKey(name: 'nama_barang') this.namaBarang = "",
      @JsonKey(name: 'kuantiti') this.kuantiti = "",
      @JsonKey(name: 'jenis_pembelian') this.jenisPembelian = "",
      @JsonKey(name: 'satuan') this.satuan = ""});

  factory _$InvoiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey(name: 'nama_barang')
  final String namaBarang;
  @override
  @JsonKey(name: 'kuantiti')
  final String kuantiti;
  @override
  @JsonKey(name: 'jenis_pembelian')
  final String jenisPembelian;
  @override
  @JsonKey(name: 'satuan')
  final String satuan;

  @override
  String toString() {
    return 'Invoice(id: $id, namaBarang: $namaBarang, kuantiti: $kuantiti, jenisPembelian: $jenisPembelian, satuan: $satuan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.namaBarang, namaBarang) ||
                other.namaBarang == namaBarang) &&
            (identical(other.kuantiti, kuantiti) ||
                other.kuantiti == kuantiti) &&
            (identical(other.jenisPembelian, jenisPembelian) ||
                other.jenisPembelian == jenisPembelian) &&
            (identical(other.satuan, satuan) || other.satuan == satuan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, namaBarang, kuantiti, jenisPembelian, satuan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceImplCopyWith<_$InvoiceImpl> get copyWith =>
      __$$InvoiceImplCopyWithImpl<_$InvoiceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceImplToJson(
      this,
    );
  }
}

abstract class _Invoice implements Invoice {
  factory _Invoice(
      {final int id,
      @JsonKey(name: 'nama_barang') final String namaBarang,
      @JsonKey(name: 'kuantiti') final String kuantiti,
      @JsonKey(name: 'jenis_pembelian') final String jenisPembelian,
      @JsonKey(name: 'satuan') final String satuan}) = _$InvoiceImpl;

  factory _Invoice.fromJson(Map<String, dynamic> json) = _$InvoiceImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'nama_barang')
  String get namaBarang;
  @override
  @JsonKey(name: 'kuantiti')
  String get kuantiti;
  @override
  @JsonKey(name: 'jenis_pembelian')
  String get jenisPembelian;
  @override
  @JsonKey(name: 'satuan')
  String get satuan;
  @override
  @JsonKey(ignore: true)
  _$$InvoiceImplCopyWith<_$InvoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
