import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hastapos/domain/auth/response/login_response_model.dart';
import 'package:injectable/injectable.dart';
import 'package:hastapos/utils/api_url.dart';
import 'package:hastapos/utils/dio/dio_client.dart';
import 'package:hastapos/utils/dio/network_exceptions.dart';

abstract class IAuth {
  Future<Either<NetworkExceptions, LoginResponseModel>> login({required req});
}

@LazySingleton(as: IAuth)
class AuthRepo extends IAuth {
  DioClient? dioClient;
  var dio = Dio();

  @override
  Future<Either<NetworkExceptions, LoginResponseModel>> login(
      {required req}) async {
    try {
      dioClient = DioClient(apiUrl, dio);
      final response = await dioClient!.post('login', data: req);
      LoginResponseModel data = LoginResponseModel.fromJson(response);
      return right(data);
    } catch (e) {
      return left(
        NetworkExceptions.getDioException(e),
      );
    }
  }
}
