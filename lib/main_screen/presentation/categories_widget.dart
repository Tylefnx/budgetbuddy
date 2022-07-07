import 'package:budgetbuddy/dialogs/presentation/create_item_dialog.dart';
import 'package:budgetbuddy/dialogs/presentation/edit_or_delete_dialog.dart';
import 'package:budgetbuddy/dialogs/presentation/show_logs.dart';
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
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
            SelectDateTypeDropdownField(
              onChanged: (_) {},
            ),
            CircleList(
              childrenPadding: 10,
              centerWidget: TextButton(
                style: TextButton.styleFrom(
                    primary: Colors.white70,
                    shape: const CircleBorder(),
                    minimumSize: Size.fromRadius(size.width / 4)),
                onPressed: widget.onPressed,
                onLongPress: () => showDialog(
                  context: context,
                  builder: (context) => ShowLogsDialog(
                    isExpenseMode: widget.isExpenseMode,
                  ),
                ),
                child: Text(
                  '${widget.isExpenseMode ? 'Expenses' : 'Incomes'}\n\$$total',
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
            const SizedBox(height: 30),
            Text(
              budget.isNegative
                  ? 'Balance: -\$${budget.abs()}'
                  : 'Balance: \$${budget.abs()}',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  color: budget.isNegative ? Colors.red : Colors.green),
            ),
          ];
        },
      ),
    );
  }
}


class SelectDateTypeDropdownField extends StatelessWidget {
  const SelectDateTypeDropdownField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  final void Function(int?) onChanged;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.arrow_back_ios),
      title: DropdownButtonFormField<int>(
        decoration: const InputDecoration(
          border: InputBorder.none,
        ),
        value: 1,
        items: const [
          DropdownMenuItem(
            value: 0,
            child: Text('Daily'),
          ),
          DropdownMenuItem(
            value: 1,
            child: Text('Monthly'),
          ),
          DropdownMenuItem(
            value: 2,
            child: Text('Yearly'),
          ),
        ],
        onChanged: (_) {},
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }
}
