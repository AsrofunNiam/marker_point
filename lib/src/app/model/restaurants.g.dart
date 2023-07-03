// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurants.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Restaurants _$$_RestaurantsFromJson(Map<String, dynamic> json) =>
    _$_Restaurants(
      id: json['id'] as int?,
      restaurantsAttribute: json['restaurantsAttribute'] == null
          ? null
          : RestaurantsAttribute.fromJson(
              json['restaurantsAttribute'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RestaurantsToJson(_$_Restaurants instance) =>
    <String, dynamic>{
      'id': instance.id,
      'restaurantsAttribute': instance.restaurantsAttribute,
    };
