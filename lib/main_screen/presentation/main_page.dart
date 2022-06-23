import 'package:budgetbuddy/main_screen/presentation/categories_widget.dart';
import 'package:budgetbuddy/main_screen/presentation/logs_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MainPage extends HookWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mode = useState(true);
    void onPressed() => mode.value = !mode.value;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'BudgetBuddy',
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        children: [
          CategoriesWidget(
            onPressed: onPressed,
            isExpenseMode: mode.value,
          ),
          Expanded(
            child: LogsWidget(
              isExpenseMode: mode.value,
            ),
          ),
        ],
      ),
    );
  }
}
