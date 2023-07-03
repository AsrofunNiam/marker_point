import 'package:freezed_annotation/freezed_annotation.dart';

part 'login.freezed.dart';
part 'login.g.dart';

@freezed
class Login with _$Login {
  factory Login({
    required String identifier,
    required String password,
  }) = _Login;
  const Login._();

  factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);
}
