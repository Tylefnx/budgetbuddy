// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logs_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LogState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() reading,
    required TResult Function(List<LogWithDate> logs) done,
    required TResult Function(LogWithDate log) writing,
    required TResult Function() failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? reading,
    TResult? Function(List<LogWithDate> logs)? done,
    TResult? Function(LogWithDate log)? writing,
    TResult? Function()? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reading,
    TResult Function(List<LogWithDate> logs)? done,
    TResult Function(LogWithDate log)? writing,
    TResult Function()? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Reading value) reading,
    required TResult Function(_Done value) done,
    required TResult Function(_Writing value) writing,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Reading value)? reading,
    TResult? Function(_Done value)? done,
    TResult? Function(_Writing value)? writing,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Reading value)? reading,
    TResult Function(_Done value)? done,
    TResult Function(_Writing value)? writing,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogStateCopyWith<$Res> {
  factory $LogStateCopyWith(LogState value, $Res Function(LogState) then) =
      _$LogStateCopyWithImpl<$Res, LogState>;
}

/// @nodoc
class _$LogStateCopyWithImpl<$Res, $Val extends LogState>
    implements $LogStateCopyWith<$Res> {
  _$LogStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LogState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$LogStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of LogState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl extends _Initial {
  const _$InitialImpl() : super._();

  @override
  String toString() {
    return 'LogState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() reading,
    required TResult Function(List<LogWithDate> logs) done,
    required TResult Function(LogWithDate log) writing,
    required TResult Function() failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? reading,
    TResult? Function(List<LogWithDate> logs)? done,
    TResult? Function(LogWithDate log)? writing,
    TResult? Function()? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reading,
    TResult Function(List<LogWithDate> logs)? done,
    TResult Function(LogWithDate log)? writing,
    TResult Function()? failed,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Reading value) reading,
    required TResult Function(_Done value) done,
    required TResult Function(_Writing value) writing,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Reading value)? reading,
    TResult? Function(_Done value)? done,
    TResult? Function(_Writing value)? writing,
    TResult? Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Reading value)? reading,
    TResult Function(_Done value)? done,
    TResult Function(_Writing value)? writing,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends LogState {
  const factory _Initial() = _$InitialImpl;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$ReadingImplCopyWith<$Res> {
  factory _$$ReadingImplCopyWith(
          _$ReadingImpl value, $Res Function(_$ReadingImpl) then) =
      __$$ReadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReadingImplCopyWithImpl<$Res>
    extends _$LogStateCopyWithImpl<$Res, _$ReadingImpl>
    implements _$$ReadingImplCopyWith<$Res> {
  __$$ReadingImplCopyWithImpl(
      _$ReadingImpl _value, $Res Function(_$ReadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of LogState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ReadingImpl extends _Reading {
  const _$ReadingImpl() : super._();

  @override
  String toString() {
    return 'LogState.reading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() reading,
    required TResult Function(List<LogWithDate> logs) done,
    required TResult Function(LogWithDate log) writing,
    required TResult Function() failed,
  }) {
    return reading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? reading,
    TResult? Function(List<LogWithDate> logs)? done,
    TResult? Function(LogWithDate log)? writing,
    TResult? Function()? failed,
  }) {
    return reading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reading,
    TResult Function(List<LogWithDate> logs)? done,
    TResult Function(LogWithDate log)? writing,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (reading != null) {
      return reading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Reading value) reading,
    required TResult Function(_Done value) done,
    required TResult Function(_Writing value) writing,
    required TResult Function(_Failed value) failed,
  }) {
    return reading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Reading value)? reading,
    TResult? Function(_Done value)? done,
    TResult? Function(_Writing value)? writing,
    TResult? Function(_Failed value)? failed,
  }) {
    return reading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Reading value)? reading,
    TResult Function(_Done value)? done,
    TResult Function(_Writing value)? writing,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (reading != null) {
      return reading(this);
    }
    return orElse();
  }
}

abstract class _Reading extends LogState {
  const factory _Reading() = _$ReadingImpl;
  const _Reading._() : super._();
}

/// @nodoc
abstract class _$$DoneImplCopyWith<$Res> {
  factory _$$DoneImplCopyWith(
          _$DoneImpl value, $Res Function(_$DoneImpl) then) =
      __$$DoneImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<LogWithDate> logs});
}

/// @nodoc
class __$$DoneImplCopyWithImpl<$Res>
    extends _$LogStateCopyWithImpl<$Res, _$DoneImpl>
    implements _$$DoneImplCopyWith<$Res> {
  __$$DoneImplCopyWithImpl(_$DoneImpl _value, $Res Function(_$DoneImpl) _then)
      : super(_value, _then);

  /// Create a copy of LogState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logs = null,
  }) {
    return _then(_$DoneImpl(
      null == logs
          ? _value._logs
          : logs // ignore: cast_nullable_to_non_nullable
              as List<LogWithDate>,
    ));
  }
}

/// @nodoc

class _$DoneImpl extends _Done {
  const _$DoneImpl(final List<LogWithDate> logs)
      : _logs = logs,
        super._();

  final List<LogWithDate> _logs;
  @override
  List<LogWithDate> get logs {
    if (_logs is EqualUnmodifiableListView) return _logs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_logs);
  }

  @override
  String toString() {
    return 'LogState.done(logs: $logs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoneImpl &&
            const DeepCollectionEquality().equals(other._logs, _logs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_logs));

  /// Create a copy of LogState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoneImplCopyWith<_$DoneImpl> get copyWith =>
      __$$DoneImplCopyWithImpl<_$DoneImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() reading,
    required TResult Function(List<LogWithDate> logs) done,
    required TResult Function(LogWithDate log) writing,
    required TResult Function() failed,
  }) {
    return done(logs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? reading,
    TResult? Function(List<LogWithDate> logs)? done,
    TResult? Function(LogWithDate log)? writing,
    TResult? Function()? failed,
  }) {
    return done?.call(logs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reading,
    TResult Function(List<LogWithDate> logs)? done,
    TResult Function(LogWithDate log)? writing,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(logs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Reading value) reading,
    required TResult Function(_Done value) done,
    required TResult Function(_Writing value) writing,
    required TResult Function(_Failed value) failed,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Reading value)? reading,
    TResult? Function(_Done value)? done,
    TResult? Function(_Writing value)? writing,
    TResult? Function(_Failed value)? failed,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Reading value)? reading,
    TResult Function(_Done value)? done,
    TResult Function(_Writing value)? writing,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _Done extends LogState {
  const factory _Done(final List<LogWithDate> logs) = _$DoneImpl;
  const _Done._() : super._();

  List<LogWithDate> get logs;

  /// Create a copy of LogState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoneImplCopyWith<_$DoneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WritingImplCopyWith<$Res> {
  factory _$$WritingImplCopyWith(
          _$WritingImpl value, $Res Function(_$WritingImpl) then) =
      __$$WritingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LogWithDate log});

  $LogWithDateCopyWith<$Res> get log;
}

/// @nodoc
class __$$WritingImplCopyWithImpl<$Res>
    extends _$LogStateCopyWithImpl<$Res, _$WritingImpl>
    implements _$$WritingImplCopyWith<$Res> {
  __$$WritingImplCopyWithImpl(
      _$WritingImpl _value, $Res Function(_$WritingImpl) _then)
      : super(_value, _then);

  /// Create a copy of LogState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? log = null,
  }) {
    return _then(_$WritingImpl(
      null == log
          ? _value.log
          : log // ignore: cast_nullable_to_non_nullable
              as LogWithDate,
    ));
  }

  /// Create a copy of LogState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LogWithDateCopyWith<$Res> get log {
    return $LogWithDateCopyWith<$Res>(_value.log, (value) {
      return _then(_value.copyWith(log: value));
    });
  }
}

/// @nodoc

class _$WritingImpl extends _Writing {
  const _$WritingImpl(this.log) : super._();

  @override
  final LogWithDate log;

  @override
  String toString() {
    return 'LogState.writing(log: $log)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WritingImpl &&
            (identical(other.log, log) || other.log == log));
  }

  @override
  int get hashCode => Object.hash(runtimeType, log);

  /// Create a copy of LogState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WritingImplCopyWith<_$WritingImpl> get copyWith =>
      __$$WritingImplCopyWithImpl<_$WritingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() reading,
    required TResult Function(List<LogWithDate> logs) done,
    required TResult Function(LogWithDate log) writing,
    required TResult Function() failed,
  }) {
    return writing(log);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? reading,
    TResult? Function(List<LogWithDate> logs)? done,
    TResult? Function(LogWithDate log)? writing,
    TResult? Function()? failed,
  }) {
    return writing?.call(log);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reading,
    TResult Function(List<LogWithDate> logs)? done,
    TResult Function(LogWithDate log)? writing,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (writing != null) {
      return writing(log);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Reading value) reading,
    required TResult Function(_Done value) done,
    required TResult Function(_Writing value) writing,
    required TResult Function(_Failed value) failed,
  }) {
    return writing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Reading value)? reading,
    TResult? Function(_Done value)? done,
    TResult? Function(_Writing value)? writing,
    TResult? Function(_Failed value)? failed,
  }) {
    return writing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Reading value)? reading,
    TResult Function(_Done value)? done,
    TResult Function(_Writing value)? writing,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (writing != null) {
      return writing(this);
    }
    return orElse();
  }
}

abstract class _Writing extends LogState {
  const factory _Writing(final LogWithDate log) = _$WritingImpl;
  const _Writing._() : super._();

  LogWithDate get log;

  /// Create a copy of LogState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WritingImplCopyWith<_$WritingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$LogStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LogState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FailedImpl extends _Failed {
  const _$FailedImpl() : super._();

  @override
  String toString() {
    return 'LogState.failed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() reading,
    required TResult Function(List<LogWithDate> logs) done,
    required TResult Function(LogWithDate log) writing,
    required TResult Function() failed,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? reading,
    TResult? Function(List<LogWithDate> logs)? done,
    TResult? Function(LogWithDate log)? writing,
    TResult? Function()? failed,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reading,
    TResult Function(List<LogWithDate> logs)? done,
    TResult Function(LogWithDate log)? writing,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Reading value) reading,
    required TResult Function(_Done value) done,
    required TResult Function(_Writing value) writing,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Reading value)? reading,
    TResult? Function(_Done value)? done,
    TResult? Function(_Writing value)? writing,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Reading value)? reading,
    TResult Function(_Done value)? done,
    TResult Function(_Writing value)? writing,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed extends LogState {
  const factory _Failed() = _$FailedImpl;
  const _Failed._() : super._();
}
