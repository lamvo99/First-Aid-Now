import 'package:first_aid/generated/strings.g.dart';
import 'package:intl/intl.dart';

class DateLunarUtils {
  static String formatDate(DateTime date, {String format = 'dd/MM/yyyy'}) {
    return DateFormat(format).format(date);
  }

  static DateTime firstDayOfMonth(DateTime date) {
    return DateTime(date.year, date.month, 1);
  }

  static DateTime lastDayOfMonth(DateTime date) {
    return DateTime(date.year, date.month + 1, 0);
  }

  /// Lấy danh sách các ngày trong tháng
  static List<DateTime> daysInMonth(DateTime date) {
    final first = firstDayOfMonth(date);
    final daysBefore = first.weekday - 1; // Số ngày của tháng trước
    final firstToDisplay = first.subtract(Duration(days: daysBefore));

    final last = lastDayOfMonth(date);
    final daysAfter = 7 - last.weekday; // Số ngày của tháng sau
    final lastToDisplay = last.add(Duration(days: daysAfter));

    final daysToDisplay = <DateTime>[];
    for (var i = firstToDisplay;
        i.isBefore(lastToDisplay.add(const Duration(days: 1)));
        i = i.add(const Duration(days: 1))) {
      daysToDisplay.add(i);
    }

    return daysToDisplay;
  }

  /// Kiểm tra xem có phải là cùng ngày không
  static bool isSameDay(DateTime? a, DateTime? b) {
    if (a == null || b == null) return false;
    return a.year == b.year && a.month == b.month && a.day == b.day;
  }

  /// Kiểm tra xem có phải là ngày hôm nay không
  static bool isToday(DateTime date) {
    final now = DateTime.now();
    return isSameDay(date, now);
  }

  /// Kiểm tra xem có phải là ngày cuối tuần không
  static bool isWeekend(DateTime date) {
    return date.weekday == DateTime.saturday || date.weekday == DateTime.sunday;
  }

  /// Lấy tên thứ trong tuần theo ngôn ngữ
  static String weekdayName(
    DateTime date, {
    bool short = true,
  }) {
    String weekdayKey = short ? i18n.Lunar.MondayShort : i18n.Lunar.Monday;
    switch (date.weekday) {
      case DateTime.monday:
        weekdayKey = short ? i18n.Lunar.MondayShort : i18n.Lunar.Monday;
        break;
      case DateTime.tuesday:
        weekdayKey = short ? i18n.Lunar.TuesdayShort : i18n.Lunar.Tuesday;
        break;
      case DateTime.wednesday:
        weekdayKey = short ? i18n.Lunar.WednesdayShort : i18n.Lunar.Wednesday;
        break;
      case DateTime.thursday:
        weekdayKey = short ? i18n.Lunar.ThursdayShort : i18n.Lunar.Thursday;
        break;
      case DateTime.friday:
        weekdayKey = short ? i18n.Lunar.FridayShort : i18n.Lunar.Friday;
        break;
      case DateTime.saturday:
        weekdayKey = short ? i18n.Lunar.SaturdayShort : i18n.Lunar.Saturday;
        break;
      case DateTime.sunday:
        weekdayKey = short ? i18n.Lunar.SundayShort : i18n.Lunar.Sunday;
    }

    return weekdayKey;
  }

  /// Lấy tên tháng theo ngôn ngữ
  static String monthName(
    DateTime date, {
    bool short = true,
  }) {
    switch (date.month) {
      case 1:
        return i18n.Lunar.Month1;
      case 2:
        return i18n.Lunar.Month2;
      case 3:
        return i18n.Lunar.Month3;
      case 4:
        return i18n.Lunar.Month4;
      case 5:
        return i18n.Lunar.Month5;
      case 6:
        return i18n.Lunar.Month6;
      case 7:
        return i18n.Lunar.Month7;
      case 8:
        return i18n.Lunar.Month8;
      case 9:
        return i18n.Lunar.Month9;
      case 10:
        return i18n.Lunar.Month10;
      case 11:
        return i18n.Lunar.Month11;
      case 12:
        return i18n.Lunar.Month12;
      default:
        return "";
    }
  }

  /// Lấy danh sách các tháng trong năm
  static List<DateTime> monthsInYear(int year) {
    return List.generate(
      12,
      (index) => DateTime(year, index + 1, 1),
    );
  }

  /// Kiểm tra xem có phải là cùng tháng không
  static bool isSameMonth(DateTime a, DateTime b) {
    return a.year == b.year && a.month == b.month;
  }

  /// Lấy số tuần trong tháng
  static int weeksInMonth(DateTime date) {
    final days = daysInMonth(date);
    return (days.length / 7).ceil();
  }

  /// Lấy ngày theo vị trí trong lưới calendar
  static DateTime? dayFromGridIndex(DateTime month, int index) {
    final days = daysInMonth(month);
    if (index < 0 || index >= days.length) return null;
    return days[index];
  }

  /// Lấy vị trí trong lưới calendar từ ngày
  static int? gridIndexFromDay(DateTime month, DateTime day) {
    final days = daysInMonth(month);
    for (var i = 0; i < days.length; i++) {
      if (isSameDay(days[i], day)) return i;
    }
    return null;
  }
}
