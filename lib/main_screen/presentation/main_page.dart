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
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'BudgetBuddy',
        ),
      ),
      body: Column(
        children: [
          CategoriesWidget(
            onPressed: onPressed,
            isExpenseMode: mode.value,
          ),
          const SizedBox(height: 30),
          Expanded(
            child: LogsWidget(isExpenseMode: mode.value),
          ),
        ],
      ),
    );
  }
}
