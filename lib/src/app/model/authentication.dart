import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marker_point/src/app/model/user.dart';

part 'authentication.freezed.dart';
part 'authentication.g.dart';

@freezed
class Authentication with _$Authentication {
  factory Authentication({
    User? user,
    @JsonKey(name: 'jwt') required String authentication,
  }) = _Authentication;
  const Authentication._();

  factory Authentication.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationFromJson(json);
}
