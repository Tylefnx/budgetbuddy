import 'package:budgetbuddy/core/shared/providers.dart';
import 'package:budgetbuddy/models/categories/application/categories_notifier.dart';
import 'package:budgetbuddy/models/categories/infrastructure/categories_repository.dart';
import 'package:budgetbuddy/models/categories/infrastructure/categories_services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final serviceProvider = Provider(
  (ref) => CategoriesServices(
    categoriesDatabase: ref.watch(categoriesDatabaseProvider),
  ),
);

final categoryRepoProvider = Provider(
  (ref) => CategoriesRepository(
    ref.watch(serviceProvider),
  ),
);

final categoryNotifierProvider =
    StateNotifierProvider<CategoriesStateNotifier, CategoriesState>(
  (ref) => CategoriesStateNotifier(
    ref.watch(serviceProvider),
    ref.watch(categoryRepoProvider),
  ),
);
