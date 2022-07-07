import 'package:budgetbuddy/core/presentation/app_dialog.dart';
import 'package:budgetbuddy/main_screen/presentation/logs_widget.dart';
import 'package:flutter/material.dart';

class ShowLogsDialog extends StatelessWidget {
  const ShowLogsDialog({
    Key? key,
    required this.isExpenseMode,
  }) : super(key: key);

  final bool isExpenseMode;

  @override
  Widget build(BuildContext context) {
    return AppDialog(
      isLong: true,
      spaceAround: true,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            isExpenseMode ? 'Expenses' : 'Income',
            style: const TextStyle(fontSize: 25),
          ),
        ),
        Expanded(
          child: LogsWidget(
            isExpenseMode: isExpenseMode,
          ),
        ),
      ],
    );
  }
}
