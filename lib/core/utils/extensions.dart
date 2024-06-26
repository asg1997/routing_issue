import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension ContextSize on BuildContext {
  Size get _size => MediaQuery.of(this).size;
  double get width => _size.width;
  double get height => _size.height;
}

extension UnfocusField on BuildContext {
  void unfocus() => FocusScope.of(this).unfocus();
}

extension DayString on DateTime {
  String get dayString {
    final now = DateTime.now();

    final today = DateTime(now.year, now.month, now.day);
    final tomorrow = DateTime(now.year, now.month, now.day + 1);
    final dayAfterTomorrow = DateTime(now.year, now.month, now.day + 2);
    final dateTimeDate = DateTime(year, month, day);

    if (dateTimeDate == today) {
      return 'Сегодня';
    } else if (dateTimeDate == tomorrow) {
      return 'Завтра';
    } else if (dateTimeDate == dayAfterTomorrow) {
      return 'Послезавтра';
    } else {
      final format = DateFormat('dd MMMM', 'ru');
      return format.format(dateTimeDate);
    }
  }
}

extension CapitalizeStringExtension on String {
  String get capitalized {
    return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  }
}
