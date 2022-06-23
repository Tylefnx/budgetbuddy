// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Category _$$_CategoryFromJson(Map<String, dynamic> json) => _$_Category(
      id: json['id'] as int? ?? -1,
      categoryName: json['categoryName'] as String,
      initialValue: (json['initialValue'] as num).toDouble(),
      codePoint: json['codePoint'] as int,
      isExpense: json['isExpense'] as bool,
    );

Map<String, dynamic> _$$_CategoryToJson(_$_Category instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryName': instance.categoryName,
      'initialValue': instance.initialValue,
      'codePoint': instance.codePoint,
      'isExpense': instance.isExpense,
    };
