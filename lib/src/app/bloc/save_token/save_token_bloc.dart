import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:marker_point/src/app/resource/user_repository.dart';

part 'save_token_bloc.freezed.dart';

@freezed
class SaveTokenState with _$SaveTokenState {
  const factory SaveTokenState.unauthenticated() = _Unauthenticated;
  const factory SaveTokenState.authenticated(String accessToken) =
      _Authenticated;
}

@freezed
class SaveTokenEvent with _$SaveTokenEvent {
  const factory SaveTokenEvent.login(String accessToken) = _Login;
  const factory SaveTokenEvent.logout() = _Logout;
}

class SaveTokenBloc extends HydratedBloc<SaveTokenEvent, SaveTokenState> {
  SaveTokenBloc() : super(const _Unauthenticated()) {
    on<SaveTokenEvent>((event, emit) async {
      event.when(login: (accessToken) {
        // TokenRepository.instance.setUserTokenRepository(accessToken);
        emit(_Authenticated(accessToken));
      }, logout: () {
        // TokenRepository.instance.unset();
        emit(const _Unauthenticated());
      });
    });
  }

  @override
  SaveTokenState? fromJson(Map<String, dynamic> json) {
    try {
      final accessToken = json['accessToken'] as String;
      // TokenRepository.instance.setUserTokenRepository(accessToken);
      return _Authenticated(accessToken);
    } catch (e) {
      return const _Unauthenticated();
    }
  }

  @override
  Map<String, dynamic>? toJson(SaveTokenState state) {
    return {
      'accessToken': state.maybeWhen(
          orElse: () {}, authenticated: (accessToken) => accessToken)
    };
  }
}
