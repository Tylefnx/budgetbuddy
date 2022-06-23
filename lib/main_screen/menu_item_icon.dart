import 'package:budgetbuddy/dialogs/presentation/create_logs_dialog.dart';
import 'package:budgetbuddy/models/categories/domain/category.dart';
import 'package:flutter/material.dart';

class MenuItemIcon extends StatelessWidget {
  const MenuItemIcon({
    Key? key,
    required this.category,
    required this.onLongPress,
    required this.isExpenseMode,
  }) : super(key: key);

  final bool isExpenseMode;
  final Category category;
  final void Function()? onLongPress;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => CreateLogDialog(
            category: category,
            isExpenseMode: isExpenseMode,
          ),
        );
      },
      onLongPress: onLongPress,
      borderRadius: BorderRadius.circular(100),
      // onLongPress: onLongPress,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              IconData(category.codePoint, fontFamily: 'MaterialIcons'),
              color: Colors.white,
              size: size.height / 20,
            ),
            Text(
              '${category.categoryName}\n\$${category.initialValue}',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
