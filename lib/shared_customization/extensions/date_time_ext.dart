// Flutter imports:
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../app_common_data/export.dart';

// Project imports:
extension DateTimeExt on DateTime? {
  String get toHourAndMinute =>
      this == null ? '' : DateFormat("HH:mm").format(this!);

  String get toMonthDayHourMinute =>
      this == null ? '' : DateFormat("MM/dd hh:mm").format(this!);

  String get monthYear =>
      this == null ? '' : DateFormat('MM/yyyy').format(this!);

  bool get isToDay {
    DateTime dateTime = DateFormat('dd/MM/yyyy').parse(toDayMonthYear());
    DateTime dateNow =
        DateFormat('dd/MM/yyyy').parse(DateTime.now().toDayMonthYear());

    return dateTime.difference(dateNow).inDays == 0;
  }

  bool get isYesterday {
    DateTime dateTime = DateFormat('dd/MM/yyyy').parse(toDayMonthYear());
    DateTime dateNow =
        DateFormat('dd/MM/yyyy').parse(DateTime.now().toDayMonthYear());

    return dateTime.difference(dateNow).inDays == -1;
  }

  String toDayMonthYear({Locale? locale}) {
    if (this == null) return '';
    switch ('vi') {
      default:
        return DateFormat('dd/MM/yyyy').format(this!);
    }
  }

  Color get getDayColor {
    int dayOfWeek = this!.weekday;
    switch (dayOfWeek) {
      // case 1: // Thứ 2
      //   return AppColors.primary500;
      // case 2: // Thứ 3
      //   return AppColors.success500;
      // case 3: // Thứ 4
      //   return AppColors.blue500;
      // case 4: // Thứ 5
      //   return AppColors.purple500;
      // case 5: // Thứ 6
      //   return AppColors.warning500;
      case 6: // Thứ 7
        return AppColors.error500;
      case 7: // Chủ Nhật
        return AppColors.yellow500;
      default: // Mặc định
        return AppColors.gray800;
    }
  }

  Color get checkExpiredBorderColor {
    if (this != null) {
      final difference = this!.difference(DateTime.now());

      if (difference.isNegative) {
        return AppColors.error600;
      } else if (difference.inDays <= 3) {
        return AppColors.warning500;
      }
    }

    return AppColors.gray300;
  }

  int getDaysInMonth() {
    if (this!.month == DateTime.february) {
      final bool isLeapYear =
          (this!.year % 4 == 0) && (this!.year % 100 != 0) ||
              (this!.year % 400 == 0);
      return isLeapYear ? 29 : 28;
    }
    const List<int> daysInMonth = <int>[
      31,
      -1,
      31,
      30,
      31,
      30,
      31,
      31,
      30,
      31,
      30,
      31
    ];
    return daysInMonth[this!.month - 1];
  }

  String toDayMonthYearAndTime({Locale? locale}) {
    if (this == null) return '';
    switch ('vi') {
      case 'zh':
        return DateFormat('yyyy/MM/dd HH:mm').format(this!);
      case 'ja':
        return DateFormat('yyyy/MM/dd HH:mm').format(this!);
      case 'vi':
        return DateFormat('dd/MM/yyyy HH:mm').format(this!);
      case 'en':
        return DateFormat('MM/dd/yyyy HH:mm').format(this!);
      default:
        return DateFormat('dd/MM/yyyy HH:mm').format(this!);
    }
  }

  String toYearMonthDayAndTime({Locale? locale}) {
    if (this == null) return '';
    return DateFormat('yyyy-MM-dd HH:mm:ss').format(this!);
  }

  String toYearMonthDayAndTimeGtm({Locale? locale}) {
    if (this == null) return '';
    DateTime date = this!;
    DateTime newDate = DateTime(date.year, date.month, date.day, 0, 0, 0)
        .add(const Duration(hours: 7));
    return DateFormat('yyyy-MM-dd HH:mm:ss').format(newDate);
  }

  String toYearMonthDay({Locale? locale}) {
    if (this == null) return '';
    return DateFormat('yyyy-MM-dd').format(this!);
  }
}
