import 'dart:io';

import 'package:budgetbuddy/models/logs/domain/logs_failure.dart';
import 'package:budgetbuddy/models/logs/domain/logs_with_dates.dart';
import 'package:budgetbuddy/models/logs/infrastructure/logs_services.dart';
import 'package:dartz/dartz.dart';

class LogsRepository {
  final LogsServices services;
  LogsRepository(this.services);

  Future<Either<LogsFailure, List<LogWithDate>>> fetchLogs() async {
    try {
      final failureOrexpensesList = services.fetchLogs();
      return right(await failureOrexpensesList.first);
    } on FileSystemException {
      return left(const LogsFailure.permission());
    }
  }

  Future<Either<LogsFailure, Unit>> createLog(
      LogWithDate log) async {
    try {
      await services.createLog(log);
      return right(unit);
    } on FileSystemException {
      return left(const LogsFailure.permission());
    }
  }

  Future<Either<LogsFailure, Unit>> updateLog(
      LogWithDate log) async {
    try {
      await services.updateLog(log);
      return right(unit);
    } on FileSystemException {
      return left(const LogsFailure.permission());
    }
  }

  Future<Either<LogsFailure, Unit>> deleteLog(
      LogWithDate log) async {
    try {
      await services.deleteLog(log.id);
      return right(unit);
    } on FileSystemException {
      return left(const LogsFailure.permission());
    }
  }
}
