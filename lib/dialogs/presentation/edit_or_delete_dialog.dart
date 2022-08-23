import 'package:auto_route/auto_route.dart';
import 'package:budgetbuddy/core/presentation/app_dialog.dart';
import 'package:budgetbuddy/dialogs/presentation/edit_item_dialog.dart';
import 'package:budgetbuddy/models/categories/domain/category.dart';
import 'package:budgetbuddy/models/categories/shared/providers.dart';
import 'package:budgetbuddy/models/logs/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EditOrDeleteCategory extends ConsumerWidget {
  const EditOrDeleteCategory({
    Key? key,
    required this.isExpenseMode,
    required this.category,
  }) : super(key: key);

  final bool isExpenseMode;
  final Category category;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(categoryNotifierProvider.notifier);
    final logsNotifier = ref.read(logNotifierProvider.notifier);
    return AppDialog(
      isLong: false,
      spaceAround: false,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.white24),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => EditCategoryDialog(
                category: category,
                isExpenseMode: isExpenseMode,
              ),
            );
          },
          child: const Text('Edit Category'),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.white24),
          onPressed: () {
            for (final id in category.logs) {
              logsNotifier.deleteLogByID(id, category);
            }
            print(category.logs);
            notifier.deleteCategory(category);
            
            AutoRouter.of(context).pop();
          },
          child: const Text('Delete Category'),
        ),
      ],
    );
  }
}
