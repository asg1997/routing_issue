import 'package:fa_piano/core/utils/custom_exception.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _InitialAuthState;
  const factory AuthState.loading() = LoadingAuthState;
  const factory AuthState.error(CustomException exception) = _ErrorAuthState;
  const factory AuthState.auth() = _AuthorizedState;

  const factory AuthState.nonAuth() = _NonAuthState;
}
