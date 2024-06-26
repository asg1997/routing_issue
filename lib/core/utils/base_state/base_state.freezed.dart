// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BaseState<T, E> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(E? errorValue) error,
    required TResult Function(T? value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(E? errorValue)? error,
    TResult? Function(T? value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(E? errorValue)? error,
    TResult Function(T? value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialBaseState<T, E> value) initial,
    required TResult Function(LoadingBaseState<T, E> value) loading,
    required TResult Function(_ErrorBaseState<T, E> value) error,
    required TResult Function(SuccessBaseState<T, E> value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialBaseState<T, E> value)? initial,
    TResult? Function(LoadingBaseState<T, E> value)? loading,
    TResult? Function(_ErrorBaseState<T, E> value)? error,
    TResult? Function(SuccessBaseState<T, E> value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialBaseState<T, E> value)? initial,
    TResult Function(LoadingBaseState<T, E> value)? loading,
    TResult Function(_ErrorBaseState<T, E> value)? error,
    TResult Function(SuccessBaseState<T, E> value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseStateCopyWith<T, E, $Res> {
  factory $BaseStateCopyWith(
          BaseState<T, E> value, $Res Function(BaseState<T, E>) then) =
      _$BaseStateCopyWithImpl<T, E, $Res, BaseState<T, E>>;
}

/// @nodoc
class _$BaseStateCopyWithImpl<T, E, $Res, $Val extends BaseState<T, E>>
    implements $BaseStateCopyWith<T, E, $Res> {
  _$BaseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialBaseStateImplCopyWith<T, E, $Res> {
  factory _$$InitialBaseStateImplCopyWith(_$InitialBaseStateImpl<T, E> value,
          $Res Function(_$InitialBaseStateImpl<T, E>) then) =
      __$$InitialBaseStateImplCopyWithImpl<T, E, $Res>;
}

/// @nodoc
class __$$InitialBaseStateImplCopyWithImpl<T, E, $Res>
    extends _$BaseStateCopyWithImpl<T, E, $Res, _$InitialBaseStateImpl<T, E>>
    implements _$$InitialBaseStateImplCopyWith<T, E, $Res> {
  __$$InitialBaseStateImplCopyWithImpl(_$InitialBaseStateImpl<T, E> _value,
      $Res Function(_$InitialBaseStateImpl<T, E>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialBaseStateImpl<T, E> implements InitialBaseState<T, E> {
  const _$InitialBaseStateImpl();

  @override
  String toString() {
    return 'BaseState<$T, $E>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialBaseStateImpl<T, E>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(E? errorValue) error,
    required TResult Function(T? value) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(E? errorValue)? error,
    TResult? Function(T? value)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(E? errorValue)? error,
    TResult Function(T? value)? success,
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
    required TResult Function(InitialBaseState<T, E> value) initial,
    required TResult Function(LoadingBaseState<T, E> value) loading,
    required TResult Function(_ErrorBaseState<T, E> value) error,
    required TResult Function(SuccessBaseState<T, E> value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialBaseState<T, E> value)? initial,
    TResult? Function(LoadingBaseState<T, E> value)? loading,
    TResult? Function(_ErrorBaseState<T, E> value)? error,
    TResult? Function(SuccessBaseState<T, E> value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialBaseState<T, E> value)? initial,
    TResult Function(LoadingBaseState<T, E> value)? loading,
    TResult Function(_ErrorBaseState<T, E> value)? error,
    TResult Function(SuccessBaseState<T, E> value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialBaseState<T, E> implements BaseState<T, E> {
  const factory InitialBaseState() = _$InitialBaseStateImpl<T, E>;
}

/// @nodoc
abstract class _$$LoadingBaseStateImplCopyWith<T, E, $Res> {
  factory _$$LoadingBaseStateImplCopyWith(_$LoadingBaseStateImpl<T, E> value,
          $Res Function(_$LoadingBaseStateImpl<T, E>) then) =
      __$$LoadingBaseStateImplCopyWithImpl<T, E, $Res>;
}

/// @nodoc
class __$$LoadingBaseStateImplCopyWithImpl<T, E, $Res>
    extends _$BaseStateCopyWithImpl<T, E, $Res, _$LoadingBaseStateImpl<T, E>>
    implements _$$LoadingBaseStateImplCopyWith<T, E, $Res> {
  __$$LoadingBaseStateImplCopyWithImpl(_$LoadingBaseStateImpl<T, E> _value,
      $Res Function(_$LoadingBaseStateImpl<T, E>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingBaseStateImpl<T, E> implements LoadingBaseState<T, E> {
  const _$LoadingBaseStateImpl();

  @override
  String toString() {
    return 'BaseState<$T, $E>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingBaseStateImpl<T, E>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(E? errorValue) error,
    required TResult Function(T? value) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(E? errorValue)? error,
    TResult? Function(T? value)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(E? errorValue)? error,
    TResult Function(T? value)? success,
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
    required TResult Function(InitialBaseState<T, E> value) initial,
    required TResult Function(LoadingBaseState<T, E> value) loading,
    required TResult Function(_ErrorBaseState<T, E> value) error,
    required TResult Function(SuccessBaseState<T, E> value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialBaseState<T, E> value)? initial,
    TResult? Function(LoadingBaseState<T, E> value)? loading,
    TResult? Function(_ErrorBaseState<T, E> value)? error,
    TResult? Function(SuccessBaseState<T, E> value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialBaseState<T, E> value)? initial,
    TResult Function(LoadingBaseState<T, E> value)? loading,
    TResult Function(_ErrorBaseState<T, E> value)? error,
    TResult Function(SuccessBaseState<T, E> value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingBaseState<T, E> implements BaseState<T, E> {
  const factory LoadingBaseState() = _$LoadingBaseStateImpl<T, E>;
}

/// @nodoc
abstract class _$$ErrorBaseStateImplCopyWith<T, E, $Res> {
  factory _$$ErrorBaseStateImplCopyWith(_$ErrorBaseStateImpl<T, E> value,
          $Res Function(_$ErrorBaseStateImpl<T, E>) then) =
      __$$ErrorBaseStateImplCopyWithImpl<T, E, $Res>;
  @useResult
  $Res call({E? errorValue});
}

/// @nodoc
class __$$ErrorBaseStateImplCopyWithImpl<T, E, $Res>
    extends _$BaseStateCopyWithImpl<T, E, $Res, _$ErrorBaseStateImpl<T, E>>
    implements _$$ErrorBaseStateImplCopyWith<T, E, $Res> {
  __$$ErrorBaseStateImplCopyWithImpl(_$ErrorBaseStateImpl<T, E> _value,
      $Res Function(_$ErrorBaseStateImpl<T, E>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorValue = freezed,
  }) {
    return _then(_$ErrorBaseStateImpl<T, E>(
      freezed == errorValue
          ? _value.errorValue
          : errorValue // ignore: cast_nullable_to_non_nullable
              as E?,
    ));
  }
}

/// @nodoc

class _$ErrorBaseStateImpl<T, E> implements _ErrorBaseState<T, E> {
  const _$ErrorBaseStateImpl([this.errorValue]);

  @override
  final E? errorValue;

  @override
  String toString() {
    return 'BaseState<$T, $E>.error(errorValue: $errorValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorBaseStateImpl<T, E> &&
            const DeepCollectionEquality()
                .equals(other.errorValue, errorValue));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(errorValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorBaseStateImplCopyWith<T, E, _$ErrorBaseStateImpl<T, E>>
      get copyWith =>
          __$$ErrorBaseStateImplCopyWithImpl<T, E, _$ErrorBaseStateImpl<T, E>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(E? errorValue) error,
    required TResult Function(T? value) success,
  }) {
    return error(errorValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(E? errorValue)? error,
    TResult? Function(T? value)? success,
  }) {
    return error?.call(errorValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(E? errorValue)? error,
    TResult Function(T? value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialBaseState<T, E> value) initial,
    required TResult Function(LoadingBaseState<T, E> value) loading,
    required TResult Function(_ErrorBaseState<T, E> value) error,
    required TResult Function(SuccessBaseState<T, E> value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialBaseState<T, E> value)? initial,
    TResult? Function(LoadingBaseState<T, E> value)? loading,
    TResult? Function(_ErrorBaseState<T, E> value)? error,
    TResult? Function(SuccessBaseState<T, E> value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialBaseState<T, E> value)? initial,
    TResult Function(LoadingBaseState<T, E> value)? loading,
    TResult Function(_ErrorBaseState<T, E> value)? error,
    TResult Function(SuccessBaseState<T, E> value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorBaseState<T, E> implements BaseState<T, E> {
  const factory _ErrorBaseState([final E? errorValue]) =
      _$ErrorBaseStateImpl<T, E>;

  E? get errorValue;
  @JsonKey(ignore: true)
  _$$ErrorBaseStateImplCopyWith<T, E, _$ErrorBaseStateImpl<T, E>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessBaseStateImplCopyWith<T, E, $Res> {
  factory _$$SuccessBaseStateImplCopyWith(_$SuccessBaseStateImpl<T, E> value,
          $Res Function(_$SuccessBaseStateImpl<T, E>) then) =
      __$$SuccessBaseStateImplCopyWithImpl<T, E, $Res>;
  @useResult
  $Res call({T? value});
}

/// @nodoc
class __$$SuccessBaseStateImplCopyWithImpl<T, E, $Res>
    extends _$BaseStateCopyWithImpl<T, E, $Res, _$SuccessBaseStateImpl<T, E>>
    implements _$$SuccessBaseStateImplCopyWith<T, E, $Res> {
  __$$SuccessBaseStateImplCopyWithImpl(_$SuccessBaseStateImpl<T, E> _value,
      $Res Function(_$SuccessBaseStateImpl<T, E>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$SuccessBaseStateImpl<T, E>(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$SuccessBaseStateImpl<T, E> implements SuccessBaseState<T, E> {
  const _$SuccessBaseStateImpl([this.value]);

  @override
  final T? value;

  @override
  String toString() {
    return 'BaseState<$T, $E>.success(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessBaseStateImpl<T, E> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessBaseStateImplCopyWith<T, E, _$SuccessBaseStateImpl<T, E>>
      get copyWith => __$$SuccessBaseStateImplCopyWithImpl<T, E,
          _$SuccessBaseStateImpl<T, E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(E? errorValue) error,
    required TResult Function(T? value) success,
  }) {
    return success(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(E? errorValue)? error,
    TResult? Function(T? value)? success,
  }) {
    return success?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(E? errorValue)? error,
    TResult Function(T? value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialBaseState<T, E> value) initial,
    required TResult Function(LoadingBaseState<T, E> value) loading,
    required TResult Function(_ErrorBaseState<T, E> value) error,
    required TResult Function(SuccessBaseState<T, E> value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialBaseState<T, E> value)? initial,
    TResult? Function(LoadingBaseState<T, E> value)? loading,
    TResult? Function(_ErrorBaseState<T, E> value)? error,
    TResult? Function(SuccessBaseState<T, E> value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialBaseState<T, E> value)? initial,
    TResult Function(LoadingBaseState<T, E> value)? loading,
    TResult Function(_ErrorBaseState<T, E> value)? error,
    TResult Function(SuccessBaseState<T, E> value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessBaseState<T, E> implements BaseState<T, E> {
  const factory SuccessBaseState([final T? value]) =
      _$SuccessBaseStateImpl<T, E>;

  T? get value;
  @JsonKey(ignore: true)
  _$$SuccessBaseStateImplCopyWith<T, E, _$SuccessBaseStateImpl<T, E>>
      get copyWith => throw _privateConstructorUsedError;
}
