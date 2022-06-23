import 'package:budgetbuddy/core/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast_io.dart';
import 'package:path/path.dart';

class AppProviderScope extends StatelessWidget {
  const AppProviderScope({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ProviderScope(child: child);
  }
}

Future<Override> initializeCategoriesDatabase() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appPath = await getApplicationDocumentsDirectory();
  appPath.createSync(recursive: true);
  final categoriesDBPath = join(appPath.path, 'categories.db');
  final categoriesDatabase = await databaseFactoryIo.openDatabase(categoriesDBPath);
  return categoriesDatabaseProvider.overrideWithValue(categoriesDatabase);
}

Future<Override> initializeLogsDatabase() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appPath = await getApplicationDocumentsDirectory();
  appPath.createSync(recursive: true);
  final logsDBPath = join(appPath.path, 'logs.db');
  final logsDatabase = await databaseFactoryIo.openDatabase(logsDBPath);
  return logsDatabaseProvider.overrideWithValue(logsDatabase);
}
