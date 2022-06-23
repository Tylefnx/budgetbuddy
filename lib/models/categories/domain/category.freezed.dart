// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  int get id => throw _privateConstructorUsedError;
  String get categoryName => throw _privateConstructorUsedError;
  double get initialValue => throw _privateConstructorUsedError;
  int get codePoint => throw _privateConstructorUsedError;
  bool get isExpense => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String categoryName,
      double initialValue,
      int codePoint,
      bool isExpense});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res> implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  final Category _value;
  // ignore: unused_field
  final $Res Function(Category) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? categoryName = freezed,
    Object? initialValue = freezed,
    Object? codePoint = freezed,
    Object? isExpense = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      initialValue: initialValue == freezed
          ? _value.initialValue
          : initialValue // ignore: cast_nullable_to_non_nullable
              as double,
      codePoint: codePoint == freezed
          ? _value.codePoint
          : codePoint // ignore: cast_nullable_to_non_nullable
              as int,
      isExpense: isExpense == freezed
          ? _value.isExpense
          : isExpense // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$$_CategoryCopyWith(
          _$_Category value, $Res Function(_$_Category) then) =
      __$$_CategoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String categoryName,
      double initialValue,
      int codePoint,
      bool isExpense});
}

/// @nodoc
class __$$_CategoryCopyWithImpl<$Res> extends _$CategoryCopyWithImpl<$Res>
    implements _$$_CategoryCopyWith<$Res> {
  __$$_CategoryCopyWithImpl(
      _$_Category _value, $Res Function(_$_Category) _then)
      : super(_value, (v) => _then(v as _$_Category));

  @override
  _$_Category get _value => super._value as _$_Category;

  @override
  $Res call({
    Object? id = freezed,
    Object? categoryName = freezed,
    Object? initialValue = freezed,
    Object? codePoint = freezed,
    Object? isExpense = freezed,
  }) {
    return _then(_$_Category(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      initialValue: initialValue == freezed
          ? _value.initialValue
          : initialValue // ignore: cast_nullable_to_non_nullable
              as double,
      codePoint: codePoint == freezed
          ? _value.codePoint
          : codePoint // ignore: cast_nullable_to_non_nullable
              as int,
      isExpense: isExpense == freezed
          ? _value.isExpense
          : isExpense // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Category extends _Category {
  const _$_Category(
      {this.id = -1,
      required this.categoryName,
      required this.initialValue,
      required this.codePoint,
      required this.isExpense})
      : super._();

  factory _$_Category.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  final String categoryName;
  @override
  final double initialValue;
  @override
  final int codePoint;
  @override
  final bool isExpense;

  @override
  String toString() {
    return 'Category(id: $id, categoryName: $categoryName, initialValue: $initialValue, codePoint: $codePoint, isExpense: $isExpense)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Category &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.categoryName, categoryName) &&
            const DeepCollectionEquality()
                .equals(other.initialValue, initialValue) &&
            const DeepCollectionEquality().equals(other.codePoint, codePoint) &&
            const DeepCollectionEquality().equals(other.isExpense, isExpense));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(categoryName),
      const DeepCollectionEquality().hash(initialValue),
      const DeepCollectionEquality().hash(codePoint),
      const DeepCollectionEquality().hash(isExpense));

  @JsonKey(ignore: true)
  @override
  _$$_CategoryCopyWith<_$_Category> get copyWith =>
      __$$_CategoryCopyWithImpl<_$_Category>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryToJson(this);
  }
}

abstract class _Category extends Category {
  const factory _Category(
      {final int id,
      required final String categoryName,
      required final double initialValue,
      required final int codePoint,
      required final bool isExpense}) = _$_Category;
  const _Category._() : super._();

  factory _Category.fromJson(Map<String, dynamic> json) = _$_Category.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get categoryName => throw _privateConstructorUsedError;
  @override
  double get initialValue => throw _privateConstructorUsedError;
  @override
  int get codePoint => throw _privateConstructorUsedError;
  @override
  bool get isExpense => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryCopyWith<_$_Category> get copyWith =>
      throw _privateConstructorUsedError;
}
