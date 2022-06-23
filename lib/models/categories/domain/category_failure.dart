import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_failure.freezed.dart';

@freezed
class CategoryFailure with _$CategoryFailure {
  const CategoryFailure._();
  const factory CategoryFailure.permission() = _Permission;
  const factory CategoryFailure.notFound() = _NotFound;
}
