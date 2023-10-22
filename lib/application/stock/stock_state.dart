part of 'stock_cubit.dart';

@freezed
class StockState with _$StockState {
  const factory StockState.initial() = _Initial;
  const factory StockState.dioError(NetworkExceptions networkExceptions) =
      _DioError;
  const factory StockState.stockLoading() = _StockLoading;

  // ! SUCCESS
  const factory StockState.dataStock(StockResponseModel stockResponseModel) =
      _DataStock;
  const factory StockState.datadetailStock(
      DetailStockResponseModel detailResponseModel) = _DatadetailStock;
  const factory StockState.satuan(
      DataSatuanResponseModel dataSatuanResponseModel) = _Satuan;
  const factory StockState.messageSuccess(MessageResponseModel message) =
      _MessageSuccess;
  const factory StockState.messageFailed(MessageResponseModel message) =
      _MessageFailed;
}
