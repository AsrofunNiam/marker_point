import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'restaurants_bloc.freezed.dart';

@freezed
class RestaurantsState with _$RestaurantsState {
  const factory RestaurantsState.initial() = _Initial;
  const factory RestaurantsState.loading() = _Loading;
  const factory RestaurantsState.success({String? success}) = _Success;
  const factory RestaurantsState.error(String error) = _Error;
}

@freezed
class RestaurantsEvent with _$RestaurantsEvent {
  const factory RestaurantsEvent.started() = _Started;
}

class RestaurantsBloc extends Bloc<RestaurantsEvent, RestaurantsState> {
  RestaurantsBloc() : super(_Initial()) {
    on<RestaurantsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
