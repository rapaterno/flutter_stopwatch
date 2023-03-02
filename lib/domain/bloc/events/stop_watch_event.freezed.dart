// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stop_watch_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StopWatchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() stop,
    required TResult Function() lap,
    required TResult Function() reset,
    required TResult Function() tick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? stop,
    TResult? Function()? lap,
    TResult? Function()? reset,
    TResult? Function()? tick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? stop,
    TResult Function()? lap,
    TResult Function()? reset,
    TResult Function()? tick,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartStopWatch value) start,
    required TResult Function(StopStopWatch value) stop,
    required TResult Function(LapStopWatch value) lap,
    required TResult Function(ResetStopWatch value) reset,
    required TResult Function(TickStopWatch value) tick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartStopWatch value)? start,
    TResult? Function(StopStopWatch value)? stop,
    TResult? Function(LapStopWatch value)? lap,
    TResult? Function(ResetStopWatch value)? reset,
    TResult? Function(TickStopWatch value)? tick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartStopWatch value)? start,
    TResult Function(StopStopWatch value)? stop,
    TResult Function(LapStopWatch value)? lap,
    TResult Function(ResetStopWatch value)? reset,
    TResult Function(TickStopWatch value)? tick,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StopWatchEventCopyWith<$Res> {
  factory $StopWatchEventCopyWith(
          StopWatchEvent value, $Res Function(StopWatchEvent) then) =
      _$StopWatchEventCopyWithImpl<$Res, StopWatchEvent>;
}

/// @nodoc
class _$StopWatchEventCopyWithImpl<$Res, $Val extends StopWatchEvent>
    implements $StopWatchEventCopyWith<$Res> {
  _$StopWatchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartStopWatchCopyWith<$Res> {
  factory _$$StartStopWatchCopyWith(
          _$StartStopWatch value, $Res Function(_$StartStopWatch) then) =
      __$$StartStopWatchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartStopWatchCopyWithImpl<$Res>
    extends _$StopWatchEventCopyWithImpl<$Res, _$StartStopWatch>
    implements _$$StartStopWatchCopyWith<$Res> {
  __$$StartStopWatchCopyWithImpl(
      _$StartStopWatch _value, $Res Function(_$StartStopWatch) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartStopWatch implements StartStopWatch {
  const _$StartStopWatch();

  @override
  String toString() {
    return 'StopWatchEvent.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartStopWatch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() stop,
    required TResult Function() lap,
    required TResult Function() reset,
    required TResult Function() tick,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? stop,
    TResult? Function()? lap,
    TResult? Function()? reset,
    TResult? Function()? tick,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? stop,
    TResult Function()? lap,
    TResult Function()? reset,
    TResult Function()? tick,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartStopWatch value) start,
    required TResult Function(StopStopWatch value) stop,
    required TResult Function(LapStopWatch value) lap,
    required TResult Function(ResetStopWatch value) reset,
    required TResult Function(TickStopWatch value) tick,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartStopWatch value)? start,
    TResult? Function(StopStopWatch value)? stop,
    TResult? Function(LapStopWatch value)? lap,
    TResult? Function(ResetStopWatch value)? reset,
    TResult? Function(TickStopWatch value)? tick,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartStopWatch value)? start,
    TResult Function(StopStopWatch value)? stop,
    TResult Function(LapStopWatch value)? lap,
    TResult Function(ResetStopWatch value)? reset,
    TResult Function(TickStopWatch value)? tick,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class StartStopWatch implements StopWatchEvent {
  const factory StartStopWatch() = _$StartStopWatch;
}

/// @nodoc
abstract class _$$StopStopWatchCopyWith<$Res> {
  factory _$$StopStopWatchCopyWith(
          _$StopStopWatch value, $Res Function(_$StopStopWatch) then) =
      __$$StopStopWatchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopStopWatchCopyWithImpl<$Res>
    extends _$StopWatchEventCopyWithImpl<$Res, _$StopStopWatch>
    implements _$$StopStopWatchCopyWith<$Res> {
  __$$StopStopWatchCopyWithImpl(
      _$StopStopWatch _value, $Res Function(_$StopStopWatch) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StopStopWatch implements StopStopWatch {
  const _$StopStopWatch();

  @override
  String toString() {
    return 'StopWatchEvent.stop()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StopStopWatch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() stop,
    required TResult Function() lap,
    required TResult Function() reset,
    required TResult Function() tick,
  }) {
    return stop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? stop,
    TResult? Function()? lap,
    TResult? Function()? reset,
    TResult? Function()? tick,
  }) {
    return stop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? stop,
    TResult Function()? lap,
    TResult Function()? reset,
    TResult Function()? tick,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartStopWatch value) start,
    required TResult Function(StopStopWatch value) stop,
    required TResult Function(LapStopWatch value) lap,
    required TResult Function(ResetStopWatch value) reset,
    required TResult Function(TickStopWatch value) tick,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartStopWatch value)? start,
    TResult? Function(StopStopWatch value)? stop,
    TResult? Function(LapStopWatch value)? lap,
    TResult? Function(ResetStopWatch value)? reset,
    TResult? Function(TickStopWatch value)? tick,
  }) {
    return stop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartStopWatch value)? start,
    TResult Function(StopStopWatch value)? stop,
    TResult Function(LapStopWatch value)? lap,
    TResult Function(ResetStopWatch value)? reset,
    TResult Function(TickStopWatch value)? tick,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }
}

abstract class StopStopWatch implements StopWatchEvent {
  const factory StopStopWatch() = _$StopStopWatch;
}

/// @nodoc
abstract class _$$LapStopWatchCopyWith<$Res> {
  factory _$$LapStopWatchCopyWith(
          _$LapStopWatch value, $Res Function(_$LapStopWatch) then) =
      __$$LapStopWatchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LapStopWatchCopyWithImpl<$Res>
    extends _$StopWatchEventCopyWithImpl<$Res, _$LapStopWatch>
    implements _$$LapStopWatchCopyWith<$Res> {
  __$$LapStopWatchCopyWithImpl(
      _$LapStopWatch _value, $Res Function(_$LapStopWatch) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LapStopWatch implements LapStopWatch {
  const _$LapStopWatch();

  @override
  String toString() {
    return 'StopWatchEvent.lap()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LapStopWatch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() stop,
    required TResult Function() lap,
    required TResult Function() reset,
    required TResult Function() tick,
  }) {
    return lap();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? stop,
    TResult? Function()? lap,
    TResult? Function()? reset,
    TResult? Function()? tick,
  }) {
    return lap?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? stop,
    TResult Function()? lap,
    TResult Function()? reset,
    TResult Function()? tick,
    required TResult orElse(),
  }) {
    if (lap != null) {
      return lap();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartStopWatch value) start,
    required TResult Function(StopStopWatch value) stop,
    required TResult Function(LapStopWatch value) lap,
    required TResult Function(ResetStopWatch value) reset,
    required TResult Function(TickStopWatch value) tick,
  }) {
    return lap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartStopWatch value)? start,
    TResult? Function(StopStopWatch value)? stop,
    TResult? Function(LapStopWatch value)? lap,
    TResult? Function(ResetStopWatch value)? reset,
    TResult? Function(TickStopWatch value)? tick,
  }) {
    return lap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartStopWatch value)? start,
    TResult Function(StopStopWatch value)? stop,
    TResult Function(LapStopWatch value)? lap,
    TResult Function(ResetStopWatch value)? reset,
    TResult Function(TickStopWatch value)? tick,
    required TResult orElse(),
  }) {
    if (lap != null) {
      return lap(this);
    }
    return orElse();
  }
}

abstract class LapStopWatch implements StopWatchEvent {
  const factory LapStopWatch() = _$LapStopWatch;
}

/// @nodoc
abstract class _$$ResetStopWatchCopyWith<$Res> {
  factory _$$ResetStopWatchCopyWith(
          _$ResetStopWatch value, $Res Function(_$ResetStopWatch) then) =
      __$$ResetStopWatchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetStopWatchCopyWithImpl<$Res>
    extends _$StopWatchEventCopyWithImpl<$Res, _$ResetStopWatch>
    implements _$$ResetStopWatchCopyWith<$Res> {
  __$$ResetStopWatchCopyWithImpl(
      _$ResetStopWatch _value, $Res Function(_$ResetStopWatch) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetStopWatch implements ResetStopWatch {
  const _$ResetStopWatch();

  @override
  String toString() {
    return 'StopWatchEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetStopWatch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() stop,
    required TResult Function() lap,
    required TResult Function() reset,
    required TResult Function() tick,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? stop,
    TResult? Function()? lap,
    TResult? Function()? reset,
    TResult? Function()? tick,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? stop,
    TResult Function()? lap,
    TResult Function()? reset,
    TResult Function()? tick,
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
    required TResult Function(StartStopWatch value) start,
    required TResult Function(StopStopWatch value) stop,
    required TResult Function(LapStopWatch value) lap,
    required TResult Function(ResetStopWatch value) reset,
    required TResult Function(TickStopWatch value) tick,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartStopWatch value)? start,
    TResult? Function(StopStopWatch value)? stop,
    TResult? Function(LapStopWatch value)? lap,
    TResult? Function(ResetStopWatch value)? reset,
    TResult? Function(TickStopWatch value)? tick,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartStopWatch value)? start,
    TResult Function(StopStopWatch value)? stop,
    TResult Function(LapStopWatch value)? lap,
    TResult Function(ResetStopWatch value)? reset,
    TResult Function(TickStopWatch value)? tick,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class ResetStopWatch implements StopWatchEvent {
  const factory ResetStopWatch() = _$ResetStopWatch;
}

/// @nodoc
abstract class _$$TickStopWatchCopyWith<$Res> {
  factory _$$TickStopWatchCopyWith(
          _$TickStopWatch value, $Res Function(_$TickStopWatch) then) =
      __$$TickStopWatchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TickStopWatchCopyWithImpl<$Res>
    extends _$StopWatchEventCopyWithImpl<$Res, _$TickStopWatch>
    implements _$$TickStopWatchCopyWith<$Res> {
  __$$TickStopWatchCopyWithImpl(
      _$TickStopWatch _value, $Res Function(_$TickStopWatch) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TickStopWatch implements TickStopWatch {
  const _$TickStopWatch();

  @override
  String toString() {
    return 'StopWatchEvent.tick()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TickStopWatch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() stop,
    required TResult Function() lap,
    required TResult Function() reset,
    required TResult Function() tick,
  }) {
    return tick();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? stop,
    TResult? Function()? lap,
    TResult? Function()? reset,
    TResult? Function()? tick,
  }) {
    return tick?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? stop,
    TResult Function()? lap,
    TResult Function()? reset,
    TResult Function()? tick,
    required TResult orElse(),
  }) {
    if (tick != null) {
      return tick();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartStopWatch value) start,
    required TResult Function(StopStopWatch value) stop,
    required TResult Function(LapStopWatch value) lap,
    required TResult Function(ResetStopWatch value) reset,
    required TResult Function(TickStopWatch value) tick,
  }) {
    return tick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartStopWatch value)? start,
    TResult? Function(StopStopWatch value)? stop,
    TResult? Function(LapStopWatch value)? lap,
    TResult? Function(ResetStopWatch value)? reset,
    TResult? Function(TickStopWatch value)? tick,
  }) {
    return tick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartStopWatch value)? start,
    TResult Function(StopStopWatch value)? stop,
    TResult Function(LapStopWatch value)? lap,
    TResult Function(ResetStopWatch value)? reset,
    TResult Function(TickStopWatch value)? tick,
    required TResult orElse(),
  }) {
    if (tick != null) {
      return tick(this);
    }
    return orElse();
  }
}

abstract class TickStopWatch implements StopWatchEvent {
  const factory TickStopWatch() = _$TickStopWatch;
}
