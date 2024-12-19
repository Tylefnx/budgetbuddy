// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logs_with_dates.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LogWithDateImpl _$$LogWithDateImplFromJson(Map<String, dynamic> json) =>
    _$LogWithDateImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      categoryId: (json['categoryId'] as num?)?.toInt() ?? -1,
      details: json['details'] as String,
      value: (json['value'] as num).toDouble(),
      isExpense: json['isExpense'] as bool,
      milliSecondsFromEpoch: (json['milliSecondsFromEpoch'] as num).toInt(),
    );

Map<String, dynamic> _$$LogWithDateImplToJson(_$LogWithDateImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryId': instance.categoryId,
      'details': instance.details,
      'value': instance.value,
      'isExpense': instance.isExpense,
      'milliSecondsFromEpoch': instance.milliSecondsFromEpoch,
    };
