
import '../../model/export.dart';
import '../export.dart';

extension LunarExt on LunarDate {

  bool isValid() {
    if (month! < 1 || month! > 12) return false;
    if (day! < 1 || day! > 30) return false; // Tạm thời giới hạn 30 ngày/tháng
    return true;
  }

  String get toValue {
    final leapStr = isLeapMonth != null ? ' (nhuận)' : '';
    final canChiStr = canChi != null ? ' $canChi' : '';
    return '$day/$month$leapStr/$year$canChiStr';
  }

  /// Tạo LunarDate từ DateTime (dương lịch)
  static LunarDate fromSolar(DateTime solarDate) {
    return LunarUtils.solarToLunar(solarDate);
  }

  /// Chuyển đổi sang DateTime (dương lịch)
  DateTime toSolar() {
    final currentTimeZone = DateTime.now().timeZoneOffset.inHours;
    final date = LunarUtils.lunarToSolar(
      day!,
      month!,
      year!,
      isLeapMonth == true ? 1 : 0,
      currentTimeZone.toDouble(),
    );
    return DateTime(date[2], date[1], date[0]);
  }

}