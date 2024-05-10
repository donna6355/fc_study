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
mixin _$TimerEvent {
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
    required TResult Function(TimerStarted value) started,
    required TResult Function(TimerPaused value) paused,
    required TResult Function(TimerResumed value) resumed,
    required TResult Function(TimerReset value) reset,
    required TResult Function(_TimerTicked value) ticked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStarted value)? started,
    TResult? Function(TimerPaused value)? paused,
    TResult? Function(TimerResumed value)? resumed,
    TResult? Function(TimerReset value)? reset,
    TResult? Function(_TimerTicked value)? ticked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStarted value)? started,
    TResult Function(TimerPaused value)? paused,
    TResult Function(TimerResumed value)? resumed,
    TResult Function(TimerReset value)? reset,
    TResult Function(_TimerTicked value)? ticked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerEventCopyWith<$Res> {
  factory $TimerEventCopyWith(
          TimerEvent value, $Res Function(TimerEvent) then) =
      _$TimerEventCopyWithImpl<$Res, TimerEvent>;
}

/// @nodoc
class _$TimerEventCopyWithImpl<$Res, $Val extends TimerEvent>
    implements $TimerEventCopyWith<$Res> {
  _$TimerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TimerStartedImplCopyWith<$Res> {
  factory _$$TimerStartedImplCopyWith(
          _$TimerStartedImpl value, $Res Function(_$TimerStartedImpl) then) =
      __$$TimerStartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int duration});
}

/// @nodoc
class __$$TimerStartedImplCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$TimerStartedImpl>
    implements _$$TimerStartedImplCopyWith<$Res> {
  __$$TimerStartedImplCopyWithImpl(
      _$TimerStartedImpl _value, $Res Function(_$TimerStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$TimerStartedImpl(
      null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TimerStartedImpl implements TimerStarted {
  const _$TimerStartedImpl(this.duration);

  @override
  final int duration;

  @override
  String toString() {
    return 'TimerEvent.started(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerStartedImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerStartedImplCopyWith<_$TimerStartedImpl> get copyWith =>
      __$$TimerStartedImplCopyWithImpl<_$TimerStartedImpl>(this, _$identity);

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
    required TResult Function(TimerStarted value) started,
    required TResult Function(TimerPaused value) paused,
    required TResult Function(TimerResumed value) resumed,
    required TResult Function(TimerReset value) reset,
    required TResult Function(_TimerTicked value) ticked,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStarted value)? started,
    TResult? Function(TimerPaused value)? paused,
    TResult? Function(TimerResumed value)? resumed,
    TResult? Function(TimerReset value)? reset,
    TResult? Function(_TimerTicked value)? ticked,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStarted value)? started,
    TResult Function(TimerPaused value)? paused,
    TResult Function(TimerResumed value)? resumed,
    TResult Function(TimerReset value)? reset,
    TResult Function(_TimerTicked value)? ticked,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class TimerStarted implements TimerEvent {
  const factory TimerStarted(final int duration) = _$TimerStartedImpl;

  int get duration;
  @JsonKey(ignore: true)
  _$$TimerStartedImplCopyWith<_$TimerStartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimerPausedImplCopyWith<$Res> {
  factory _$$TimerPausedImplCopyWith(
          _$TimerPausedImpl value, $Res Function(_$TimerPausedImpl) then) =
      __$$TimerPausedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimerPausedImplCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$TimerPausedImpl>
    implements _$$TimerPausedImplCopyWith<$Res> {
  __$$TimerPausedImplCopyWithImpl(
      _$TimerPausedImpl _value, $Res Function(_$TimerPausedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimerPausedImpl implements TimerPaused {
  const _$TimerPausedImpl();

  @override
  String toString() {
    return 'TimerEvent.paused()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimerPausedImpl);
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
    required TResult Function(TimerStarted value) started,
    required TResult Function(TimerPaused value) paused,
    required TResult Function(TimerResumed value) resumed,
    required TResult Function(TimerReset value) reset,
    required TResult Function(_TimerTicked value) ticked,
  }) {
    return paused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStarted value)? started,
    TResult? Function(TimerPaused value)? paused,
    TResult? Function(TimerResumed value)? resumed,
    TResult? Function(TimerReset value)? reset,
    TResult? Function(_TimerTicked value)? ticked,
  }) {
    return paused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStarted value)? started,
    TResult Function(TimerPaused value)? paused,
    TResult Function(TimerResumed value)? resumed,
    TResult Function(TimerReset value)? reset,
    TResult Function(_TimerTicked value)? ticked,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(this);
    }
    return orElse();
  }
}

abstract class TimerPaused implements TimerEvent {
  const factory TimerPaused() = _$TimerPausedImpl;
}

/// @nodoc
abstract class _$$TimerResumedImplCopyWith<$Res> {
  factory _$$TimerResumedImplCopyWith(
          _$TimerResumedImpl value, $Res Function(_$TimerResumedImpl) then) =
      __$$TimerResumedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimerResumedImplCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$TimerResumedImpl>
    implements _$$TimerResumedImplCopyWith<$Res> {
  __$$TimerResumedImplCopyWithImpl(
      _$TimerResumedImpl _value, $Res Function(_$TimerResumedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimerResumedImpl implements TimerResumed {
  const _$TimerResumedImpl();

  @override
  String toString() {
    return 'TimerEvent.resumed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimerResumedImpl);
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
    required TResult Function(TimerStarted value) started,
    required TResult Function(TimerPaused value) paused,
    required TResult Function(TimerResumed value) resumed,
    required TResult Function(TimerReset value) reset,
    required TResult Function(_TimerTicked value) ticked,
  }) {
    return resumed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStarted value)? started,
    TResult? Function(TimerPaused value)? paused,
    TResult? Function(TimerResumed value)? resumed,
    TResult? Function(TimerReset value)? reset,
    TResult? Function(_TimerTicked value)? ticked,
  }) {
    return resumed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStarted value)? started,
    TResult Function(TimerPaused value)? paused,
    TResult Function(TimerResumed value)? resumed,
    TResult Function(TimerReset value)? reset,
    TResult Function(_TimerTicked value)? ticked,
    required TResult orElse(),
  }) {
    if (resumed != null) {
      return resumed(this);
    }
    return orElse();
  }
}

abstract class TimerResumed implements TimerEvent {
  const factory TimerResumed() = _$TimerResumedImpl;
}

/// @nodoc
abstract class _$$TimerResetImplCopyWith<$Res> {
  factory _$$TimerResetImplCopyWith(
          _$TimerResetImpl value, $Res Function(_$TimerResetImpl) then) =
      __$$TimerResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimerResetImplCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$TimerResetImpl>
    implements _$$TimerResetImplCopyWith<$Res> {
  __$$TimerResetImplCopyWithImpl(
      _$TimerResetImpl _value, $Res Function(_$TimerResetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimerResetImpl implements TimerReset {
  const _$TimerResetImpl();

  @override
  String toString() {
    return 'TimerEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimerResetImpl);
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
    required TResult Function(TimerStarted value) started,
    required TResult Function(TimerPaused value) paused,
    required TResult Function(TimerResumed value) resumed,
    required TResult Function(TimerReset value) reset,
    required TResult Function(_TimerTicked value) ticked,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStarted value)? started,
    TResult? Function(TimerPaused value)? paused,
    TResult? Function(TimerResumed value)? resumed,
    TResult? Function(TimerReset value)? reset,
    TResult? Function(_TimerTicked value)? ticked,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStarted value)? started,
    TResult Function(TimerPaused value)? paused,
    TResult Function(TimerResumed value)? resumed,
    TResult Function(TimerReset value)? reset,
    TResult Function(_TimerTicked value)? ticked,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class TimerReset implements TimerEvent {
  const factory TimerReset() = _$TimerResetImpl;
}

/// @nodoc
abstract class _$$TimerTickedImplCopyWith<$Res> {
  factory _$$TimerTickedImplCopyWith(
          _$TimerTickedImpl value, $Res Function(_$TimerTickedImpl) then) =
      __$$TimerTickedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int duration});
}

/// @nodoc
class __$$TimerTickedImplCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$TimerTickedImpl>
    implements _$$TimerTickedImplCopyWith<$Res> {
  __$$TimerTickedImplCopyWithImpl(
      _$TimerTickedImpl _value, $Res Function(_$TimerTickedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$TimerTickedImpl(
      null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TimerTickedImpl implements _TimerTicked {
  const _$TimerTickedImpl(this.duration);

  @override
  final int duration;

  @override
  String toString() {
    return 'TimerEvent.ticked(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerTickedImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerTickedImplCopyWith<_$TimerTickedImpl> get copyWith =>
      __$$TimerTickedImplCopyWithImpl<_$TimerTickedImpl>(this, _$identity);

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
    required TResult Function(TimerStarted value) started,
    required TResult Function(TimerPaused value) paused,
    required TResult Function(TimerResumed value) resumed,
    required TResult Function(TimerReset value) reset,
    required TResult Function(_TimerTicked value) ticked,
  }) {
    return ticked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStarted value)? started,
    TResult? Function(TimerPaused value)? paused,
    TResult? Function(TimerResumed value)? resumed,
    TResult? Function(TimerReset value)? reset,
    TResult? Function(_TimerTicked value)? ticked,
  }) {
    return ticked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStarted value)? started,
    TResult Function(TimerPaused value)? paused,
    TResult Function(TimerResumed value)? resumed,
    TResult Function(TimerReset value)? reset,
    TResult Function(_TimerTicked value)? ticked,
    required TResult orElse(),
  }) {
    if (ticked != null) {
      return ticked(this);
    }
    return orElse();
  }
}

abstract class _TimerTicked implements TimerEvent {
  const factory _TimerTicked(final int duration) = _$TimerTickedImpl;

  int get duration;
  @JsonKey(ignore: true)
  _$$TimerTickedImplCopyWith<_$TimerTickedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TimerState {
  int get duration => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) initial,
    required TResult Function(int duration) runPause,
    required TResult Function(int duration) runInProgress,
    required TResult Function(int duration) runCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? initial,
    TResult? Function(int duration)? runPause,
    TResult? Function(int duration)? runInProgress,
    TResult? Function(int duration)? runCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? initial,
    TResult Function(int duration)? runPause,
    TResult Function(int duration)? runInProgress,
    TResult Function(int duration)? runCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerInitial value) initial,
    required TResult Function(TimerRunPause value) runPause,
    required TResult Function(TimerRunInProgress value) runInProgress,
    required TResult Function(TimerRunCompleted value) runCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerInitial value)? initial,
    TResult? Function(TimerRunPause value)? runPause,
    TResult? Function(TimerRunInProgress value)? runInProgress,
    TResult? Function(TimerRunCompleted value)? runCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerInitial value)? initial,
    TResult Function(TimerRunPause value)? runPause,
    TResult Function(TimerRunInProgress value)? runInProgress,
    TResult Function(TimerRunCompleted value)? runCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimerStateCopyWith<TimerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerStateCopyWith<$Res> {
  factory $TimerStateCopyWith(
          TimerState value, $Res Function(TimerState) then) =
      _$TimerStateCopyWithImpl<$Res, TimerState>;
  @useResult
  $Res call({int duration});
}

/// @nodoc
class _$TimerStateCopyWithImpl<$Res, $Val extends TimerState>
    implements $TimerStateCopyWith<$Res> {
  _$TimerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_value.copyWith(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimerInitialImplCopyWith<$Res>
    implements $TimerStateCopyWith<$Res> {
  factory _$$TimerInitialImplCopyWith(
          _$TimerInitialImpl value, $Res Function(_$TimerInitialImpl) then) =
      __$$TimerInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int duration});
}

/// @nodoc
class __$$TimerInitialImplCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$TimerInitialImpl>
    implements _$$TimerInitialImplCopyWith<$Res> {
  __$$TimerInitialImplCopyWithImpl(
      _$TimerInitialImpl _value, $Res Function(_$TimerInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$TimerInitialImpl(
      null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TimerInitialImpl implements TimerInitial {
  _$TimerInitialImpl(this.duration);

  @override
  final int duration;

  @override
  String toString() {
    return 'TimerState.initial(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerInitialImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerInitialImplCopyWith<_$TimerInitialImpl> get copyWith =>
      __$$TimerInitialImplCopyWithImpl<_$TimerInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) initial,
    required TResult Function(int duration) runPause,
    required TResult Function(int duration) runInProgress,
    required TResult Function(int duration) runCompleted,
  }) {
    return initial(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? initial,
    TResult? Function(int duration)? runPause,
    TResult? Function(int duration)? runInProgress,
    TResult? Function(int duration)? runCompleted,
  }) {
    return initial?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? initial,
    TResult Function(int duration)? runPause,
    TResult Function(int duration)? runInProgress,
    TResult Function(int duration)? runCompleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerInitial value) initial,
    required TResult Function(TimerRunPause value) runPause,
    required TResult Function(TimerRunInProgress value) runInProgress,
    required TResult Function(TimerRunCompleted value) runCompleted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerInitial value)? initial,
    TResult? Function(TimerRunPause value)? runPause,
    TResult? Function(TimerRunInProgress value)? runInProgress,
    TResult? Function(TimerRunCompleted value)? runCompleted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerInitial value)? initial,
    TResult Function(TimerRunPause value)? runPause,
    TResult Function(TimerRunInProgress value)? runInProgress,
    TResult Function(TimerRunCompleted value)? runCompleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TimerInitial implements TimerState {
  factory TimerInitial(final int duration) = _$TimerInitialImpl;

  @override
  int get duration;
  @override
  @JsonKey(ignore: true)
  _$$TimerInitialImplCopyWith<_$TimerInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimerRunPauseImplCopyWith<$Res>
    implements $TimerStateCopyWith<$Res> {
  factory _$$TimerRunPauseImplCopyWith(
          _$TimerRunPauseImpl value, $Res Function(_$TimerRunPauseImpl) then) =
      __$$TimerRunPauseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int duration});
}

/// @nodoc
class __$$TimerRunPauseImplCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$TimerRunPauseImpl>
    implements _$$TimerRunPauseImplCopyWith<$Res> {
  __$$TimerRunPauseImplCopyWithImpl(
      _$TimerRunPauseImpl _value, $Res Function(_$TimerRunPauseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$TimerRunPauseImpl(
      null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TimerRunPauseImpl implements TimerRunPause {
  _$TimerRunPauseImpl(this.duration);

  @override
  final int duration;

  @override
  String toString() {
    return 'TimerState.runPause(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerRunPauseImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerRunPauseImplCopyWith<_$TimerRunPauseImpl> get copyWith =>
      __$$TimerRunPauseImplCopyWithImpl<_$TimerRunPauseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) initial,
    required TResult Function(int duration) runPause,
    required TResult Function(int duration) runInProgress,
    required TResult Function(int duration) runCompleted,
  }) {
    return runPause(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? initial,
    TResult? Function(int duration)? runPause,
    TResult? Function(int duration)? runInProgress,
    TResult? Function(int duration)? runCompleted,
  }) {
    return runPause?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? initial,
    TResult Function(int duration)? runPause,
    TResult Function(int duration)? runInProgress,
    TResult Function(int duration)? runCompleted,
    required TResult orElse(),
  }) {
    if (runPause != null) {
      return runPause(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerInitial value) initial,
    required TResult Function(TimerRunPause value) runPause,
    required TResult Function(TimerRunInProgress value) runInProgress,
    required TResult Function(TimerRunCompleted value) runCompleted,
  }) {
    return runPause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerInitial value)? initial,
    TResult? Function(TimerRunPause value)? runPause,
    TResult? Function(TimerRunInProgress value)? runInProgress,
    TResult? Function(TimerRunCompleted value)? runCompleted,
  }) {
    return runPause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerInitial value)? initial,
    TResult Function(TimerRunPause value)? runPause,
    TResult Function(TimerRunInProgress value)? runInProgress,
    TResult Function(TimerRunCompleted value)? runCompleted,
    required TResult orElse(),
  }) {
    if (runPause != null) {
      return runPause(this);
    }
    return orElse();
  }
}

abstract class TimerRunPause implements TimerState {
  factory TimerRunPause(final int duration) = _$TimerRunPauseImpl;

  @override
  int get duration;
  @override
  @JsonKey(ignore: true)
  _$$TimerRunPauseImplCopyWith<_$TimerRunPauseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimerRunInProgressImplCopyWith<$Res>
    implements $TimerStateCopyWith<$Res> {
  factory _$$TimerRunInProgressImplCopyWith(_$TimerRunInProgressImpl value,
          $Res Function(_$TimerRunInProgressImpl) then) =
      __$$TimerRunInProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int duration});
}

/// @nodoc
class __$$TimerRunInProgressImplCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$TimerRunInProgressImpl>
    implements _$$TimerRunInProgressImplCopyWith<$Res> {
  __$$TimerRunInProgressImplCopyWithImpl(_$TimerRunInProgressImpl _value,
      $Res Function(_$TimerRunInProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$TimerRunInProgressImpl(
      null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TimerRunInProgressImpl implements TimerRunInProgress {
  _$TimerRunInProgressImpl(this.duration);

  @override
  final int duration;

  @override
  String toString() {
    return 'TimerState.runInProgress(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerRunInProgressImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerRunInProgressImplCopyWith<_$TimerRunInProgressImpl> get copyWith =>
      __$$TimerRunInProgressImplCopyWithImpl<_$TimerRunInProgressImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) initial,
    required TResult Function(int duration) runPause,
    required TResult Function(int duration) runInProgress,
    required TResult Function(int duration) runCompleted,
  }) {
    return runInProgress(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? initial,
    TResult? Function(int duration)? runPause,
    TResult? Function(int duration)? runInProgress,
    TResult? Function(int duration)? runCompleted,
  }) {
    return runInProgress?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? initial,
    TResult Function(int duration)? runPause,
    TResult Function(int duration)? runInProgress,
    TResult Function(int duration)? runCompleted,
    required TResult orElse(),
  }) {
    if (runInProgress != null) {
      return runInProgress(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerInitial value) initial,
    required TResult Function(TimerRunPause value) runPause,
    required TResult Function(TimerRunInProgress value) runInProgress,
    required TResult Function(TimerRunCompleted value) runCompleted,
  }) {
    return runInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerInitial value)? initial,
    TResult? Function(TimerRunPause value)? runPause,
    TResult? Function(TimerRunInProgress value)? runInProgress,
    TResult? Function(TimerRunCompleted value)? runCompleted,
  }) {
    return runInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerInitial value)? initial,
    TResult Function(TimerRunPause value)? runPause,
    TResult Function(TimerRunInProgress value)? runInProgress,
    TResult Function(TimerRunCompleted value)? runCompleted,
    required TResult orElse(),
  }) {
    if (runInProgress != null) {
      return runInProgress(this);
    }
    return orElse();
  }
}

abstract class TimerRunInProgress implements TimerState {
  factory TimerRunInProgress(final int duration) = _$TimerRunInProgressImpl;

  @override
  int get duration;
  @override
  @JsonKey(ignore: true)
  _$$TimerRunInProgressImplCopyWith<_$TimerRunInProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimerRunCompletedImplCopyWith<$Res>
    implements $TimerStateCopyWith<$Res> {
  factory _$$TimerRunCompletedImplCopyWith(_$TimerRunCompletedImpl value,
          $Res Function(_$TimerRunCompletedImpl) then) =
      __$$TimerRunCompletedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int duration});
}

/// @nodoc
class __$$TimerRunCompletedImplCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$TimerRunCompletedImpl>
    implements _$$TimerRunCompletedImplCopyWith<$Res> {
  __$$TimerRunCompletedImplCopyWithImpl(_$TimerRunCompletedImpl _value,
      $Res Function(_$TimerRunCompletedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$TimerRunCompletedImpl(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TimerRunCompletedImpl implements TimerRunCompleted {
  _$TimerRunCompletedImpl({this.duration = 0});

  @override
  @JsonKey()
  final int duration;

  @override
  String toString() {
    return 'TimerState.runCompleted(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerRunCompletedImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerRunCompletedImplCopyWith<_$TimerRunCompletedImpl> get copyWith =>
      __$$TimerRunCompletedImplCopyWithImpl<_$TimerRunCompletedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) initial,
    required TResult Function(int duration) runPause,
    required TResult Function(int duration) runInProgress,
    required TResult Function(int duration) runCompleted,
  }) {
    return runCompleted(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? initial,
    TResult? Function(int duration)? runPause,
    TResult? Function(int duration)? runInProgress,
    TResult? Function(int duration)? runCompleted,
  }) {
    return runCompleted?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? initial,
    TResult Function(int duration)? runPause,
    TResult Function(int duration)? runInProgress,
    TResult Function(int duration)? runCompleted,
    required TResult orElse(),
  }) {
    if (runCompleted != null) {
      return runCompleted(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerInitial value) initial,
    required TResult Function(TimerRunPause value) runPause,
    required TResult Function(TimerRunInProgress value) runInProgress,
    required TResult Function(TimerRunCompleted value) runCompleted,
  }) {
    return runCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerInitial value)? initial,
    TResult? Function(TimerRunPause value)? runPause,
    TResult? Function(TimerRunInProgress value)? runInProgress,
    TResult? Function(TimerRunCompleted value)? runCompleted,
  }) {
    return runCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerInitial value)? initial,
    TResult Function(TimerRunPause value)? runPause,
    TResult Function(TimerRunInProgress value)? runInProgress,
    TResult Function(TimerRunCompleted value)? runCompleted,
    required TResult orElse(),
  }) {
    if (runCompleted != null) {
      return runCompleted(this);
    }
    return orElse();
  }
}

abstract class TimerRunCompleted implements TimerState {
  factory TimerRunCompleted({final int duration}) = _$TimerRunCompletedImpl;

  @override
  int get duration;
  @override
  @JsonKey(ignore: true)
  _$$TimerRunCompletedImplCopyWith<_$TimerRunCompletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
