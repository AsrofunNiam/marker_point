// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurants_attribute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RestaurantsAttribute _$$_RestaurantsAttributeFromJson(
        Map<String, dynamic> json) =>
    _$_RestaurantsAttribute(
      name: json['name'] as String?,
      description: json['description'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      address: json['address'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      publishedAt: json['publishedAt'] as String?,
      photo: json['photo'] as String?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$$_RestaurantsAttributeToJson(
        _$_RestaurantsAttribute instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'address': instance.address,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'publishedAt': instance.publishedAt,
      'photo': instance.photo,
      'userId': instance.userId,
    };
