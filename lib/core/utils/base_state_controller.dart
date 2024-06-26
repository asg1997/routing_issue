import 'package:fa_piano/core/utils/base_state/base_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// T - возвращаемое значение (опционально) <br>
/// P - параметры (опционально) <br>
/// E - тип данных ошибки <br>
///
/// Пример использования: <br>
/// ```dart
/// final sendUserInfoProvider = StateNotifierProvider.autoDispose<
///     BaseStateController<void, UserInfoParams, String>,
///     BaseState<void, String>>((ref) {
///   return BaseStateController(
///     execute: ([params]) async =>
///         ref.read(userInfoSenderProvider).sendUserInfo(params!),
///   );
/// });
/// ```
class BaseStateController<T, P, E> extends StateNotifier<BaseState<T, E>> {
  BaseStateController({
    required Future<T?> Function([P? params]) execute,
    E Function(Object errorValue)? handleError,
  })  : _executeFunc = execute,
        _handleErrorFunc = handleError,
        super(const BaseState.initial());

  final Future<T?> Function([P? params]) _executeFunc;
  final E Function(Object errorValue)? _handleErrorFunc;

  Future<void> execute([P? params]) async {
    try {
      state = const BaseState.loading();
      final value = await _executeFunc(params);
      state = BaseState.success(value);
    } catch (e) {
      _handleError(e);
    }
  }

  void _handleError(Object errorValue) {
    final error = _handleErrorFunc?.call(errorValue);
    state = BaseState.error(error);
  }
}
