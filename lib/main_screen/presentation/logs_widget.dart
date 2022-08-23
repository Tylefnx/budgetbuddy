import 'package:budgetbuddy/models/logs/domain/logs_with_dates.dart';
import 'package:budgetbuddy/models/logs/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LogsWidget extends ConsumerStatefulWidget {
  const LogsWidget({
    Key? key,
    required this.isExpenseMode,
  }) : super(key: key);

  final bool isExpenseMode;
  @override
  ConsumerState<LogsWidget> createState() => _LogsWidgetState();
}

class _LogsWidgetState extends ConsumerState<LogsWidget> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => ref.read(logNotifierProvider.notifier).fetchLogs(),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final logs = ref.watch(logNotifierProvider);
    return logs.maybeMap(
        orElse: () => const SizedBox(),
        done: (_) {
          final logList = <LogWithDate>[];
          for (final log in _.logs) {
            if (log.isExpense == widget.isExpenseMode) {
              logList.add(log);
            }
          }
          return DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade800),
            ),
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemCount: logList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) => ListTile(
                trailing: Text(
                  widget.isExpenseMode
                      ? '-\$${logList[index].value.toString()}'
                      : '+\$${logList[index].value.toString()}',
                  style: TextStyle(
                      color: widget.isExpenseMode ? Colors.red : Colors.green,
                      fontSize: 18),
                ),
                title: Text(
                  '${logList[index].details} c:${logList[index].categoryId} l:${logList[index].id}',
                  style: const TextStyle(fontSize: 18),
                ),
              ),
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
            ),
          );
        });
  }
}
