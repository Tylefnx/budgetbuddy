import 'package:freezed_annotation/freezed_annotation.dart';

part 'logs_failure.freezed.dart';

@freezed
class LogsFailure with _$LogsFailure {
  const LogsFailure._();
  const factory LogsFailure.permission() = _Permission;
  const factory LogsFailure.notFound() = _NotFound;
}
