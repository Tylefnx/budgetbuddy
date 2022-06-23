import 'package:budgetbuddy/dialogs/presentation/create_item_dialog.dart';
import 'package:budgetbuddy/dialogs/presentation/edit_or_delete_dialog.dart';
import 'package:budgetbuddy/main_screen/menu_item_icon.dart';
import 'package:budgetbuddy/models/categories/shared/providers.dart';
import 'package:circle_list/circle_list.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CategoriesWidget extends ConsumerStatefulWidget {
  const CategoriesWidget({
    Key? key,
    required this.isExpenseMode,
    required this.onPressed,
  }) : super(key: key);

  final void Function()? onPressed;
  final bool isExpenseMode;
  @override
  ConsumerState<CategoriesWidget> createState() => _MainPageBodyState();
}

class _MainPageBodyState extends ConsumerState<CategoriesWidget> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(categoryNotifierProvider.notifier).fetchExpenses();
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final state = ref.watch(categoryNotifierProvider);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: state.maybeMap(
          orElse: () => [const CircularProgressIndicator()],
          done: (_) {
            var total = 0.0;
            var budget = 0.0;
            for (final category in _.category) {
              if (category.isExpense == widget.isExpenseMode) {
                total += category.initialValue;
              }
            }

            for (final category in _.category) {
              if (category.isExpense == true) {
                budget -= category.initialValue;
              } else {
                budget += category.initialValue;
              }
            }
            return [
              CircleList(
                centerWidget: TextButton(
                  style: TextButton.styleFrom(
                      primary: Colors.white70,
                      shape: const CircleBorder(),
                      minimumSize: Size.fromRadius(size.width / 4)),
                  onPressed: widget.onPressed,
                  child: Text(
                    '${widget.isExpenseMode ? 'Expenses' : 'Incomes'}\n\$$total\n\nTotal\n${budget.isNegative ? '-\$${budget.abs()}' : '\$${budget.abs()}'}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 25),
                  ),
                ),
                origin: Offset.zero,
                innerCircleColor: Colors.black12,
                outerCircleColor: Colors.black26,
                children: [
                  if (_.category.isNotEmpty)
                    for (final category in _.category)
                      if (category.isExpense == widget.isExpenseMode)
                        MenuItemIcon(
                          category: category,
                          onLongPress: () => showDialog(
                            context: context,
                            builder: (context) => EditOrDeleteCategory(
                              isExpenseMode: widget.isExpenseMode,
                              category: category,
                            ),
                          ),
                          isExpenseMode: widget.isExpenseMode,
                        ),
                  IconButton(
                    iconSize: size.width / 10,
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => CreateCategoryDialog(
                          isExpenseMode: widget.isExpenseMode,
                        ),
                      );
                    },
                    icon: const Icon(Icons.add_circle_outline_sharp),
                  ),
                ],
              ),
            ];
          },
        ),
      ),
    );
  }
}
