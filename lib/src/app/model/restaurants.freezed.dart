// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurants.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Restaurants _$RestaurantsFromJson(Map<String, dynamic> json) {
  return _Restaurants.fromJson(json);
}

/// @nodoc
mixin _$Restaurants {
  int? get id => throw _privateConstructorUsedError;
  RestaurantsAttribute? get restaurantsAttribute =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantsCopyWith<Restaurants> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantsCopyWith<$Res> {
  factory $RestaurantsCopyWith(
          Restaurants value, $Res Function(Restaurants) then) =
      _$RestaurantsCopyWithImpl<$Res, Restaurants>;
  @useResult
  $Res call({int? id, RestaurantsAttribute? restaurantsAttribute});

  $RestaurantsAttributeCopyWith<$Res>? get restaurantsAttribute;
}

/// @nodoc
class _$RestaurantsCopyWithImpl<$Res, $Val extends Restaurants>
    implements $RestaurantsCopyWith<$Res> {
  _$RestaurantsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? restaurantsAttribute = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      restaurantsAttribute: freezed == restaurantsAttribute
          ? _value.restaurantsAttribute
          : restaurantsAttribute // ignore: cast_nullable_to_non_nullable
              as RestaurantsAttribute?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RestaurantsAttributeCopyWith<$Res>? get restaurantsAttribute {
    if (_value.restaurantsAttribute == null) {
      return null;
    }

    return $RestaurantsAttributeCopyWith<$Res>(_value.restaurantsAttribute!,
        (value) {
      return _then(_value.copyWith(restaurantsAttribute: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RestaurantsCopyWith<$Res>
    implements $RestaurantsCopyWith<$Res> {
  factory _$$_RestaurantsCopyWith(
          _$_Restaurants value, $Res Function(_$_Restaurants) then) =
      __$$_RestaurantsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, RestaurantsAttribute? restaurantsAttribute});

  @override
  $RestaurantsAttributeCopyWith<$Res>? get restaurantsAttribute;
}

/// @nodoc
class __$$_RestaurantsCopyWithImpl<$Res>
    extends _$RestaurantsCopyWithImpl<$Res, _$_Restaurants>
    implements _$$_RestaurantsCopyWith<$Res> {
  __$$_RestaurantsCopyWithImpl(
      _$_Restaurants _value, $Res Function(_$_Restaurants) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? restaurantsAttribute = freezed,
  }) {
    return _then(_$_Restaurants(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      restaurantsAttribute: freezed == restaurantsAttribute
          ? _value.restaurantsAttribute
          : restaurantsAttribute // ignore: cast_nullable_to_non_nullable
              as RestaurantsAttribute?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Restaurants extends _Restaurants {
  _$_Restaurants({this.id, this.restaurantsAttribute}) : super._();

  factory _$_Restaurants.fromJson(Map<String, dynamic> json) =>
      _$$_RestaurantsFromJson(json);

  @override
  final int? id;
  @override
  final RestaurantsAttribute? restaurantsAttribute;

  @override
  String toString() {
    return 'Restaurants(id: $id, restaurantsAttribute: $restaurantsAttribute)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Restaurants &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.restaurantsAttribute, restaurantsAttribute) ||
                other.restaurantsAttribute == restaurantsAttribute));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, restaurantsAttribute);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RestaurantsCopyWith<_$_Restaurants> get copyWith =>
      __$$_RestaurantsCopyWithImpl<_$_Restaurants>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RestaurantsToJson(
      this,
    );
  }
}

abstract class _Restaurants extends Restaurants {
  factory _Restaurants(
      {final int? id,
      final RestaurantsAttribute? restaurantsAttribute}) = _$_Restaurants;
  _Restaurants._() : super._();

  factory _Restaurants.fromJson(Map<String, dynamic> json) =
      _$_Restaurants.fromJson;

  @override
  int? get id;
  @override
  RestaurantsAttribute? get restaurantsAttribute;
  @override
  @JsonKey(ignore: true)
  _$$_RestaurantsCopyWith<_$_Restaurants> get copyWith =>
      throw _privateConstructorUsedError;
}
