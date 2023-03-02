// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stop_watch_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StopWatchState {
  int get elapsedTime => throw _privateConstructorUsedError;
  List<int> get lapTimes => throw _privateConstructorUsedError;
  int get previousLapTime => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int elapsedTime, List<int> lapTimes, int previousLapTime)
        initial,
    required TResult Function(
            int elapsedTime, List<int> lapTimes, int previousLapTime)
        stopped,
    required TResult Function(
            int elapsedTime, List<int> lapTimes, int previousLapTime)
        running,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int elapsedTime, List<int> lapTimes, int previousLapTime)?
        initial,
    TResult? Function(int elapsedTime, List<int> lapTimes, int previousLapTime)?
        stopped,
    TResult? Function(int elapsedTime, List<int> lapTimes, int previousLapTime)?
        running,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int elapsedTime, List<int> lapTimes, int previousLapTime)?
        initial,
    TResult Function(int elapsedTime, List<int> lapTimes, int previousLapTime)?
        stopped,
    TResult Function(int elapsedTime, List<int> lapTimes, int previousLapTime)?
        running,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StopWatchInitial value) initial,
    required TResult Function(StopWatchStopped value) stopped,
    required TResult Function(StopWatchRunning value) running,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StopWatchInitial value)? initial,
    TResult? Function(StopWatchStopped value)? stopped,
    TResult? Function(StopWatchRunning value)? running,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StopWatchInitial value)? initial,
    TResult Function(StopWatchStopped value)? stopped,
    TResult Function(StopWatchRunning value)? running,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StopWatchStateCopyWith<StopWatchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StopWatchStateCopyWith<$Res> {
  factory $StopWatchStateCopyWith(
          StopWatchState value, $Res Function(StopWatchState) then) =
      _$StopWatchStateCopyWithImpl<$Res, StopWatchState>;
  @useResult
  $Res call({int elapsedTime, List<int> lapTimes, int previousLapTime});
}

/// @nodoc
class _$StopWatchStateCopyWithImpl<$Res, $Val extends StopWatchState>
    implements $StopWatchStateCopyWith<$Res> {
  _$StopWatchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? elapsedTime = null,
    Object? lapTimes = null,
    Object? previousLapTime = null,
  }) {
    return _then(_value.copyWith(
      elapsedTime: null == elapsedTime
          ? _value.elapsedTime
          : elapsedTime // ignore: cast_nullable_to_non_nullable
              as int,
      lapTimes: null == lapTimes
          ? _value.lapTimes
          : lapTimes // ignore: cast_nullable_to_non_nullable
              as List<int>,
      previousLapTime: null == previousLapTime
          ? _value.previousLapTime
          : previousLapTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StopWatchInitialCopyWith<$Res>
    implements $StopWatchStateCopyWith<$Res> {
  factory _$$StopWatchInitialCopyWith(
          _$StopWatchInitial value, $Res Function(_$StopWatchInitial) then) =
      __$$StopWatchInitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int elapsedTime, List<int> lapTimes, int previousLapTime});
}

/// @nodoc
class __$$StopWatchInitialCopyWithImpl<$Res>
    extends _$StopWatchStateCopyWithImpl<$Res, _$StopWatchInitial>
    implements _$$StopWatchInitialCopyWith<$Res> {
  __$$StopWatchInitialCopyWithImpl(
      _$StopWatchInitial _value, $Res Function(_$StopWatchInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? elapsedTime = null,
    Object? lapTimes = null,
    Object? previousLapTime = null,
  }) {
    return _then(_$StopWatchInitial(
      elapsedTime: null == elapsedTime
          ? _value.elapsedTime
          : elapsedTime // ignore: cast_nullable_to_non_nullable
              as int,
      lapTimes: null == lapTimes
          ? _value._lapTimes
          : lapTimes // ignore: cast_nullable_to_non_nullable
              as List<int>,
      previousLapTime: null == previousLapTime
          ? _value.previousLapTime
          : previousLapTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StopWatchInitial implements StopWatchInitial {
  const _$StopWatchInitial(
      {this.elapsedTime = 0,
      final List<int> lapTimes = const [],
      this.previousLapTime = 0})
      : _lapTimes = lapTimes;

  @override
  @JsonKey()
  final int elapsedTime;
  final List<int> _lapTimes;
  @override
  @JsonKey()
  List<int> get lapTimes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lapTimes);
  }

  @override
  @JsonKey()
  final int previousLapTime;

  @override
  String toString() {
    return 'StopWatchState.initial(elapsedTime: $elapsedTime, lapTimes: $lapTimes, previousLapTime: $previousLapTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StopWatchInitial &&
            (identical(other.elapsedTime, elapsedTime) ||
                other.elapsedTime == elapsedTime) &&
            const DeepCollectionEquality().equals(other._lapTimes, _lapTimes) &&
            (identical(other.previousLapTime, previousLapTime) ||
                other.previousLapTime == previousLapTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, elapsedTime,
      const DeepCollectionEquality().hash(_lapTimes), previousLapTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StopWatchInitialCopyWith<_$StopWatchInitial> get copyWith =>
      __$$StopWatchInitialCopyWithImpl<_$StopWatchInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int elapsedTime, List<int> lapTimes, int previousLapTime)
        initial,
    required TResult Function(
            int elapsedTime, List<int> lapTimes, int previousLapTime)
        stopped,
    required TResult Function(
            int elapsedTime, List<int> lapTimes, int previousLapTime)
        running,
  }) {
    return initial(elapsedTime, lapTimes, previousLapTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int elapsedTime, List<int> lapTimes, int previousLapTime)?
        initial,
    TResult? Function(int elapsedTime, List<int> lapTimes, int previousLapTime)?
        stopped,
    TResult? Function(int elapsedTime, List<int> lapTimes, int previousLapTime)?
        running,
  }) {
    return initial?.call(elapsedTime, lapTimes, previousLapTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int elapsedTime, List<int> lapTimes, int previousLapTime)?
        initial,
    TResult Function(int elapsedTime, List<int> lapTimes, int previousLapTime)?
        stopped,
    TResult Function(int elapsedTime, List<int> lapTimes, int previousLapTime)?
        running,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(elapsedTime, lapTimes, previousLapTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StopWatchInitial value) initial,
    required TResult Function(StopWatchStopped value) stopped,
    required TResult Function(StopWatchRunning value) running,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StopWatchInitial value)? initial,
    TResult? Function(StopWatchStopped value)? stopped,
    TResult? Function(StopWatchRunning value)? running,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StopWatchInitial value)? initial,
    TResult Function(StopWatchStopped value)? stopped,
    TResult Function(StopWatchRunning value)? running,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class StopWatchInitial implements StopWatchState {
  const factory StopWatchInitial(
      {final int elapsedTime,
      final List<int> lapTimes,
      final int previousLapTime}) = _$StopWatchInitial;

  @override
  int get elapsedTime;
  @override
  List<int> get lapTimes;
  @override
  int get previousLapTime;
  @override
  @JsonKey(ignore: true)
  _$$StopWatchInitialCopyWith<_$StopWatchInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StopWatchStoppedCopyWith<$Res>
    implements $StopWatchStateCopyWith<$Res> {
  factory _$$StopWatchStoppedCopyWith(
          _$StopWatchStopped value, $Res Function(_$StopWatchStopped) then) =
      __$$StopWatchStoppedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int elapsedTime, List<int> lapTimes, int previousLapTime});
}

/// @nodoc
class __$$StopWatchStoppedCopyWithImpl<$Res>
    extends _$StopWatchStateCopyWithImpl<$Res, _$StopWatchStopped>
    implements _$$StopWatchStoppedCopyWith<$Res> {
  __$$StopWatchStoppedCopyWithImpl(
      _$StopWatchStopped _value, $Res Function(_$StopWatchStopped) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? elapsedTime = null,
    Object? lapTimes = null,
    Object? previousLapTime = null,
  }) {
    return _then(_$StopWatchStopped(
      null == elapsedTime
          ? _value.elapsedTime
          : elapsedTime // ignore: cast_nullable_to_non_nullable
              as int,
      null == lapTimes
          ? _value._lapTimes
          : lapTimes // ignore: cast_nullable_to_non_nullable
              as List<int>,
      null == previousLapTime
          ? _value.previousLapTime
          : previousLapTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StopWatchStopped implements StopWatchStopped {
  const _$StopWatchStopped(
      this.elapsedTime, final List<int> lapTimes, this.previousLapTime)
      : _lapTimes = lapTimes;

  @override
  final int elapsedTime;
  final List<int> _lapTimes;
  @override
  List<int> get lapTimes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lapTimes);
  }

  @override
  final int previousLapTime;

  @override
  String toString() {
    return 'StopWatchState.stopped(elapsedTime: $elapsedTime, lapTimes: $lapTimes, previousLapTime: $previousLapTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StopWatchStopped &&
            (identical(other.elapsedTime, elapsedTime) ||
                other.elapsedTime == elapsedTime) &&
            const DeepCollectionEquality().equals(other._lapTimes, _lapTimes) &&
            (identical(other.previousLapTime, previousLapTime) ||
                other.previousLapTime == previousLapTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, elapsedTime,
      const DeepCollectionEquality().hash(_lapTimes), previousLapTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StopWatchStoppedCopyWith<_$StopWatchStopped> get copyWith =>
      __$$StopWatchStoppedCopyWithImpl<_$StopWatchStopped>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int elapsedTime, List<int> lapTimes, int previousLapTime)
        initial,
    required TResult Function(
            int elapsedTime, List<int> lapTimes, int previousLapTime)
        stopped,
    required TResult Function(
            int elapsedTime, List<int> lapTimes, int previousLapTime)
        running,
  }) {
    return stopped(elapsedTime, lapTimes, previousLapTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int elapsedTime, List<int> lapTimes, int previousLapTime)?
        initial,
    TResult? Function(int elapsedTime, List<int> lapTimes, int previousLapTime)?
        stopped,
    TResult? Function(int elapsedTime, List<int> lapTimes, int previousLapTime)?
        running,
  }) {
    return stopped?.call(elapsedTime, lapTimes, previousLapTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int elapsedTime, List<int> lapTimes, int previousLapTime)?
        initial,
    TResult Function(int elapsedTime, List<int> lapTimes, int previousLapTime)?
        stopped,
    TResult Function(int elapsedTime, List<int> lapTimes, int previousLapTime)?
        running,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped(elapsedTime, lapTimes, previousLapTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StopWatchInitial value) initial,
    required TResult Function(StopWatchStopped value) stopped,
    required TResult Function(StopWatchRunning value) running,
  }) {
    return stopped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StopWatchInitial value)? initial,
    TResult? Function(StopWatchStopped value)? stopped,
    TResult? Function(StopWatchRunning value)? running,
  }) {
    return stopped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StopWatchInitial value)? initial,
    TResult Function(StopWatchStopped value)? stopped,
    TResult Function(StopWatchRunning value)? running,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped(this);
    }
    return orElse();
  }
}

abstract class StopWatchStopped implements StopWatchState {
  const factory StopWatchStopped(final int elapsedTime,
      final List<int> lapTimes, final int previousLapTime) = _$StopWatchStopped;

  @override
  int get elapsedTime;
  @override
  List<int> get lapTimes;
  @override
  int get previousLapTime;
  @override
  @JsonKey(ignore: true)
  _$$StopWatchStoppedCopyWith<_$StopWatchStopped> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StopWatchRunningCopyWith<$Res>
    implements $StopWatchStateCopyWith<$Res> {
  factory _$$StopWatchRunningCopyWith(
          _$StopWatchRunning value, $Res Function(_$StopWatchRunning) then) =
      __$$StopWatchRunningCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int elapsedTime, List<int> lapTimes, int previousLapTime});
}

/// @nodoc
class __$$StopWatchRunningCopyWithImpl<$Res>
    extends _$StopWatchStateCopyWithImpl<$Res, _$StopWatchRunning>
    implements _$$StopWatchRunningCopyWith<$Res> {
  __$$StopWatchRunningCopyWithImpl(
      _$StopWatchRunning _value, $Res Function(_$StopWatchRunning) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? elapsedTime = null,
    Object? lapTimes = null,
    Object? previousLapTime = null,
  }) {
    return _then(_$StopWatchRunning(
      null == elapsedTime
          ? _value.elapsedTime
          : elapsedTime // ignore: cast_nullable_to_non_nullable
              as int,
      null == lapTimes
          ? _value._lapTimes
          : lapTimes // ignore: cast_nullable_to_non_nullable
              as List<int>,
      null == previousLapTime
          ? _value.previousLapTime
          : previousLapTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StopWatchRunning implements StopWatchRunning {
  const _$StopWatchRunning(
      this.elapsedTime, final List<int> lapTimes, this.previousLapTime)
      : _lapTimes = lapTimes;

  @override
  final int elapsedTime;
  final List<int> _lapTimes;
  @override
  List<int> get lapTimes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lapTimes);
  }

  @override
  final int previousLapTime;

  @override
  String toString() {
    return 'StopWatchState.running(elapsedTime: $elapsedTime, lapTimes: $lapTimes, previousLapTime: $previousLapTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StopWatchRunning &&
            (identical(other.elapsedTime, elapsedTime) ||
                other.elapsedTime == elapsedTime) &&
            const DeepCollectionEquality().equals(other._lapTimes, _lapTimes) &&
            (identical(other.previousLapTime, previousLapTime) ||
                other.previousLapTime == previousLapTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, elapsedTime,
      const DeepCollectionEquality().hash(_lapTimes), previousLapTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StopWatchRunningCopyWith<_$StopWatchRunning> get copyWith =>
      __$$StopWatchRunningCopyWithImpl<_$StopWatchRunning>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int elapsedTime, List<int> lapTimes, int previousLapTime)
        initial,
    required TResult Function(
            int elapsedTime, List<int> lapTimes, int previousLapTime)
        stopped,
    required TResult Function(
            int elapsedTime, List<int> lapTimes, int previousLapTime)
        running,
  }) {
    return running(elapsedTime, lapTimes, previousLapTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int elapsedTime, List<int> lapTimes, int previousLapTime)?
        initial,
    TResult? Function(int elapsedTime, List<int> lapTimes, int previousLapTime)?
        stopped,
    TResult? Function(int elapsedTime, List<int> lapTimes, int previousLapTime)?
        running,
  }) {
    return running?.call(elapsedTime, lapTimes, previousLapTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int elapsedTime, List<int> lapTimes, int previousLapTime)?
        initial,
    TResult Function(int elapsedTime, List<int> lapTimes, int previousLapTime)?
        stopped,
    TResult Function(int elapsedTime, List<int> lapTimes, int previousLapTime)?
        running,
    required TResult orElse(),
  }) {
    if (running != null) {
      return running(elapsedTime, lapTimes, previousLapTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StopWatchInitial value) initial,
    required TResult Function(StopWatchStopped value) stopped,
    required TResult Function(StopWatchRunning value) running,
  }) {
    return running(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StopWatchInitial value)? initial,
    TResult? Function(StopWatchStopped value)? stopped,
    TResult? Function(StopWatchRunning value)? running,
  }) {
    return running?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StopWatchInitial value)? initial,
    TResult Function(StopWatchStopped value)? stopped,
    TResult Function(StopWatchRunning value)? running,
    required TResult orElse(),
  }) {
    if (running != null) {
      return running(this);
    }
    return orElse();
  }
}

abstract class StopWatchRunning implements StopWatchState {
  const factory StopWatchRunning(final int elapsedTime,
      final List<int> lapTimes, final int previousLapTime) = _$StopWatchRunning;

  @override
  int get elapsedTime;
  @override
  List<int> get lapTimes;
  @override
  int get previousLapTime;
  @override
  @JsonKey(ignore: true)
  _$$StopWatchRunningCopyWith<_$StopWatchRunning> get copyWith =>
      throw _privateConstructorUsedError;
}
