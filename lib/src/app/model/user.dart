import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    required int? id,
    required String? username,
    required String? email,
    required String? provider,
    required bool? confirmed,
    required bool? blocked,
    required String? createdAt,
    required String? updatedAt,
  }) = _User;
  const User._();

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
