import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastapos/application/message/message_response_model.dart';
import 'package:hastapos/domain/stock/response/data_satuan_response_model.dart';
import 'package:hastapos/domain/stock/response/detail_stock_response_model.dart';
import 'package:hastapos/domain/stock/response/stock_response_model.dart';
import 'package:hastapos/domain/stock/stock_repo.dart';
import 'package:hastapos/utils/dio/network_exceptions.dart';
import 'package:injectable/injectable.dart';

part 'stock_state.dart';
part 'stock_cubit.freezed.dart';

@injectable
class StockCubit extends Cubit<StockState> {
  StockCubit(this._iStock) : super(StockState.initial());
  final IStock _iStock;
  void getDataStock() async {
    emit(const StockState.stockLoading());
    try {
      final result = await _iStock.dataStock();
      result.fold(
        (l) => emit(StockState.dioError(l)),
        (r) => emit(StockState.dataStock(r)),
      );
    } catch (e) {
      emit(
        StockState.dioError(NetworkExceptions.getDioException(e)),
      );
    }
  }

  void detailStock({required id}) async {
    emit(const StockState.stockLoading());
    try {
      final result = await _iStock.detailStock(id: id);
      result.fold(
        (l) => emit(StockState.dioError(l)),
        (r) => emit(StockState.datadetailStock(r)),
      );
    } catch (e) {
      emit(
        StockState.dioError(NetworkExceptions.getDioException(e)),
      );
    }
  }

  void dataSatuan() async {
    emit(const StockState.stockLoading());
    try {
      final result = await _iStock.satuan();
      result.fold(
        (l) => emit(StockState.dioError(l)),
        (r) => emit(StockState.satuan(r)),
      );
    } catch (e) {
      emit(
        StockState.dioError(NetworkExceptions.getDioException(e)),
      );
    }
  }

  void createStock({required data}) async {
    emit(const StockState.stockLoading());
    try {
      final result = await _iStock.insertStock(req: data);
      result.fold(
        (l) => emit(StockState.messageSuccess(l)),
        (r) => emit(StockState.messageFailed(r)),
      );
    } catch (e) {
      emit(
        StockState.messageFailed(MessageResponseModel(message: e.toString())),
      );
    }
  }
}
