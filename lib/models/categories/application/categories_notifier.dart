import 'package:budgetbuddy/models/categories/domain/category.dart';
import 'package:budgetbuddy/models/categories/infrastructure/categories_repository.dart';
import 'package:budgetbuddy/models/categories/infrastructure/categories_services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'categories_notifier.freezed.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const CategoriesState._();
  const factory CategoriesState.initial() = _Initial;
  const factory CategoriesState.reading() = _Reading;
  const factory CategoriesState.done(List<Category> category) = _Done;
  const factory CategoriesState.writing(Category category) = _Writing;
  const factory CategoriesState.failed() = _Failed;
}

class CategoriesStateNotifier extends StateNotifier<CategoriesState> {
  final CategoriesServices services;
  final CategoriesRepository repository;
  CategoriesStateNotifier(this.services, this.repository)
      : super(const CategoriesState.initial());

  Future<void> fetchExpenses() async {
    final failureOrExpenses = await repository.fetchCategories();

    state = failureOrExpenses.fold(
      (l) => const CategoriesState.failed(),
      (r) => CategoriesState.done(r),
    );
  }

  Future<void> insertExpenses(Category category) async {
    final failureOrUnit = await repository.createCategory(category);

    state = CategoriesState.writing(category);

    state = failureOrUnit.fold(
      (l) => const CategoriesState.failed(),
      (r) => const CategoriesState.initial(),
    );
    fetchExpenses();
  }

  Future<void> updateCategory(Category category) async {
    final failureOrUnit = await repository.updateCategory(category);

    state = CategoriesState.writing(category);

    state = failureOrUnit.fold(
      (l) => const CategoriesState.failed(),
      (r) => const CategoriesState.initial(),
    );
    fetchExpenses();
  }

  Future<void> deleteCategory(Category category) async {
    final failureOrUnit = await repository.deleteCategory(category);

    state = CategoriesState.writing(category);

    state = failureOrUnit.fold(
      (l) => const CategoriesState.failed(),
      (r) => const CategoriesState.initial(),
    );
    fetchExpenses();
  }
}
