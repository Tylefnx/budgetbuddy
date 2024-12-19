// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logs_with_dates.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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

  /// Serializes this LogWithDate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LogWithDate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LogWithDateCopyWith<LogWithDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogWithDateCopyWith<$Res> {
  factory $LogWithDateCopyWith(
          LogWithDate value, $Res Function(LogWithDate) then) =
      _$LogWithDateCopyWithImpl<$Res, LogWithDate>;
  @useResult
  $Res call(
      {int id,
      int categoryId,
      String details,
      double value,
      bool isExpense,
      int milliSecondsFromEpoch});
}

/// @nodoc
class _$LogWithDateCopyWithImpl<$Res, $Val extends LogWithDate>
    implements $LogWithDateCopyWith<$Res> {
  _$LogWithDateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LogWithDate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryId = null,
    Object? details = null,
    Object? value = null,
    Object? isExpense = null,
    Object? milliSecondsFromEpoch = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      isExpense: null == isExpense
          ? _value.isExpense
          : isExpense // ignore: cast_nullable_to_non_nullable
              as bool,
      milliSecondsFromEpoch: null == milliSecondsFromEpoch
          ? _value.milliSecondsFromEpoch
          : milliSecondsFromEpoch // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LogWithDateImplCopyWith<$Res>
    implements $LogWithDateCopyWith<$Res> {
  factory _$$LogWithDateImplCopyWith(
          _$LogWithDateImpl value, $Res Function(_$LogWithDateImpl) then) =
      __$$LogWithDateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int categoryId,
      String details,
      double value,
      bool isExpense,
      int milliSecondsFromEpoch});
}

/// @nodoc
class __$$LogWithDateImplCopyWithImpl<$Res>
    extends _$LogWithDateCopyWithImpl<$Res, _$LogWithDateImpl>
    implements _$$LogWithDateImplCopyWith<$Res> {
  __$$LogWithDateImplCopyWithImpl(
      _$LogWithDateImpl _value, $Res Function(_$LogWithDateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LogWithDate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryId = null,
    Object? details = null,
    Object? value = null,
    Object? isExpense = null,
    Object? milliSecondsFromEpoch = null,
  }) {
    return _then(_$LogWithDateImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      isExpense: null == isExpense
          ? _value.isExpense
          : isExpense // ignore: cast_nullable_to_non_nullable
              as bool,
      milliSecondsFromEpoch: null == milliSecondsFromEpoch
          ? _value.milliSecondsFromEpoch
          : milliSecondsFromEpoch // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LogWithDateImpl extends _LogWithDate {
  const _$LogWithDateImpl(
      {this.id = -1,
      this.categoryId = -1,
      required this.details,
      required this.value,
      required this.isExpense,
      required this.milliSecondsFromEpoch})
      : super._();

  factory _$LogWithDateImpl.fromJson(Map<String, dynamic> json) =>
      _$$LogWithDateImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogWithDateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.isExpense, isExpense) ||
                other.isExpense == isExpense) &&
            (identical(other.milliSecondsFromEpoch, milliSecondsFromEpoch) ||
                other.milliSecondsFromEpoch == milliSecondsFromEpoch));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, categoryId, details, value,
      isExpense, milliSecondsFromEpoch);

  /// Create a copy of LogWithDate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LogWithDateImplCopyWith<_$LogWithDateImpl> get copyWith =>
      __$$LogWithDateImplCopyWithImpl<_$LogWithDateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LogWithDateImplToJson(
      this,
    );
  }
}

abstract class _LogWithDate extends LogWithDate {
  const factory _LogWithDate(
      {final int id,
      final int categoryId,
      required final String details,
      required final double value,
      required final bool isExpense,
      required final int milliSecondsFromEpoch}) = _$LogWithDateImpl;
  const _LogWithDate._() : super._();

  factory _LogWithDate.fromJson(Map<String, dynamic> json) =
      _$LogWithDateImpl.fromJson;

  @override
  int get id;
  @override
  int get categoryId;
  @override
  String get details;
  @override
  double get value;
  @override
  bool get isExpense;
  @override
  int get milliSecondsFromEpoch;

  /// Create a copy of LogWithDate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LogWithDateImplCopyWith<_$LogWithDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
