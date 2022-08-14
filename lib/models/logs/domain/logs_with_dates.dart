import 'package:freezed_annotation/freezed_annotation.dart';

part 'logs_with_dates.freezed.dart';
part 'logs_with_dates.g.dart';
@freezed
class LogWithDate with _$LogWithDate {
  const LogWithDate._();
  const factory LogWithDate({
    @Default(-1) int id,
    @Default(-1) int categoryId,
    required String details,
    required double value,
    required bool isExpense,
    required int milliSecondsFromEpoch,
  }) = _LogWithDate;
  
  factory LogWithDate.fromJson(Map<String, dynamic> json) => _$LogWithDateFromJson(json);
}
