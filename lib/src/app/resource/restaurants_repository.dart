import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:marker_point/src/app/model/restaurants.dart';
import 'package:marker_point/src/app/resource/base_api.dart';

class RestaurantsRepository extends Repository {
  RestaurantsRepository({required super.dio});

  static final pathProduct = '${Api.urlApi}/api/restaurants';

  static RestaurantsRepository instance = RestaurantsRepository(dio: Api.dio);

  Future<List<Restaurants>> restaurantsFetch({
    required String accessToken,
  }) async {
    try {
      final response = await dio.get<Map<String, dynamic>>(
        pathProduct,
        options: Options(
          headers: {
            RequestHeader.authorization: 'Bearer $accessToken',
          },
        ),
      );

      final product = <Restaurants>[];
      final data = response.data!['data'] as List;

      for (final data in data) {
        product.add(Restaurants.fromJson(data as Map<String, dynamic>));
      }

      return product;
    } catch (error) {
      throw checkErrorApi(error);
    }
  }

  Future<String> restaurantsCreate({
    required String accessToken,
    required String id,
    required String no,
    required String name,
    required String type,
  }) async {
    try {
      final result = await dio.post<Map<String, dynamic>>(
        pathProduct,
        options: Options(
          headers: {RequestHeader.authorization: 'Bearer $accessToken'},
        ),
        data: jsonEncode({
          'id': id,
          'name': name,
          'product_no': no,
          'type': type,
        }),
      );

      return result.data!['message'] as String;
    } catch (error) {
      throw checkErrorApi(error);
    }
  }

  Future<String> restaurantsUpdate({
    required String accessToken,
    required String idProduct,
    required String no,
    required String name,
    required String type,
  }) async {
    try {
      final result = await dio.put<Map<String, dynamic>>(
        '$pathProduct/$idProduct',
        options: Options(
          headers: {RequestHeader.authorization: 'Bearer $accessToken'},
        ),
        data: jsonEncode({
          'name': name,
          'product_no': no,
          'type': type,
        }),
      );
      return result.data!['message'] as String;
    } catch (error) {
      throw checkErrorApi(error);
    }
  }

  Future<String> restaurantsDelete({
    required String accessToken,
    required String id,
  }) async {
    try {
      final result = await dio.delete<Map<String, dynamic>>(
        '$pathProduct/$id',
        options: Options(
          headers: {RequestHeader.authorization: 'Bearer $accessToken'},
        ),
      );
      return result.data!['message'] as String;
    } catch (error) {
      throw checkErrorApi(error);
    }
  }
}
