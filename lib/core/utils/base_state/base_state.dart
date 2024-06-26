import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_state.freezed.dart';

/// T - возвращаемое значение (опционально) <br>
/// E - тип данных ошибки <br>
@freezed
class BaseState<T, E> with _$BaseState<T, E> {
  const factory BaseState.initial() = InitialBaseState;
  const factory BaseState.loading() = LoadingBaseState;
  const factory BaseState.error([E? errorValue]) = _ErrorBaseState;
  const factory BaseState.success([T? value]) = SuccessBaseState;
}
