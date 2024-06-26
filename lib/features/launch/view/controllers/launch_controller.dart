import 'dart:async';

import 'package:fa_piano/features/launch/models/auth_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final launchControllerProvider =
    StateNotifierProvider.autoDispose<LaunchController, AuthState>(
  LaunchController.new,
);

class LaunchController extends StateNotifier<AuthState> {
  LaunchController(this.ref) : super(const AuthState.initial()) {
    _init();
  }

  final Ref ref;

  Future<void> _init() async {
    await Future.delayed(const Duration(seconds: 1), () {});
    state = const AuthState.auth();
  }
}
