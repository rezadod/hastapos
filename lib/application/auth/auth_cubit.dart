import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hastapos/domain/auth/auth_repo.dart';
import 'package:hastapos/domain/auth/response/login_response_model.dart';
import 'package:hastapos/utils/dio/network_exceptions.dart';
import 'package:hastapos/utils/user_session.dart' as userSession;
import 'package:injectable/injectable.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._iAuth) : super(AuthState.initial());
  final IAuth _iAuth;
  void login({required req}) async {
    emit(const AuthState.loading());
    try {
      final result = await _iAuth.login(req: req);
      result.fold(
        (l) => emit(AuthState.dioError(l)),
        (r) => emit(AuthState.loginSuccess(r)),
      );
    } catch (e) {
      emit(
        AuthState.dioError(NetworkExceptions.getDioException(e)),
      );
    }
  }

  void saveUserToLocalStorage(LoginResponseModel data) async {
    emit(const AuthState.loading());
    try {
      GetStorage().remove(userSession.LOCAL);
      await GetStorage().write(
        userSession.LOCAL,
        jsonEncode(
          data,
        ),
      );
      emit(const AuthState.saveUserSession());
    } catch (e) {
      e.toString();
    }
  }
}
