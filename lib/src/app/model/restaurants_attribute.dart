import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurants_attribute.freezed.dart';
part 'restaurants_attribute.g.dart';

@freezed
class RestaurantsAttribute with _$RestaurantsAttribute {
  factory RestaurantsAttribute({
    String? name,
    String? description,
    String? latitude,
    String? longitude,
    String? address,
    String? createdAt,
    String? updatedAt,
    String? publishedAt,
    String? photo,
    String? userId,
  }) = _RestaurantsAttribute;
  const RestaurantsAttribute._();

  factory RestaurantsAttribute.fromJson(Map<String, dynamic> json) =>
      _$RestaurantsAttributeFromJson(json);
}
