// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CustomException exception) error,
    required TResult Function() auth,
    required TResult Function() nonAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CustomException exception)? error,
    TResult? Function()? auth,
    TResult? Function()? nonAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CustomException exception)? error,
    TResult Function()? auth,
    TResult Function()? nonAuth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthState value) initial,
    required TResult Function(LoadingAuthState value) loading,
    required TResult Function(_ErrorAuthState value) error,
    required TResult Function(_AuthorizedState value) auth,
    required TResult Function(_NonAuthState value) nonAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthState value)? initial,
    TResult? Function(LoadingAuthState value)? loading,
    TResult? Function(_ErrorAuthState value)? error,
    TResult? Function(_AuthorizedState value)? auth,
    TResult? Function(_NonAuthState value)? nonAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthState value)? initial,
    TResult Function(LoadingAuthState value)? loading,
    TResult Function(_ErrorAuthState value)? error,
    TResult Function(_AuthorizedState value)? auth,
    TResult Function(_NonAuthState value)? nonAuth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialAuthStateImplCopyWith<$Res> {
  factory _$$InitialAuthStateImplCopyWith(_$InitialAuthStateImpl value,
          $Res Function(_$InitialAuthStateImpl) then) =
      __$$InitialAuthStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialAuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialAuthStateImpl>
    implements _$$InitialAuthStateImplCopyWith<$Res> {
  __$$InitialAuthStateImplCopyWithImpl(_$InitialAuthStateImpl _value,
      $Res Function(_$InitialAuthStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialAuthStateImpl implements _InitialAuthState {
  const _$InitialAuthStateImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialAuthStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CustomException exception) error,
    required TResult Function() auth,
    required TResult Function() nonAuth,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CustomException exception)? error,
    TResult? Function()? auth,
    TResult? Function()? nonAuth,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CustomException exception)? error,
    TResult Function()? auth,
    TResult Function()? nonAuth,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthState value) initial,
    required TResult Function(LoadingAuthState value) loading,
    required TResult Function(_ErrorAuthState value) error,
    required TResult Function(_AuthorizedState value) auth,
    required TResult Function(_NonAuthState value) nonAuth,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthState value)? initial,
    TResult? Function(LoadingAuthState value)? loading,
    TResult? Function(_ErrorAuthState value)? error,
    TResult? Function(_AuthorizedState value)? auth,
    TResult? Function(_NonAuthState value)? nonAuth,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthState value)? initial,
    TResult Function(LoadingAuthState value)? loading,
    TResult Function(_ErrorAuthState value)? error,
    TResult Function(_AuthorizedState value)? auth,
    TResult Function(_NonAuthState value)? nonAuth,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialAuthState implements AuthState {
  const factory _InitialAuthState() = _$InitialAuthStateImpl;
}

/// @nodoc
abstract class _$$LoadingAuthStateImplCopyWith<$Res> {
  factory _$$LoadingAuthStateImplCopyWith(_$LoadingAuthStateImpl value,
          $Res Function(_$LoadingAuthStateImpl) then) =
      __$$LoadingAuthStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingAuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingAuthStateImpl>
    implements _$$LoadingAuthStateImplCopyWith<$Res> {
  __$$LoadingAuthStateImplCopyWithImpl(_$LoadingAuthStateImpl _value,
      $Res Function(_$LoadingAuthStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingAuthStateImpl implements LoadingAuthState {
  const _$LoadingAuthStateImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingAuthStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CustomException exception) error,
    required TResult Function() auth,
    required TResult Function() nonAuth,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CustomException exception)? error,
    TResult? Function()? auth,
    TResult? Function()? nonAuth,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CustomException exception)? error,
    TResult Function()? auth,
    TResult Function()? nonAuth,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthState value) initial,
    required TResult Function(LoadingAuthState value) loading,
    required TResult Function(_ErrorAuthState value) error,
    required TResult Function(_AuthorizedState value) auth,
    required TResult Function(_NonAuthState value) nonAuth,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthState value)? initial,
    TResult? Function(LoadingAuthState value)? loading,
    TResult? Function(_ErrorAuthState value)? error,
    TResult? Function(_AuthorizedState value)? auth,
    TResult? Function(_NonAuthState value)? nonAuth,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthState value)? initial,
    TResult Function(LoadingAuthState value)? loading,
    TResult Function(_ErrorAuthState value)? error,
    TResult Function(_AuthorizedState value)? auth,
    TResult Function(_NonAuthState value)? nonAuth,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingAuthState implements AuthState {
  const factory LoadingAuthState() = _$LoadingAuthStateImpl;
}

/// @nodoc
abstract class _$$ErrorAuthStateImplCopyWith<$Res> {
  factory _$$ErrorAuthStateImplCopyWith(_$ErrorAuthStateImpl value,
          $Res Function(_$ErrorAuthStateImpl) then) =
      __$$ErrorAuthStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CustomException exception});
}

/// @nodoc
class __$$ErrorAuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorAuthStateImpl>
    implements _$$ErrorAuthStateImplCopyWith<$Res> {
  __$$ErrorAuthStateImplCopyWithImpl(
      _$ErrorAuthStateImpl _value, $Res Function(_$ErrorAuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$ErrorAuthStateImpl(
      null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as CustomException,
    ));
  }
}

/// @nodoc

class _$ErrorAuthStateImpl implements _ErrorAuthState {
  const _$ErrorAuthStateImpl(this.exception);

  @override
  final CustomException exception;

  @override
  String toString() {
    return 'AuthState.error(exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorAuthStateImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorAuthStateImplCopyWith<_$ErrorAuthStateImpl> get copyWith =>
      __$$ErrorAuthStateImplCopyWithImpl<_$ErrorAuthStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CustomException exception) error,
    required TResult Function() auth,
    required TResult Function() nonAuth,
  }) {
    return error(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CustomException exception)? error,
    TResult? Function()? auth,
    TResult? Function()? nonAuth,
  }) {
    return error?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CustomException exception)? error,
    TResult Function()? auth,
    TResult Function()? nonAuth,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthState value) initial,
    required TResult Function(LoadingAuthState value) loading,
    required TResult Function(_ErrorAuthState value) error,
    required TResult Function(_AuthorizedState value) auth,
    required TResult Function(_NonAuthState value) nonAuth,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthState value)? initial,
    TResult? Function(LoadingAuthState value)? loading,
    TResult? Function(_ErrorAuthState value)? error,
    TResult? Function(_AuthorizedState value)? auth,
    TResult? Function(_NonAuthState value)? nonAuth,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthState value)? initial,
    TResult Function(LoadingAuthState value)? loading,
    TResult Function(_ErrorAuthState value)? error,
    TResult Function(_AuthorizedState value)? auth,
    TResult Function(_NonAuthState value)? nonAuth,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorAuthState implements AuthState {
  const factory _ErrorAuthState(final CustomException exception) =
      _$ErrorAuthStateImpl;

  CustomException get exception;
  @JsonKey(ignore: true)
  _$$ErrorAuthStateImplCopyWith<_$ErrorAuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthorizedStateImplCopyWith<$Res> {
  factory _$$AuthorizedStateImplCopyWith(_$AuthorizedStateImpl value,
          $Res Function(_$AuthorizedStateImpl) then) =
      __$$AuthorizedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthorizedStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthorizedStateImpl>
    implements _$$AuthorizedStateImplCopyWith<$Res> {
  __$$AuthorizedStateImplCopyWithImpl(
      _$AuthorizedStateImpl _value, $Res Function(_$AuthorizedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthorizedStateImpl implements _AuthorizedState {
  const _$AuthorizedStateImpl();

  @override
  String toString() {
    return 'AuthState.auth()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthorizedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CustomException exception) error,
    required TResult Function() auth,
    required TResult Function() nonAuth,
  }) {
    return auth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CustomException exception)? error,
    TResult? Function()? auth,
    TResult? Function()? nonAuth,
  }) {
    return auth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CustomException exception)? error,
    TResult Function()? auth,
    TResult Function()? nonAuth,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthState value) initial,
    required TResult Function(LoadingAuthState value) loading,
    required TResult Function(_ErrorAuthState value) error,
    required TResult Function(_AuthorizedState value) auth,
    required TResult Function(_NonAuthState value) nonAuth,
  }) {
    return auth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthState value)? initial,
    TResult? Function(LoadingAuthState value)? loading,
    TResult? Function(_ErrorAuthState value)? error,
    TResult? Function(_AuthorizedState value)? auth,
    TResult? Function(_NonAuthState value)? nonAuth,
  }) {
    return auth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthState value)? initial,
    TResult Function(LoadingAuthState value)? loading,
    TResult Function(_ErrorAuthState value)? error,
    TResult Function(_AuthorizedState value)? auth,
    TResult Function(_NonAuthState value)? nonAuth,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(this);
    }
    return orElse();
  }
}

abstract class _AuthorizedState implements AuthState {
  const factory _AuthorizedState() = _$AuthorizedStateImpl;
}

/// @nodoc
abstract class _$$NonAuthStateImplCopyWith<$Res> {
  factory _$$NonAuthStateImplCopyWith(
          _$NonAuthStateImpl value, $Res Function(_$NonAuthStateImpl) then) =
      __$$NonAuthStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NonAuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$NonAuthStateImpl>
    implements _$$NonAuthStateImplCopyWith<$Res> {
  __$$NonAuthStateImplCopyWithImpl(
      _$NonAuthStateImpl _value, $Res Function(_$NonAuthStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NonAuthStateImpl implements _NonAuthState {
  const _$NonAuthStateImpl();

  @override
  String toString() {
    return 'AuthState.nonAuth()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NonAuthStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CustomException exception) error,
    required TResult Function() auth,
    required TResult Function() nonAuth,
  }) {
    return nonAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CustomException exception)? error,
    TResult? Function()? auth,
    TResult? Function()? nonAuth,
  }) {
    return nonAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CustomException exception)? error,
    TResult Function()? auth,
    TResult Function()? nonAuth,
    required TResult orElse(),
  }) {
    if (nonAuth != null) {
      return nonAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthState value) initial,
    required TResult Function(LoadingAuthState value) loading,
    required TResult Function(_ErrorAuthState value) error,
    required TResult Function(_AuthorizedState value) auth,
    required TResult Function(_NonAuthState value) nonAuth,
  }) {
    return nonAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthState value)? initial,
    TResult? Function(LoadingAuthState value)? loading,
    TResult? Function(_ErrorAuthState value)? error,
    TResult? Function(_AuthorizedState value)? auth,
    TResult? Function(_NonAuthState value)? nonAuth,
  }) {
    return nonAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthState value)? initial,
    TResult Function(LoadingAuthState value)? loading,
    TResult Function(_ErrorAuthState value)? error,
    TResult Function(_AuthorizedState value)? auth,
    TResult Function(_NonAuthState value)? nonAuth,
    required TResult orElse(),
  }) {
    if (nonAuth != null) {
      return nonAuth(this);
    }
    return orElse();
  }
}

abstract class _NonAuthState implements AuthState {
  const factory _NonAuthState() = _$NonAuthStateImpl;
}
