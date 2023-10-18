part of 'keranjang_cubit.dart';

@freezed
class KeranjangState with _$KeranjangState {
  const factory KeranjangState.initial() = _Initial;
  const factory KeranjangState.loading() = _Loading;
  const factory KeranjangState.dioError(NetworkExceptions error) = _DioError;
  const factory KeranjangState.getKeranjangSuccess(
      KeranjangResponseModel keranjangResponseModel) = _GetKeranjangSuccess;
}
