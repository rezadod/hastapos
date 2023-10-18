import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hastapos/domain/keranjang/response/keranjang_response_model.dart';
import 'package:injectable/injectable.dart';
import 'package:hastapos/domain/stock/response/stock_response_model.dart';
import 'package:hastapos/utils/api_url.dart';
import 'package:hastapos/utils/dio/dio_client.dart';
import 'package:hastapos/utils/dio/network_exceptions.dart';

abstract class IKeranjang {
  Future<Either<NetworkExceptions, KeranjangResponseModel>> keranjang(
      {required id});
}

@LazySingleton(as: IKeranjang)
class Stockrepo extends IKeranjang {
  DioClient? dioClient;
  var dio = Dio();

  @override
  Future<Either<NetworkExceptions, KeranjangResponseModel>> keranjang(
      {required id}) async {
    try {
      dioClient = DioClient(apiUrl, dio);
      final response =
          await dioClient!.post('keranjang', data: {"keranjang": id});
      KeranjangResponseModel data = KeranjangResponseModel.fromJson(response);
      return right(data);
    } catch (e) {
      return left(
        NetworkExceptions.getDioException(e),
      );
    }
  }
}
