import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sembast/sembast.dart';

final logsDatabaseProvider =
    Provider<Database>((_) => throw Exception('Database not initialized'));

final categoriesDatabaseProvider =
    Provider<Database>((_) => throw Exception('Database not initialized'));
