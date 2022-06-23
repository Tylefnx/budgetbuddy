import 'package:budgetbuddy/models/categories/domain/category.dart';
import 'package:sembast/sembast.dart';

class CategoriesServices {
  final Database categoriesDatabase;
  late final StoreRef<int, Map<String, dynamic>> _categoriesStore;
  CategoriesServices(
      {required this.categoriesDatabase}) {
    _categoriesStore = intMapStoreFactory.store('categories_store');
  }

  Stream<List<Category>> fetchCategories() {
    return _categoriesStore.query().onSnapshots(categoriesDatabase).map(
          (snapshot) => snapshot
              .map(
                (category) =>
                    Category.fromJson(category.value).copyWith(id: category.key),
              )
              .toList(growable: false),
    );
  }

  Future<int> insertCategory(Category category) async => _categoriesStore.add(
        categoriesDatabase,
        category.toJson(),
      );

  Future deleteCategory(int id) => _categoriesStore.record(id).delete(categoriesDatabase);

  Future<void> updateCategory(Category category) => _categoriesStore.record(category.id).update(categoriesDatabase, category.toJson());
}
