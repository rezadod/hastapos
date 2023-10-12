part of 'stock_cubit.dart';

@freezed
class StockState with _$StockState {
  const factory StockState.initial() = _Initial;
  const factory StockState.dioError(NetworkExceptions networkExceptions) =
      _DioError;
  const factory StockState.stockLoading() = _StockLoading;
  const factory StockState.dataStock(StockResponseModel stockResponseModel) =
      _DataStock;
  const factory StockState.datadetailStock(
      DetailStockResponseModel detailResponseModel) = _DatadetailStock;
}
