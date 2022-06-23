import 'package:budgetbuddy/models/logs/domain/logs_with_dates.dart';
import 'package:budgetbuddy/models/logs/infrastructure/logs_repository.dart';
import 'package:budgetbuddy/models/logs/infrastructure/logs_services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'logs_notifier.freezed.dart';

@freezed
class LogState with _$LogState {
  const LogState._();
  const factory LogState.initial() = _Initial;
  const factory LogState.reading() = _Reading;
  const factory LogState.done(List<LogWithDate> logs) = _Done;
  const factory LogState.writing(LogWithDate log) = _Writing;
  const factory LogState.failed() = _Failed;
}

class LogStateNotifier extends StateNotifier<LogState> {
  final LogsServices services;
  final LogsRepository repository;
  LogStateNotifier(this.services, this.repository)
      : super(const LogState.initial());

  Future<void> fetchLogs() async {
    final failureOrExpenses = await repository.fetchLogs();

    state = failureOrExpenses.fold(
      (l) => const LogState.failed(),
      (r) => LogState.done(r),
    );
  }

  Future<void> createLog(LogWithDate log) async {
    final failureOrUnit = await repository.createLog(log);

    state = LogState.writing(log);

    state = failureOrUnit.fold(
      (l) => const LogState.failed(),
      (r) => const LogState.initial(),
    );
    fetchLogs();
  }

  Future<void> updateLog(LogWithDate log) async {
    final failureOrUnit = await repository.updateLog(log);

    state = LogState.writing(log);

    state = failureOrUnit.fold(
      (l) => const LogState.failed(),
      (r) => const LogState.initial(),
    );
    fetchLogs();
  }

  Future<void> deleteLog(LogWithDate log) async {
    final failureOrUnit = await repository.deleteLog(log);

    state = LogState.writing(log);

    state = failureOrUnit.fold(
      (l) => const LogState.failed(),
      (r) => const LogState.initial(),
    );
    fetchLogs();
  }
}
