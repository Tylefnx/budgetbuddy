// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logs_with_dates.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LogWithDate _$$_LogWithDateFromJson(Map<String, dynamic> json) =>
    _$_LogWithDate(
      id: json['id'] as int? ?? -1,
      categoryId: json['categoryId'] as int? ?? -1,
      details: json['details'] as String,
      value: (json['value'] as num).toDouble(),
      isExpense: json['isExpense'] as bool,
      milliSecondsFromEpoch: json['milliSecondsFromEpoch'] as int,
    );

Map<String, dynamic> _$$_LogWithDateToJson(_$_LogWithDate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryId': instance.categoryId,
      'details': instance.details,
      'value': instance.value,
      'isExpense': instance.isExpense,
      'milliSecondsFromEpoch': instance.milliSecondsFromEpoch,
    };
