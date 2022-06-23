// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'categories_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() reading,
    required TResult Function(List<Category> category) done,
    required TResult Function(Category category) writing,
    required TResult Function() failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reading,
    TResult Function(List<Category> category)? done,
    TResult Function(Category category)? writing,
    TResult Function()? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reading,
    TResult Function(List<Category> category)? done,
    TResult Function(Category category)? writing,
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
abstract class $CategoriesStateCopyWith<$Res> {
  factory $CategoriesStateCopyWith(
          CategoriesState value, $Res Function(CategoriesState) then) =
      _$CategoriesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoriesStateCopyWithImpl<$Res>
    implements $CategoriesStateCopyWith<$Res> {
  _$CategoriesStateCopyWithImpl(this._value, this._then);

  final CategoriesState _value;
  // ignore: unused_field
  final $Res Function(CategoriesState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$CategoriesStateCopyWithImpl<$Res>
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
    return 'CategoriesState.initial()';
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
    required TResult Function(List<Category> category) done,
    required TResult Function(Category category) writing,
    required TResult Function() failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reading,
    TResult Function(List<Category> category)? done,
    TResult Function(Category category)? writing,
    TResult Function()? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reading,
    TResult Function(List<Category> category)? done,
    TResult Function(Category category)? writing,
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

abstract class _Initial extends CategoriesState {
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
class __$$_ReadingCopyWithImpl<$Res> extends _$CategoriesStateCopyWithImpl<$Res>
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
    return 'CategoriesState.reading()';
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
    required TResult Function(List<Category> category) done,
    required TResult Function(Category category) writing,
    required TResult Function() failed,
  }) {
    return reading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reading,
    TResult Function(List<Category> category)? done,
    TResult Function(Category category)? writing,
    TResult Function()? failed,
  }) {
    return reading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reading,
    TResult Function(List<Category> category)? done,
    TResult Function(Category category)? writing,
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

abstract class _Reading extends CategoriesState {
  const factory _Reading() = _$_Reading;
  const _Reading._() : super._();
}

/// @nodoc
abstract class _$$_DoneCopyWith<$Res> {
  factory _$$_DoneCopyWith(_$_Done value, $Res Function(_$_Done) then) =
      __$$_DoneCopyWithImpl<$Res>;
  $Res call({List<Category> category});
}

/// @nodoc
class __$$_DoneCopyWithImpl<$Res> extends _$CategoriesStateCopyWithImpl<$Res>
    implements _$$_DoneCopyWith<$Res> {
  __$$_DoneCopyWithImpl(_$_Done _value, $Res Function(_$_Done) _then)
      : super(_value, (v) => _then(v as _$_Done));

  @override
  _$_Done get _value => super._value as _$_Done;

  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_$_Done(
      category == freezed
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc

class _$_Done extends _Done {
  const _$_Done(final List<Category> category)
      : _category = category,
        super._();

  final List<Category> _category;
  @override
  List<Category> get category {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_category);
  }

  @override
  String toString() {
    return 'CategoriesState.done(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Done &&
            const DeepCollectionEquality().equals(other._category, _category));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_category));

  @JsonKey(ignore: true)
  @override
  _$$_DoneCopyWith<_$_Done> get copyWith =>
      __$$_DoneCopyWithImpl<_$_Done>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() reading,
    required TResult Function(List<Category> category) done,
    required TResult Function(Category category) writing,
    required TResult Function() failed,
  }) {
    return done(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reading,
    TResult Function(List<Category> category)? done,
    TResult Function(Category category)? writing,
    TResult Function()? failed,
  }) {
    return done?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reading,
    TResult Function(List<Category> category)? done,
    TResult Function(Category category)? writing,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(category);
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

abstract class _Done extends CategoriesState {
  const factory _Done(final List<Category> category) = _$_Done;
  const _Done._() : super._();

  List<Category> get category => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_DoneCopyWith<_$_Done> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WritingCopyWith<$Res> {
  factory _$$_WritingCopyWith(
          _$_Writing value, $Res Function(_$_Writing) then) =
      __$$_WritingCopyWithImpl<$Res>;
  $Res call({Category category});

  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$_WritingCopyWithImpl<$Res> extends _$CategoriesStateCopyWithImpl<$Res>
    implements _$$_WritingCopyWith<$Res> {
  __$$_WritingCopyWithImpl(_$_Writing _value, $Res Function(_$_Writing) _then)
      : super(_value, (v) => _then(v as _$_Writing));

  @override
  _$_Writing get _value => super._value as _$_Writing;

  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_$_Writing(
      category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
    ));
  }

  @override
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc

class _$_Writing extends _Writing {
  const _$_Writing(this.category) : super._();

  @override
  final Category category;

  @override
  String toString() {
    return 'CategoriesState.writing(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Writing &&
            const DeepCollectionEquality().equals(other.category, category));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(category));

  @JsonKey(ignore: true)
  @override
  _$$_WritingCopyWith<_$_Writing> get copyWith =>
      __$$_WritingCopyWithImpl<_$_Writing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() reading,
    required TResult Function(List<Category> category) done,
    required TResult Function(Category category) writing,
    required TResult Function() failed,
  }) {
    return writing(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reading,
    TResult Function(List<Category> category)? done,
    TResult Function(Category category)? writing,
    TResult Function()? failed,
  }) {
    return writing?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reading,
    TResult Function(List<Category> category)? done,
    TResult Function(Category category)? writing,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (writing != null) {
      return writing(category);
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

abstract class _Writing extends CategoriesState {
  const factory _Writing(final Category category) = _$_Writing;
  const _Writing._() : super._();

  Category get category => throw _privateConstructorUsedError;
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
class __$$_FailedCopyWithImpl<$Res> extends _$CategoriesStateCopyWithImpl<$Res>
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
    return 'CategoriesState.failed()';
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
    required TResult Function(List<Category> category) done,
    required TResult Function(Category category) writing,
    required TResult Function() failed,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reading,
    TResult Function(List<Category> category)? done,
    TResult Function(Category category)? writing,
    TResult Function()? failed,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reading,
    TResult Function(List<Category> category)? done,
    TResult Function(Category category)? writing,
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

abstract class _Failed extends CategoriesState {
  const factory _Failed() = _$_Failed;
  const _Failed._() : super._();
}
