import 'package:budgetbuddy/models/logs/domain/logs_with_dates.dart';
import 'package:sembast/sembast.dart';

class LogsServices {
  final Database logDatabase;
  late final StoreRef<int, Map<String, dynamic>> _logStore;
  LogsServices({required this.logDatabase}) {
    _logStore = intMapStoreFactory.store('categories_store');
  }

  Stream<List<LogWithDate>> fetchLogs() {
    return _logStore.query().onSnapshots(logDatabase).map(
          (snapshot) => snapshot
              .map(
                (log) => LogWithDate.fromJson(log.value)
                    .copyWith(id: log.key),
              )
              .toList(growable: false),
        );
  }

  Future<int> createLog(LogWithDate log) async => _logStore.add(
        logDatabase,
        log.toJson(),
      );

  Future<void> deleteLog(int id) => _logStore.record(id).delete(logDatabase);

  Future<void> updateLog(LogWithDate log) =>
      _logStore.record(log.id).update(logDatabase, log.toJson());
}
