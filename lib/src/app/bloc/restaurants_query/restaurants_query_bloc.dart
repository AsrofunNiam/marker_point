import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:marker_point/constant/string.dart';
import 'package:marker_point/src/app/model/restaurants.dart';
import 'package:marker_point/src/app/resource/restaurants_repository.dart';
import 'package:marker_point/src/app/resource/user_repository.dart';

part 'restaurants_query_bloc.freezed.dart';

@freezed
class RestaurantsQueryState with _$RestaurantsQueryState {
  const factory RestaurantsQueryState.initial() = _Initial;
  const factory RestaurantsQueryState.loading() = _Loading;
  const factory RestaurantsQueryState.loaded(
    List<Restaurants> restaurants,
  ) = _Success;
  const factory RestaurantsQueryState.error(String error) = _Error;
}

@freezed
class RestaurantsQueryEvent with _$RestaurantsQueryEvent {
  const factory RestaurantsQueryEvent.get() = _Get;
}

class RestaurantsQueryBloc
    extends Bloc<RestaurantsQueryEvent, RestaurantsQueryState> {
  RestaurantsQueryBloc() : super(const _Initial()) {
    on<RestaurantsQueryEvent>((event, emit) async {
      await event.when(
        get: () async {
          emit(const _Loading());
          try {
            final restaurants =
                await RestaurantsRepository.instance.restaurantsFetch(
              // accessToken: TokenRepository.instance.tokenRepository!
              accessToken:
                  'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NDAsImlhdCI6MTY4ODMxMTg2OSwiZXhwIjoxNjkwOTAzODY5fQ.jjviLrgG0zXB5QM-SFUXG-byPyMOuUkO0KUtlWV2QBo',
            );

            emit(_Success(restaurants));
          } catch (error) {
            emit(const _Error(errorSomethingWentWrong));
          }
        },
      );
    });
  }
}
