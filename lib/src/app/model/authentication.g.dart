// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Authentication _$$_AuthenticationFromJson(Map<String, dynamic> json) =>
    _$_Authentication(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      authentication: json['jwt'] as String,
    );

Map<String, dynamic> _$$_AuthenticationToJson(_$_Authentication instance) =>
    <String, dynamic>{
      'user': instance.user,
      'jwt': instance.authentication,
    };
