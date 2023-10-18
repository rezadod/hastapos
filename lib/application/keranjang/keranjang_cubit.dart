import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastapos/domain/keranjang/keranjang_repo.dart';
import 'package:hastapos/domain/keranjang/response/keranjang_response_model.dart';
import 'package:hastapos/utils/dio/network_exceptions.dart';
import 'package:injectable/injectable.dart';

part 'keranjang_state.dart';
part 'keranjang_cubit.freezed.dart';

@injectable
class KeranjangCubit extends Cubit<KeranjangState> {
  KeranjangCubit(this._iKeranjang) : super(KeranjangState.initial());
  final IKeranjang _iKeranjang;
  void keranjang({required data}) async {
    emit(const KeranjangState.loading());
    try {
      final result = await _iKeranjang.keranjang(id: data);
      result.fold(
        (l) => emit(KeranjangState.dioError(l)),
        (r) => emit(KeranjangState.getKeranjangSuccess(r)),
      );
    } catch (e) {
      emit(
        KeranjangState.dioError(NetworkExceptions.getDioException(e)),
      );
    }
  }
}
