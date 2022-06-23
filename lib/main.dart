import 'package:budgetbuddy/core/presentation/app_providerscope.dart';
import 'package:budgetbuddy/core/presentation/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() async {
  runApp(
    ProviderScope(
      overrides: [
        await initializeCategoriesDatabase(),
        await initializeLogsDatabase(),
      ],
      child: const AppWidget(),
    ),
  );
}
