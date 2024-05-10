// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TimerEvent<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) started,
    required TResult Function() paused,
    required TResult Function() resumed,
    required TResult Function() reset,
    required TResult Function(int duration) ticked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? started,
    TResult? Function()? paused,
    TResult? Function()? resumed,
    TResult? Function()? reset,
    TResult? Function(int duration)? ticked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? started,
    TResult Function()? paused,
    TResult Function()? resumed,
    TResult Function()? reset,
    TResult Function(int duration)? ticked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStarted<T> value) started,
    required TResult Function(TimerPaused<T> value) paused,
    required TResult Function(TimerResumed<T> value) resumed,
    required TResult Function(TimerReset<T> value) reset,
    required TResult Function(_TimerTicked<T> value) ticked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStarted<T> value)? started,
    TResult? Function(TimerPaused<T> value)? paused,
    TResult? Function(TimerResumed<T> value)? resumed,
    TResult? Function(TimerReset<T> value)? reset,
    TResult? Function(_TimerTicked<T> value)? ticked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStarted<T> value)? started,
    TResult Function(TimerPaused<T> value)? paused,
    TResult Function(TimerResumed<T> value)? resumed,
    TResult Function(TimerReset<T> value)? reset,
    TResult Function(_TimerTicked<T> value)? ticked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerEventCopyWith<T, $Res> {
  factory $TimerEventCopyWith(
          TimerEvent<T> value, $Res Function(TimerEvent<T>) then) =
      _$TimerEventCopyWithImpl<T, $Res, TimerEvent<T>>;
}

/// @nodoc
class _$TimerEventCopyWithImpl<T, $Res, $Val extends TimerEvent<T>>
    implements $TimerEventCopyWith<T, $Res> {
  _$TimerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TimerStartedImplCopyWith<T, $Res> {
  factory _$$TimerStartedImplCopyWith(_$TimerStartedImpl<T> value,
          $Res Function(_$TimerStartedImpl<T>) then) =
      __$$TimerStartedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({int duration});
}

/// @nodoc
class __$$TimerStartedImplCopyWithImpl<T, $Res>
    extends _$TimerEventCopyWithImpl<T, $Res, _$TimerStartedImpl<T>>
    implements _$$TimerStartedImplCopyWith<T, $Res> {
  __$$TimerStartedImplCopyWithImpl(
      _$TimerStartedImpl<T> _value, $Res Function(_$TimerStartedImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$TimerStartedImpl<T>(
      null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TimerStartedImpl<T> implements TimerStarted<T> {
  const _$TimerStartedImpl(this.duration);

  @override
  final int duration;

  @override
  String toString() {
    return 'TimerEvent<$T>.started(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerStartedImpl<T> &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerStartedImplCopyWith<T, _$TimerStartedImpl<T>> get copyWith =>
      __$$TimerStartedImplCopyWithImpl<T, _$TimerStartedImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) started,
    required TResult Function() paused,
    required TResult Function() resumed,
    required TResult Function() reset,
    required TResult Function(int duration) ticked,
  }) {
    return started(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? started,
    TResult? Function()? paused,
    TResult? Function()? resumed,
    TResult? Function()? reset,
    TResult? Function(int duration)? ticked,
  }) {
    return started?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? started,
    TResult Function()? paused,
    TResult Function()? resumed,
    TResult Function()? reset,
    TResult Function(int duration)? ticked,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStarted<T> value) started,
    required TResult Function(TimerPaused<T> value) paused,
    required TResult Function(TimerResumed<T> value) resumed,
    required TResult Function(TimerReset<T> value) reset,
    required TResult Function(_TimerTicked<T> value) ticked,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStarted<T> value)? started,
    TResult? Function(TimerPaused<T> value)? paused,
    TResult? Function(TimerResumed<T> value)? resumed,
    TResult? Function(TimerReset<T> value)? reset,
    TResult? Function(_TimerTicked<T> value)? ticked,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStarted<T> value)? started,
    TResult Function(TimerPaused<T> value)? paused,
    TResult Function(TimerResumed<T> value)? resumed,
    TResult Function(TimerReset<T> value)? reset,
    TResult Function(_TimerTicked<T> value)? ticked,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class TimerStarted<T> implements TimerEvent<T> {
  const factory TimerStarted(final int duration) = _$TimerStartedImpl<T>;

  int get duration;
  @JsonKey(ignore: true)
  _$$TimerStartedImplCopyWith<T, _$TimerStartedImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimerPausedImplCopyWith<T, $Res> {
  factory _$$TimerPausedImplCopyWith(_$TimerPausedImpl<T> value,
          $Res Function(_$TimerPausedImpl<T>) then) =
      __$$TimerPausedImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$TimerPausedImplCopyWithImpl<T, $Res>
    extends _$TimerEventCopyWithImpl<T, $Res, _$TimerPausedImpl<T>>
    implements _$$TimerPausedImplCopyWith<T, $Res> {
  __$$TimerPausedImplCopyWithImpl(
      _$TimerPausedImpl<T> _value, $Res Function(_$TimerPausedImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimerPausedImpl<T> implements TimerPaused<T> {
  const _$TimerPausedImpl();

  @override
  String toString() {
    return 'TimerEvent<$T>.paused()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimerPausedImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) started,
    required TResult Function() paused,
    required TResult Function() resumed,
    required TResult Function() reset,
    required TResult Function(int duration) ticked,
  }) {
    return paused();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? started,
    TResult? Function()? paused,
    TResult? Function()? resumed,
    TResult? Function()? reset,
    TResult? Function(int duration)? ticked,
  }) {
    return paused?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? started,
    TResult Function()? paused,
    TResult Function()? resumed,
    TResult Function()? reset,
    TResult Function(int duration)? ticked,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStarted<T> value) started,
    required TResult Function(TimerPaused<T> value) paused,
    required TResult Function(TimerResumed<T> value) resumed,
    required TResult Function(TimerReset<T> value) reset,
    required TResult Function(_TimerTicked<T> value) ticked,
  }) {
    return paused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStarted<T> value)? started,
    TResult? Function(TimerPaused<T> value)? paused,
    TResult? Function(TimerResumed<T> value)? resumed,
    TResult? Function(TimerReset<T> value)? reset,
    TResult? Function(_TimerTicked<T> value)? ticked,
  }) {
    return paused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStarted<T> value)? started,
    TResult Function(TimerPaused<T> value)? paused,
    TResult Function(TimerResumed<T> value)? resumed,
    TResult Function(TimerReset<T> value)? reset,
    TResult Function(_TimerTicked<T> value)? ticked,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(this);
    }
    return orElse();
  }
}

abstract class TimerPaused<T> implements TimerEvent<T> {
  const factory TimerPaused() = _$TimerPausedImpl<T>;
}

/// @nodoc
abstract class _$$TimerResumedImplCopyWith<T, $Res> {
  factory _$$TimerResumedImplCopyWith(_$TimerResumedImpl<T> value,
          $Res Function(_$TimerResumedImpl<T>) then) =
      __$$TimerResumedImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$TimerResumedImplCopyWithImpl<T, $Res>
    extends _$TimerEventCopyWithImpl<T, $Res, _$TimerResumedImpl<T>>
    implements _$$TimerResumedImplCopyWith<T, $Res> {
  __$$TimerResumedImplCopyWithImpl(
      _$TimerResumedImpl<T> _value, $Res Function(_$TimerResumedImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimerResumedImpl<T> implements TimerResumed<T> {
  const _$TimerResumedImpl();

  @override
  String toString() {
    return 'TimerEvent<$T>.resumed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimerResumedImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) started,
    required TResult Function() paused,
    required TResult Function() resumed,
    required TResult Function() reset,
    required TResult Function(int duration) ticked,
  }) {
    return resumed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? started,
    TResult? Function()? paused,
    TResult? Function()? resumed,
    TResult? Function()? reset,
    TResult? Function(int duration)? ticked,
  }) {
    return resumed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? started,
    TResult Function()? paused,
    TResult Function()? resumed,
    TResult Function()? reset,
    TResult Function(int duration)? ticked,
    required TResult orElse(),
  }) {
    if (resumed != null) {
      return resumed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStarted<T> value) started,
    required TResult Function(TimerPaused<T> value) paused,
    required TResult Function(TimerResumed<T> value) resumed,
    required TResult Function(TimerReset<T> value) reset,
    required TResult Function(_TimerTicked<T> value) ticked,
  }) {
    return resumed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStarted<T> value)? started,
    TResult? Function(TimerPaused<T> value)? paused,
    TResult? Function(TimerResumed<T> value)? resumed,
    TResult? Function(TimerReset<T> value)? reset,
    TResult? Function(_TimerTicked<T> value)? ticked,
  }) {
    return resumed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStarted<T> value)? started,
    TResult Function(TimerPaused<T> value)? paused,
    TResult Function(TimerResumed<T> value)? resumed,
    TResult Function(TimerReset<T> value)? reset,
    TResult Function(_TimerTicked<T> value)? ticked,
    required TResult orElse(),
  }) {
    if (resumed != null) {
      return resumed(this);
    }
    return orElse();
  }
}

abstract class TimerResumed<T> implements TimerEvent<T> {
  const factory TimerResumed() = _$TimerResumedImpl<T>;
}

/// @nodoc
abstract class _$$TimerResetImplCopyWith<T, $Res> {
  factory _$$TimerResetImplCopyWith(
          _$TimerResetImpl<T> value, $Res Function(_$TimerResetImpl<T>) then) =
      __$$TimerResetImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$TimerResetImplCopyWithImpl<T, $Res>
    extends _$TimerEventCopyWithImpl<T, $Res, _$TimerResetImpl<T>>
    implements _$$TimerResetImplCopyWith<T, $Res> {
  __$$TimerResetImplCopyWithImpl(
      _$TimerResetImpl<T> _value, $Res Function(_$TimerResetImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimerResetImpl<T> implements TimerReset<T> {
  const _$TimerResetImpl();

  @override
  String toString() {
    return 'TimerEvent<$T>.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimerResetImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) started,
    required TResult Function() paused,
    required TResult Function() resumed,
    required TResult Function() reset,
    required TResult Function(int duration) ticked,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? started,
    TResult? Function()? paused,
    TResult? Function()? resumed,
    TResult? Function()? reset,
    TResult? Function(int duration)? ticked,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? started,
    TResult Function()? paused,
    TResult Function()? resumed,
    TResult Function()? reset,
    TResult Function(int duration)? ticked,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStarted<T> value) started,
    required TResult Function(TimerPaused<T> value) paused,
    required TResult Function(TimerResumed<T> value) resumed,
    required TResult Function(TimerReset<T> value) reset,
    required TResult Function(_TimerTicked<T> value) ticked,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStarted<T> value)? started,
    TResult? Function(TimerPaused<T> value)? paused,
    TResult? Function(TimerResumed<T> value)? resumed,
    TResult? Function(TimerReset<T> value)? reset,
    TResult? Function(_TimerTicked<T> value)? ticked,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStarted<T> value)? started,
    TResult Function(TimerPaused<T> value)? paused,
    TResult Function(TimerResumed<T> value)? resumed,
    TResult Function(TimerReset<T> value)? reset,
    TResult Function(_TimerTicked<T> value)? ticked,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class TimerReset<T> implements TimerEvent<T> {
  const factory TimerReset() = _$TimerResetImpl<T>;
}

/// @nodoc
abstract class _$$TimerTickedImplCopyWith<T, $Res> {
  factory _$$TimerTickedImplCopyWith(_$TimerTickedImpl<T> value,
          $Res Function(_$TimerTickedImpl<T>) then) =
      __$$TimerTickedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({int duration});
}

/// @nodoc
class __$$TimerTickedImplCopyWithImpl<T, $Res>
    extends _$TimerEventCopyWithImpl<T, $Res, _$TimerTickedImpl<T>>
    implements _$$TimerTickedImplCopyWith<T, $Res> {
  __$$TimerTickedImplCopyWithImpl(
      _$TimerTickedImpl<T> _value, $Res Function(_$TimerTickedImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$TimerTickedImpl<T>(
      null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TimerTickedImpl<T> implements _TimerTicked<T> {
  const _$TimerTickedImpl(this.duration);

  @override
  final int duration;

  @override
  String toString() {
    return 'TimerEvent<$T>.ticked(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerTickedImpl<T> &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerTickedImplCopyWith<T, _$TimerTickedImpl<T>> get copyWith =>
      __$$TimerTickedImplCopyWithImpl<T, _$TimerTickedImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) started,
    required TResult Function() paused,
    required TResult Function() resumed,
    required TResult Function() reset,
    required TResult Function(int duration) ticked,
  }) {
    return ticked(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? started,
    TResult? Function()? paused,
    TResult? Function()? resumed,
    TResult? Function()? reset,
    TResult? Function(int duration)? ticked,
  }) {
    return ticked?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? started,
    TResult Function()? paused,
    TResult Function()? resumed,
    TResult Function()? reset,
    TResult Function(int duration)? ticked,
    required TResult orElse(),
  }) {
    if (ticked != null) {
      return ticked(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStarted<T> value) started,
    required TResult Function(TimerPaused<T> value) paused,
    required TResult Function(TimerResumed<T> value) resumed,
    required TResult Function(TimerReset<T> value) reset,
    required TResult Function(_TimerTicked<T> value) ticked,
  }) {
    return ticked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStarted<T> value)? started,
    TResult? Function(TimerPaused<T> value)? paused,
    TResult? Function(TimerResumed<T> value)? resumed,
    TResult? Function(TimerReset<T> value)? reset,
    TResult? Function(_TimerTicked<T> value)? ticked,
  }) {
    return ticked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStarted<T> value)? started,
    TResult Function(TimerPaused<T> value)? paused,
    TResult Function(TimerResumed<T> value)? resumed,
    TResult Function(TimerReset<T> value)? reset,
    TResult Function(_TimerTicked<T> value)? ticked,
    required TResult orElse(),
  }) {
    if (ticked != null) {
      return ticked(this);
    }
    return orElse();
  }
}

abstract class _TimerTicked<T> implements TimerEvent<T> {
  const factory _TimerTicked(final int duration) = _$TimerTickedImpl<T>;

  int get duration;
  @JsonKey(ignore: true)
  _$$TimerTickedImplCopyWith<T, _$TimerTickedImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
