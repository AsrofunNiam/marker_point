import 'package:dio/dio.dart';
import 'package:marker_point/src/app/util/exception.dart';

import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class RequestHeader {
  static const String authorization = 'Authorization';
}

abstract class Api {
  static String urlApi = 'http://103.150.116.14:1337';
  static final dio = Dio()
    ..interceptors.add(
      PrettyDioLogger(
        // requestHeader: true,
        // queryParameters: true,
        // requestBody: true,
        responseHeader: true,
        // showCUrl: true,
        // canShowLog: kDebugMode,
      ),
    );
}

abstract class Repository {
  Repository({required this.dio});

  final Dio dio;

  Exception checkErrorApi(Object error) {
    // ignore: deprecated_member_use
    if (error is DioError) {
      if (error.response?.statusCode == 401) {
        // AuthenticationBloc.instance.add(const AuthenticationEvent.logout());
        // return const AuthException(AuthExceptionType.tokenExpired);
      } else if (error.response?.statusCode == 400 ||
          error.response?.statusCode == 500) {
        final message = error.response?.data as Map<String, dynamic>?;
        if (message != null && message['message'] != null) {
          final errorMessage = message['message'].toString();
          return ApiException(errorMessage);
        }
      }
    }
    return ApiException('Error calling API: $error');
  }
}
