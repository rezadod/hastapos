import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hastapos/application/message/message_response_model.dart';
import 'package:hastapos/domain/stock/response/data_satuan_response_model.dart';
import 'package:hastapos/domain/stock/response/detail_stock_response_model.dart';
import 'package:injectable/injectable.dart';
import 'package:hastapos/domain/stock/response/stock_response_model.dart';
import 'package:hastapos/utils/api_url.dart';
import 'package:hastapos/utils/dio/dio_client.dart';
import 'package:hastapos/utils/dio/network_exceptions.dart';

abstract class IStock {
  Future<Either<NetworkExceptions, StockResponseModel>> dataStock();
  Future<Either<NetworkExceptions, DetailStockResponseModel>> detailStock(
      {required id});
  Future<Either<NetworkExceptions, DataSatuanResponseModel>> satuan();
  Future<Either<MessageResponseModel, MessageResponseModel>> insertStock(
      {required req});
}

@LazySingleton(as: IStock)
class Stockrepo extends IStock {
  DioClient? dioClient;
  var dio = Dio();

  @override
  Future<Either<NetworkExceptions, StockResponseModel>> dataStock() async {
    try {
      dioClient = DioClient(apiUrl, dio);
      final response = await dioClient!.get(
        'stock',
      );
      StockResponseModel data = StockResponseModel.fromJson(response);

      return right(data);
    } catch (e) {
      return left(
        NetworkExceptions.getDioException(e),
      );
    }
  }

  @override
  Future<Either<NetworkExceptions, DetailStockResponseModel>> detailStock(
      {required id}) async {
    try {
      dioClient = DioClient(apiUrl, dio);
      final response =
          await dioClient!.post('detail_stock', queryParameters: {"id": id});
      DetailStockResponseModel data =
          DetailStockResponseModel.fromJson(response);
      return right(data);
    } catch (e) {
      return left(
        NetworkExceptions.getDioException(e),
      );
    }
  }

  @override
  Future<Either<NetworkExceptions, DataSatuanResponseModel>> satuan() async {
    try {
      dioClient = DioClient(apiUrl, dio);
      final response = await dioClient!.get(
        'data_satuan',
      );
      DataSatuanResponseModel data = DataSatuanResponseModel.fromJson(response);
      return right(data);
    } catch (e) {
      return left(
        NetworkExceptions.getDioException(e),
      );
    }
  }

  @override
  Future<Either<MessageResponseModel, MessageResponseModel>> insertStock(
      {required req}) async {
    try {
      dioClient = DioClient(apiUrl, dio);
      final response = await dioClient!.post('tambah_stock', data: req);
      MessageResponseModel data = MessageResponseModel.fromJson(response);
      return right(data);
    } catch (e) {
      return left(
        MessageResponseModel(message: e.toString()),
      );
    }
  }
}
