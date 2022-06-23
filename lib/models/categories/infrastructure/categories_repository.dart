import 'dart:io';

import 'package:budgetbuddy/models/categories/domain/category.dart';
import 'package:budgetbuddy/models/categories/domain/category_failure.dart';
import 'package:budgetbuddy/models/categories/infrastructure/categories_services.dart';
import 'package:dartz/dartz.dart';

class CategoriesRepository {
  final CategoriesServices services;
  CategoriesRepository(this.services);

  Future<Either<CategoryFailure, List<Category>>> fetchCategories() async {
    try {
      final failureOrexpensesList = services.fetchCategories();
      return right(await failureOrexpensesList.first);
    } on FileSystemException {
      return left(const CategoryFailure.permission());
    }
  }

  Future<Either<CategoryFailure, Unit>> createCategory(
      Category category) async {
    try {
      await services.insertCategory(category);
      return right(unit);
    } on FileSystemException {
      return left(const CategoryFailure.permission());
    }
  }

  Future<Either<CategoryFailure, Unit>> updateCategory(
      Category category) async {
    try {
      await services.updateCategory(category);
      return right(unit);
    } on FileSystemException {
      return left(const CategoryFailure.permission());
    }
  }

  Future<Either<CategoryFailure, Unit>> deleteCategory(
      Category category) async {
    try {
      await services.deleteCategory(category.id);
      return right(unit);
    } on FileSystemException {
      return left(const CategoryFailure.permission());
    }
  }
}
