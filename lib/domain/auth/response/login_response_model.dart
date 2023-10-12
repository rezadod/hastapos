import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_model.freezed.dart';
part 'login_response_model.g.dart';

@freezed
class LoginResponseModel with _$LoginResponseModel {
  factory LoginResponseModel({
    @Default(false) bool success,
    @Default('') String token,
    @JsonKey(name: 'data') Data? dataUser,
  }) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
  factory Data({
    @Default(0) @JsonKey(name: 'id') int id,
    @Default('') @JsonKey(name: 'email') String email,
    @Default('') @JsonKey(name: 'username') String username,
    @Default(0) @JsonKey(name: 'no_hp') int noHp,
    @Default(0) @JsonKey(name: 'role_id') int roleId,
    @Default(0) @JsonKey(name: 'toko_id') int tokoId,
    @Default('') @JsonKey(name: 'created_at') String createdAt,
    @Default('') @JsonKey(name: 'updated_at') String updatedAt,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
