import 'dart:convert';

import 'package:marker_point/src/app/model/authentication.dart';
import 'package:marker_point/src/app/resource/base_api.dart';
import 'package:marker_point/src/app/util/exception.dart';

class LoginRepository extends Repository {
  LoginRepository({required super.dio});
  static final pathLogin = '${Api.urlApi}/api/auth/local';

  static LoginRepository instance = LoginRepository(dio: Api.dio);
  Future<Authentication?> login({
    required String email,
    required String password,
  }) async {
    try {
      final result = await dio.post<Map<String, dynamic>>(pathLogin,
          data: jsonEncode({"identifier": email, "password": password}));
      return Authentication.fromJson(
        result.data!,
      );
    } catch (error, stackTrace) {
      throw ApiException('Error calling API: $error');
    }
  }
}
