import 'package:budgetbuddy/models/categories/application/categories_notifier.dart';
import 'package:budgetbuddy/models/categories/domain/category.dart';
import 'package:budgetbuddy/models/categories/domain/category_failure.dart';
import 'package:budgetbuddy/models/logs/domain/logs_with_dates.dart';
import 'package:sembast/sembast.dart';

class LogsServices {
  final Database logDatabase;
  final CategoriesStateNotifier categoriesStateNotifier;
  late final StoreRef<int, Map<String, dynamic>> _logStore;
  LogsServices({
    required this.logDatabase,
    required this.categoriesStateNotifier,
  }) {
    _logStore = intMapStoreFactory.store('log_store');
  }

  Stream<List<LogWithDate>> fetchLogs() {
    return _logStore.query().onSnapshots(logDatabase).map(
          (snapshot) => snapshot
              .map(
                (log) => LogWithDate.fromJson(log.value).copyWith(id: log.key),
              )
              .toList(growable: false),
        );
  }

  Future<int> createLog(LogWithDate log, Category category) async {
    var logList = category.logs.toList();
    final logID = await _logStore.add(
      logDatabase,
      log.toJson(),
    );
    logList.add(logID);
    categoriesStateNotifier.updateCategory(
      Category(
        categoryName: category.categoryName,
        initialValue: category.initialValue,
        codePoint: category.codePoint,
        isExpense: category.isExpense,
        logs: logList,
      ),
    );
    return logID;
  }

  Future<void> deleteLog(int id, Category category) async {
    _logStore.record(id).delete(logDatabase);
    var logList = category.logs.toList();
    logList.remove(id);
    categoriesStateNotifier.updateCategory(
      Category(
        categoryName: category.categoryName,
        initialValue: category.initialValue,
        codePoint: category.codePoint,
        isExpense: category.isExpense,
        logs: logList,
      ),
    );
  }

  Future<void> updateLog(LogWithDate log) =>
      _logStore.record(log.id).update(logDatabase, log.toJson());
}
