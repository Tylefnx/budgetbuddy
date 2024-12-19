import 'package:auto_route/auto_route.dart';
import 'package:budgetbuddy/core/presentation/app_textfield.dart';
import 'package:budgetbuddy/models/categories/domain/category.dart';
import 'package:budgetbuddy/models/logs/domain/logs_with_dates.dart';
import 'package:budgetbuddy/models/logs/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CreateLogDialog extends HookWidget {
  const CreateLogDialog({
    super.key,
    required this.category,
    required this.isExpenseMode,
  });

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
    super.key,
    required this.amount,
    required this.category,
    required this.option,
    required this.isExpenseMode,
  });

  final String amount;
  final Category category;
  final bool isExpenseMode;
  final int option;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.white24),
      onPressed: () {
        if (double.tryParse(amount) == null) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Invalid Amount'),
            ),
          );
        } else if (option == 0) {
          List<int> list = category.logs.toList();
          final log = LogWithDate(
            categoryId: category.id,
            details: isExpenseMode
                ? 'Spent: ${category.categoryName}'
                : 'Earned: ${category.categoryName}',
            isExpense: isExpenseMode,
            value: double.parse(amount),
            milliSecondsFromEpoch: DateTime.now().millisecondsSinceEpoch,
          );

          ref.read(logNotifierProvider.notifier).createLog(log, category);
          list.add(log.id);
          AutoRouter.of(context).maybePop();
        } else if (option == 1) {
          final log = LogWithDate(
            categoryId: category.id,
            details: 'Updated: ${category.categoryName}',
            isExpense: isExpenseMode,
            value: double.parse(amount),
            milliSecondsFromEpoch: DateTime.now().millisecondsSinceEpoch,
          );

          ref.read(logNotifierProvider.notifier).createLog(log, category);
          ref
              .read(logNotifierProvider.notifier)
              .deleteLogsByDetails(amount, category);
          AutoRouter.of(context).maybePop();
        }
      },
      child: const Text('Add'),
    );
  }
}
