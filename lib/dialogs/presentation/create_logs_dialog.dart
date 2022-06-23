import 'package:auto_route/auto_route.dart';
import 'package:budgetbuddy/core/presentation/app_textfield.dart';
import 'package:budgetbuddy/models/categories/domain/category.dart';
import 'package:budgetbuddy/models/categories/shared/providers.dart';
import 'package:budgetbuddy/models/logs/domain/logs_with_dates.dart';
import 'package:budgetbuddy/models/logs/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CreateLogDialog extends HookWidget {
  const CreateLogDialog({
    Key? key,
    required this.category,
    required this.isExpenseMode,
  }) : super(key: key);

  final Category category;
  final bool isExpenseMode;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final amount = useState(category.initialValue.toString());
    final controller = useTextEditingController();
    final option = useState(0);

    useEffect(
      () {
        controller.addListener(() {
          amount.value = controller.value.text;
        });
        return null;
      },
      [controller],
    );
    return Padding(
      padding: EdgeInsets.symmetric(vertical: size.height / 3),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Add Amount', style: TextStyle(fontSize: 25)),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: AppTextFormField(
                    controller: controller,
                    isNumeric: true,
                  ),
                ),
                Expanded(
                  child: DropdownButtonFormField<int>(
                    value: 0,
                    decoration: InputDecoration(
                      isDense: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)),
                    ),
                    hint: const Text(
                      'Option',
                      overflow: TextOverflow.fade,
                    ),
                    items: const [
                      DropdownMenuItem(
                        value: 0,
                        child: Text('Add'),
                      ),
                      DropdownMenuItem(
                        value: 1,
                        child: Text('Change'),
                      ),
                    ],
                    onChanged: (_) {
                      option.value = _ ?? 0;
                    },
                  ),
                ),
              ],
            ),
            SubmitButton(
              category: category,
              option: option.value,
              amount: amount.value,
              isExpenseMode: isExpenseMode,
            ),
          ],
        ),
      ),
    );
  }
}

class SubmitButton extends ConsumerWidget {
  const SubmitButton({
    Key? key,
    required this.amount,
    required this.category,
    required this.option,
    required this.isExpenseMode,
  }) : super(key: key);

  final String amount;
  final Category category;
  final bool isExpenseMode;
  final int option;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(primary: Colors.white24),
      onPressed: () {
        if (double.tryParse(amount) == null) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Invalid Amount'),
            ),
          );
        } else if (option == 0) {
          ref.read(categoryNotifierProvider.notifier).updateCategory(
                Category(
                  id: category.id,
                  categoryName: category.categoryName,
                  initialValue: category.initialValue + double.parse(amount),
                  codePoint: category.codePoint,
                  isExpense: category.isExpense,
                ),
              );
          ref.read(logNotifierProvider.notifier).createLog(
                LogWithDate(
                  details: isExpenseMode ? 'Spent: ${category.categoryName}' : 'Earned: ${category.categoryName}',
                  isExpense: isExpenseMode,
                  categoryId: category.id,
                  value: double.parse(amount),
                  milliSecondsFromEpoch: DateTime.now().millisecondsSinceEpoch,
                ),
              );
          AutoRouter.of(context).pop();
        } else if (option == 1) {
          ref.read(categoryNotifierProvider.notifier).updateCategory(
                Category(
                  id: category.id,
                  categoryName: category.categoryName,
                  initialValue: double.parse(amount),
                  codePoint: category.codePoint,
                  isExpense: category.isExpense,
                ),
              );
          ref.read(logNotifierProvider.notifier).createLog(
                LogWithDate(
                  details: 'Updated: ${category.categoryName} => ${category.initialValue} to $amount',
                  isExpense: isExpenseMode,
                  categoryId: category.id,
                  value: double.parse(amount),
                  milliSecondsFromEpoch: DateTime.now().millisecondsSinceEpoch,
                ),
              );
          AutoRouter.of(context).pop();
        }
      },
      child: const Text('Add'),
    );
  }
}
