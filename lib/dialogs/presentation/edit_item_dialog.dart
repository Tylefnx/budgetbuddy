import 'package:auto_route/auto_route.dart';
import 'package:budgetbuddy/core/presentation/app_dialog.dart';
import 'package:budgetbuddy/core/presentation/app_textfield.dart';
import 'package:budgetbuddy/dialogs/presentation/icon_picker.dart';
import 'package:budgetbuddy/models/categories/domain/category.dart';
import 'package:budgetbuddy/models/categories/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EditCategoryDialog extends HookWidget {
  const EditCategoryDialog({
    Key? key,
    required this.category,
    required this.isExpenseMode,
  }) : super(key: key);

  final Category category;
  final bool isExpenseMode;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final icon = useState(
      IconData(
        category.codePoint,
        fontFamily: 'MaterialIcons',
      ),
    );
    final label = useState(category.categoryName);
    final controller = useTextEditingController(text: label.value);

    useEffect(
      () {
        controller.addListener(() {
          label.value = controller.value.text;
        });
        return null;
      },
      [controller],
    );
    return AppDialog(
      isLong: false,
      spaceAround: true,
      children: [
        const Text(
          'Edit Category',
          style: TextStyle(fontSize: 25),
          textAlign: TextAlign.center,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
          id: category.id,
          amount: category.initialValue.toString(),
          iconCode: icon.value.codePoint,
          isExpenseMode: isExpenseMode,
        ),
      ],
    );
  }
}

class SubmitButton extends ConsumerWidget {
  const SubmitButton({
    Key? key,
    required this.name,
    required this.id,
    required this.amount,
    required this.iconCode,
    required this.isExpenseMode,
  }) : super(key: key);

  final String name;
  final String amount;
  final int iconCode;
  final int id;
  final bool isExpenseMode;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 150.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.white24),
        onPressed: () {
          if (double.tryParse(amount) == null) {
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text('Invalid Amount')));
          } else {
            ref.read(categoryNotifierProvider.notifier).updateCategory(
                  Category(
                    categoryName: name,
                    initialValue: double.parse(amount),
                    codePoint: iconCode,
                    id: id,
                    isExpense: isExpenseMode,
                  ),
                );
            AutoRouter.of(context).pop();
          }
        },
        child: const Text('Edit Category'),
      ),
    );
  }
}
