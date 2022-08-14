// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'logs_with_dates.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LogWithDate _$LogWithDateFromJson(Map<String, dynamic> json) {
  return _LogWithDate.fromJson(json);
}

/// @nodoc
mixin _$LogWithDate {
  int get id => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;
  String get details => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  bool get isExpense => throw _privateConstructorUsedError;
  int get milliSecondsFromEpoch => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogWithDateCopyWith<LogWithDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogWithDateCopyWith<$Res> {
  factory $LogWithDateCopyWith(
          LogWithDate value, $Res Function(LogWithDate) then) =
      _$LogWithDateCopyWithImpl<$Res>;
  $Res call(
      {int id,
      int categoryId,
      String details,
      double value,
      bool isExpense,
      int milliSecondsFromEpoch});
}

/// @nodoc
class _$LogWithDateCopyWithImpl<$Res> implements $LogWithDateCopyWith<$Res> {
  _$LogWithDateCopyWithImpl(this._value, this._then);

  final LogWithDate _value;
  // ignore: unused_field
  final $Res Function(LogWithDate) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? categoryId = freezed,
    Object? details = freezed,
    Object? value = freezed,
    Object? isExpense = freezed,
    Object? milliSecondsFromEpoch = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      isExpense: isExpense == freezed
          ? _value.isExpense
          : isExpense // ignore: cast_nullable_to_non_nullable
              as bool,
      milliSecondsFromEpoch: milliSecondsFromEpoch == freezed
          ? _value.milliSecondsFromEpoch
          : milliSecondsFromEpoch // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_LogWithDateCopyWith<$Res>
    implements $LogWithDateCopyWith<$Res> {
  factory _$$_LogWithDateCopyWith(
          _$_LogWithDate value, $Res Function(_$_LogWithDate) then) =
      __$$_LogWithDateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      int categoryId,
      String details,
      double value,
      bool isExpense,
      int milliSecondsFromEpoch});
}

/// @nodoc
class __$$_LogWithDateCopyWithImpl<$Res> extends _$LogWithDateCopyWithImpl<$Res>
    implements _$$_LogWithDateCopyWith<$Res> {
  __$$_LogWithDateCopyWithImpl(
      _$_LogWithDate _value, $Res Function(_$_LogWithDate) _then)
      : super(_value, (v) => _then(v as _$_LogWithDate));

  @override
  _$_LogWithDate get _value => super._value as _$_LogWithDate;

  @override
  $Res call({
    Object? id = freezed,
    Object? categoryId = freezed,
    Object? details = freezed,
    Object? value = freezed,
    Object? isExpense = freezed,
    Object? milliSecondsFromEpoch = freezed,
  }) {
    return _then(_$_LogWithDate(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      isExpense: isExpense == freezed
          ? _value.isExpense
          : isExpense // ignore: cast_nullable_to_non_nullable
              as bool,
      milliSecondsFromEpoch: milliSecondsFromEpoch == freezed
          ? _value.milliSecondsFromEpoch
          : milliSecondsFromEpoch // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LogWithDate extends _LogWithDate {
  const _$_LogWithDate(
      {this.id = -1,
      this.categoryId = -1,
      required this.details,
      required this.value,
      required this.isExpense,
      required this.milliSecondsFromEpoch})
      : super._();

  factory _$_LogWithDate.fromJson(Map<String, dynamic> json) =>
      _$$_LogWithDateFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int categoryId;
  @override
  final String details;
  @override
  final double value;
  @override
  final bool isExpense;
  @override
  final int milliSecondsFromEpoch;

  @override
  String toString() {
    return 'LogWithDate(id: $id, categoryId: $categoryId, details: $details, value: $value, isExpense: $isExpense, milliSecondsFromEpoch: $milliSecondsFromEpoch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LogWithDate &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.categoryId, categoryId) &&
            const DeepCollectionEquality().equals(other.details, details) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.isExpense, isExpense) &&
            const DeepCollectionEquality()
                .equals(other.milliSecondsFromEpoch, milliSecondsFromEpoch));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(categoryId),
      const DeepCollectionEquality().hash(details),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(isExpense),
      const DeepCollectionEquality().hash(milliSecondsFromEpoch));

  @JsonKey(ignore: true)
  @override
  _$$_LogWithDateCopyWith<_$_LogWithDate> get copyWith =>
      __$$_LogWithDateCopyWithImpl<_$_LogWithDate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LogWithDateToJson(this);
  }
}

abstract class _LogWithDate extends LogWithDate {
  const factory _LogWithDate(
      {final int id,
      final int categoryId,
      required final String details,
      required final double value,
      required final bool isExpense,
      required final int milliSecondsFromEpoch}) = _$_LogWithDate;
  const _LogWithDate._() : super._();

  factory _LogWithDate.fromJson(Map<String, dynamic> json) =
      _$_LogWithDate.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  int get categoryId => throw _privateConstructorUsedError;
  @override
  String get details => throw _privateConstructorUsedError;
  @override
  double get value => throw _privateConstructorUsedError;
  @override
  bool get isExpense => throw _privateConstructorUsedError;
  @override
  int get milliSecondsFromEpoch => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LogWithDateCopyWith<_$_LogWithDate> get copyWith =>
      throw _privateConstructorUsedError;
}
