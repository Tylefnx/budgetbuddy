import 'package:budgetbuddy/dialogs/presentation/create_item_dialog.dart';
import 'package:budgetbuddy/dialogs/presentation/edit_or_delete_dialog.dart';
import 'package:budgetbuddy/main_screen/menu_item_icon.dart';
import 'package:budgetbuddy/models/categories/shared/providers.dart';
import 'package:budgetbuddy/models/logs/shared/providers.dart';
import 'package:circle_list/circle_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CategoriesWidget extends HookConsumerWidget {
  final void Function()? onPressed;
  final bool isExpenseMode;
  const CategoriesWidget({
    super.key,
    this.onPressed,
    required this.isExpenseMode,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(
      () {
        ref.read(categoryNotifierProvider.notifier).fetchExpenses();
        ref.read(logNotifierProvider.notifier).fetchLogs();
        return null;
      },
      [],
    );
    final size = MediaQuery.of(context).size;
    final categoryState = ref.watch(categoryNotifierProvider);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: categoryState.maybeMap(
        orElse: () => [const CircularProgressIndicator()],
        done: (_) {
          final budget = useState(0.0);
          final total = useState(0.0);
          for (final category in _.category) {
            if (category.isExpense == isExpenseMode) {
              total.value += category.initialValue;
            }
          }
          for (final category in _.category) {
            if (category.isExpense == true) {
              budget.value -= category.initialValue;
            } else {
              budget.value += category.initialValue;
            }
          }
          return [
            CircleList(
              childrenPadding: 10,
              centerWidget: TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white70,
                    shape: const CircleBorder(),
                    minimumSize: Size.fromRadius(size.width / 4)),
                onPressed: onPressed,
                child: Text(
                  '${isExpenseMode ? 'Expenses' : 'Incomes'}\n\$${total.value}',
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
                    if (category.isExpense == isExpenseMode)
                      MenuItemIcon(
                        category: category,
                        onLongPress: () => showDialog(
                          context: context,
                          builder: (context) => EditOrDeleteCategory(
                            isExpenseMode: isExpenseMode,
                            category: category,
                          ),
                        ),
                        isExpenseMode: isExpenseMode,
                      ),
                IconButton(
                  iconSize: size.width / 10,
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => CreateCategoryDialog(
                        isExpenseMode: isExpenseMode,
                      ),
                    );
                  },
                  icon: const Icon(Icons.add_circle_outline_sharp),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              budget.value.isNegative
                  ? 'Balance: -\$${budget.value.abs()}'
                  : 'Balance: \$${budget.value.abs()}',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  color: budget.value.isNegative ? Colors.red : Colors.green),
            ),
          ];
        },
      ),
    );
  }
}

class SelectDateTypeDropdownField extends StatelessWidget {
  const SelectDateTypeDropdownField({
    super.key,
    required this.onChanged,
  });

  final void Function(int?) onChanged;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.arrow_back_ios),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.arrow_forward_ios),
      ),
      title: Center(
        child: SizedBox(
          width: 100,
          child: DropdownButtonFormField<int>(
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
            value: 1,
            items: const [
              DropdownMenuItem(
                value: 0,
                child: Text(
                  'Daily',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              DropdownMenuItem(
                value: 1,
                child: Text(
                  'Monthly',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              DropdownMenuItem(
                value: 2,
                child: Text(
                  'Yearly',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
            onChanged: onChanged,
          ),
        ),
      ),
    );
  }
}
