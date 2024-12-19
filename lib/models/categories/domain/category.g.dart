// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      categoryName: json['categoryName'] as String,
      initialValue: (json['initialValue'] as num).toDouble(),
      codePoint: (json['codePoint'] as num).toInt(),
      isExpense: json['isExpense'] as bool,
      logs: (json['logs'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryName': instance.categoryName,
      'initialValue': instance.initialValue,
      'codePoint': instance.codePoint,
      'isExpense': instance.isExpense,
      'logs': instance.logs,
    };
