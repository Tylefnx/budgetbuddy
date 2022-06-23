import 'package:budgetbuddy/core/shared/providers.dart';
import 'package:budgetbuddy/models/logs/application/logs_notifier.dart';
import 'package:budgetbuddy/models/logs/infrastructure/logs_repository.dart';
import 'package:budgetbuddy/models/logs/infrastructure/logs_services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final logServiceProvider = Provider(
  (ref) => LogsServices(
    logDatabase: ref.watch(logsDatabaseProvider),
  ),
);

final logRepoProvider = Provider(
  (ref) => LogsRepository(
    ref.watch(logServiceProvider),
  ),
);

final logNotifierProvider =
    StateNotifierProvider<LogStateNotifier, LogState>(
  (ref) => LogStateNotifier(
    ref.watch(logServiceProvider),
    ref.watch(logRepoProvider),
  ),
);
