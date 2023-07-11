import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marker_point/src/app/model/restaurants_attribute.dart';

part 'restaurants.freezed.dart';
part 'restaurants.g.dart';

@freezed
class Restaurants with _$Restaurants {
  factory Restaurants({
    int? id,
    @JsonKey(name: 'attributes', fromJson: RestaurantsAttribute.fromJson)
    required RestaurantsAttribute? restaurantsAttribute,
  }) = _Restaurants;
  const Restaurants._();

  factory Restaurants.fromJson(Map<String, dynamic> json) =>
      _$RestaurantsFromJson(json);
}
