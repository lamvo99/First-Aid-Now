// Converter for timestamps to DateTime
import 'package:first_aid/shared_customization/export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

class TimestampConverter implements JsonConverter<DateTime, int> {
  // Update to non-nullable
  const TimestampConverter();

  @override
  DateTime fromJson(int timestamp) {
    return DateTime.fromMillisecondsSinceEpoch(timestamp);
  }

  @override
  int toJson(DateTime date) {
    return date.millisecondsSinceEpoch;
  }
}

class StringTimeConverter implements JsonConverter<DateTime, String> {
  // Update to non-nullable
  const StringTimeConverter();

  @override
  DateTime fromJson(String timestamp) {
    return DateFormat("yyyy-MM-dd").parse(timestamp);
  }

  @override
  String toJson(DateTime date) {
    return date.toDayMonthYear();
  }
}

// Converter for array dates [year, month, day] to DateTime
class DateArrayConverter implements JsonConverter<DateTime, List<dynamic>> {
  const DateArrayConverter();

  @override
  DateTime fromJson(List<dynamic> json) {
    if (json.length < 3)
      throw FormatException('Date array must have 3 elements');
    return DateTime(json[0] as int, json[1] as int, json[2] as int);
  }

  @override
  List<int> toJson(DateTime date) => [date.year, date.month, date.day];
}

class TimeArrayConverter implements JsonConverter<String, List<dynamic>> {
  const TimeArrayConverter();

  @override
  String fromJson(List<dynamic> timeArray) {
    if (timeArray.length < 2) {
      throw FormatException('Time array must have 2 elements [hour, minute]');
    }

    final hour = timeArray[0] as int;
    final minute = timeArray[1] as int;

    if (hour < 0 || hour > 23) {
      throw RangeError('Hour must be between 0 and 23');
    }
    if (minute < 0 || minute > 59) {
      throw RangeError('Minute must be between 0 and 59');
    }

    final hourStr = hour.toString().padLeft(2, '0');
    final minuteStr = minute.toString().padLeft(2, '0');

    return '$hourStr:$minuteStr';
  }

  @override
  List<int> toJson(String time) {
    final parts = time.split(':');
    if (parts.length != 2) {
      throw FormatException('Time string must be in HH:mm format');
    }

    final hour = int.parse(parts[0]);
    final minute = int.parse(parts[1]);

    if (hour < 0 || hour > 23) {
      throw RangeError('Hour must be between 0 and 23');
    }
    if (minute < 0 || minute > 59) {
      throw RangeError('Minute must be between 0 and 59');
    }

    return [hour, minute];
  }
}
