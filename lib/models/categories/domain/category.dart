import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart';
@freezed
class Category with _$Category {
  const Category._();
  const factory Category({
    @Default(-1) int id,
    required String categoryName,
    required double initialValue,
    required int codePoint,
    required bool isExpense,
  }) = _Category;
  
  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}
