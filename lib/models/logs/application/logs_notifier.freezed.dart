// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'logs_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
    TResult Function()? initial,
    TResult Function()? reading,
    TResult Function(List<LogWithDate> logs)? done,
    TResult Function(LogWithDate log)? writing,
    TResult Function()? failed,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_Reading value)? reading,
    TResult Function(_Done value)? done,
    TResult Function(_Writing value)? writing,
    TResult Function(_Failed value)? failed,
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
      _$LogStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogStateCopyWithImpl<$Res> implements $LogStateCopyWith<$Res> {
  _$LogStateCopyWithImpl(this._value, this._then);

  final LogState _value;
  // ignore: unused_field
  final $Res Function(LogState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$LogStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial() : super._();

  @override
  String toString() {
    return 'LogState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
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
    TResult Function()? initial,
    TResult Function()? reading,
    TResult Function(List<LogWithDate> logs)? done,
    TResult Function(LogWithDate log)? writing,
    TResult Function()? failed,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_Reading value)? reading,
    TResult Function(_Done value)? done,
    TResult Function(_Writing value)? writing,
    TResult Function(_Failed value)? failed,
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
  const factory _Initial() = _$_Initial;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$_ReadingCopyWith<$Res> {
  factory _$$_ReadingCopyWith(
          _$_Reading value, $Res Function(_$_Reading) then) =
      __$$_ReadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReadingCopyWithImpl<$Res> extends _$LogStateCopyWithImpl<$Res>
    implements _$$_ReadingCopyWith<$Res> {
  __$$_ReadingCopyWithImpl(_$_Reading _value, $Res Function(_$_Reading) _then)
      : super(_value, (v) => _then(v as _$_Reading));

  @override
  _$_Reading get _value => super._value as _$_Reading;
}

/// @nodoc

class _$_Reading extends _Reading {
  const _$_Reading() : super._();

  @override
  String toString() {
    return 'LogState.reading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Reading);
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
    TResult Function()? initial,
    TResult Function()? reading,
    TResult Function(List<LogWithDate> logs)? done,
    TResult Function(LogWithDate log)? writing,
    TResult Function()? failed,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_Reading value)? reading,
    TResult Function(_Done value)? done,
    TResult Function(_Writing value)? writing,
    TResult Function(_Failed value)? failed,
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
  const factory _Reading() = _$_Reading;
  const _Reading._() : super._();
}

/// @nodoc
abstract class _$$_DoneCopyWith<$Res> {
  factory _$$_DoneCopyWith(_$_Done value, $Res Function(_$_Done) then) =
      __$$_DoneCopyWithImpl<$Res>;
  $Res call({List<LogWithDate> logs});
}

/// @nodoc
class __$$_DoneCopyWithImpl<$Res> extends _$LogStateCopyWithImpl<$Res>
    implements _$$_DoneCopyWith<$Res> {
  __$$_DoneCopyWithImpl(_$_Done _value, $Res Function(_$_Done) _then)
      : super(_value, (v) => _then(v as _$_Done));

  @override
  _$_Done get _value => super._value as _$_Done;

  @override
  $Res call({
    Object? logs = freezed,
  }) {
    return _then(_$_Done(
      logs == freezed
          ? _value._logs
          : logs // ignore: cast_nullable_to_non_nullable
              as List<LogWithDate>,
    ));
  }
}

/// @nodoc

class _$_Done extends _Done {
  const _$_Done(final List<LogWithDate> logs)
      : _logs = logs,
        super._();

  final List<LogWithDate> _logs;
  @override
  List<LogWithDate> get logs {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_logs);
  }

  @override
  String toString() {
    return 'LogState.done(logs: $logs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Done &&
            const DeepCollectionEquality().equals(other._logs, _logs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_logs));

  @JsonKey(ignore: true)
  @override
  _$$_DoneCopyWith<_$_Done> get copyWith =>
      __$$_DoneCopyWithImpl<_$_Done>(this, _$identity);

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
    TResult Function()? initial,
    TResult Function()? reading,
    TResult Function(List<LogWithDate> logs)? done,
    TResult Function(LogWithDate log)? writing,
    TResult Function()? failed,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_Reading value)? reading,
    TResult Function(_Done value)? done,
    TResult Function(_Writing value)? writing,
    TResult Function(_Failed value)? failed,
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
  const factory _Done(final List<LogWithDate> logs) = _$_Done;
  const _Done._() : super._();

  List<LogWithDate> get logs => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_DoneCopyWith<_$_Done> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WritingCopyWith<$Res> {
  factory _$$_WritingCopyWith(
          _$_Writing value, $Res Function(_$_Writing) then) =
      __$$_WritingCopyWithImpl<$Res>;
  $Res call({LogWithDate log});

  $LogWithDateCopyWith<$Res> get log;
}

/// @nodoc
class __$$_WritingCopyWithImpl<$Res> extends _$LogStateCopyWithImpl<$Res>
    implements _$$_WritingCopyWith<$Res> {
  __$$_WritingCopyWithImpl(_$_Writing _value, $Res Function(_$_Writing) _then)
      : super(_value, (v) => _then(v as _$_Writing));

  @override
  _$_Writing get _value => super._value as _$_Writing;

  @override
  $Res call({
    Object? log = freezed,
  }) {
    return _then(_$_Writing(
      log == freezed
          ? _value.log
          : log // ignore: cast_nullable_to_non_nullable
              as LogWithDate,
    ));
  }

  @override
  $LogWithDateCopyWith<$Res> get log {
    return $LogWithDateCopyWith<$Res>(_value.log, (value) {
      return _then(_value.copyWith(log: value));
    });
  }
}

/// @nodoc

class _$_Writing extends _Writing {
  const _$_Writing(this.log) : super._();

  @override
  final LogWithDate log;

  @override
  String toString() {
    return 'LogState.writing(log: $log)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Writing &&
            const DeepCollectionEquality().equals(other.log, log));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(log));

  @JsonKey(ignore: true)
  @override
  _$$_WritingCopyWith<_$_Writing> get copyWith =>
      __$$_WritingCopyWithImpl<_$_Writing>(this, _$identity);

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
    TResult Function()? initial,
    TResult Function()? reading,
    TResult Function(List<LogWithDate> logs)? done,
    TResult Function(LogWithDate log)? writing,
    TResult Function()? failed,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_Reading value)? reading,
    TResult Function(_Done value)? done,
    TResult Function(_Writing value)? writing,
    TResult Function(_Failed value)? failed,
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
  const factory _Writing(final LogWithDate log) = _$_Writing;
  const _Writing._() : super._();

  LogWithDate get log => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_WritingCopyWith<_$_Writing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailedCopyWith<$Res> {
  factory _$$_FailedCopyWith(_$_Failed value, $Res Function(_$_Failed) then) =
      __$$_FailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FailedCopyWithImpl<$Res> extends _$LogStateCopyWithImpl<$Res>
    implements _$$_FailedCopyWith<$Res> {
  __$$_FailedCopyWithImpl(_$_Failed _value, $Res Function(_$_Failed) _then)
      : super(_value, (v) => _then(v as _$_Failed));

  @override
  _$_Failed get _value => super._value as _$_Failed;
}

/// @nodoc

class _$_Failed extends _Failed {
  const _$_Failed() : super._();

  @override
  String toString() {
    return 'LogState.failed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Failed);
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
    TResult Function()? initial,
    TResult Function()? reading,
    TResult Function(List<LogWithDate> logs)? done,
    TResult Function(LogWithDate log)? writing,
    TResult Function()? failed,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_Reading value)? reading,
    TResult Function(_Done value)? done,
    TResult Function(_Writing value)? writing,
    TResult Function(_Failed value)? failed,
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
  const factory _Failed() = _$_Failed;
  const _Failed._() : super._();
}
