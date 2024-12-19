import 'package:auto_route/auto_route.dart';
import 'package:budgetbuddy/core/presentation/app_textfield.dart';
import 'package:budgetbuddy/dialogs/presentation/icon_picker.dart';
import 'package:budgetbuddy/models/categories/domain/category.dart';
import 'package:budgetbuddy/models/categories/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CreateCategoryDialog extends HookWidget {
  const CreateCategoryDialog({
    super.key,
    required this.isExpenseMode,
  });

  final bool isExpenseMode;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final icon = useState(Icons.person);
    final label = useState('');
    final controller = useTextEditingController();

    useEffect(
      () {
        controller.addListener(() {
          label.value = controller.value.text;
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
            const Text('Create a category', style: TextStyle(fontSize: 25)),
            const SizedBox(height: 10),
            Row(
              children: [
                const SizedBox(width: 10),
                CircleAvatar(
                  backgroundColor: Colors.white10,
                  foregroundColor: Colors.white,
                  radius: size.width / 15,
                  child: IconButton(
                    iconSize: size.width / 15,
                    icon: Icon(icon.value),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => IconPicker(
                          onIconSelected: (newIcon) => icon.value = newIcon,
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: AppTextFormField(
                    controller: controller,
                    isNumeric: false,
                  ),
                ),
              ],
            ),
            SubmitButton(
              name: label.value,
              iconCode: icon.value.codePoint,
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
    required this.name,
    required this.iconCode,
    required this.isExpenseMode,
  });

  final String name;
  final int iconCode;
  final bool isExpenseMode;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.white24),
      onPressed: () {
        ref.read(categoryNotifierProvider.notifier).insertExpenses(
              Category(
                codePoint: iconCode,
                categoryName: name,
                initialValue: 0,
                isExpense: isExpenseMode,
              ),
            );
        AutoRouter.of(context).maybePop();
      },
      child: const Text('Create Category'),
    );
  }
}
