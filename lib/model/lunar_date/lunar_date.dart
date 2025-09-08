// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lunar_date.g.dart';
part 'lunar_date.freezed.dart';

@freezed
class LunarDate with _$LunarDate {
  const factory LunarDate({
    /// Ngày âm lịch (1-30)
    @JsonKey(name: "day") int? day,
    /// Tháng âm lịch (1-12)
    @JsonKey(name: "month") int? month,
    /// Năm âm lịch
    @JsonKey(name: "year") int? year,
    /// Can chi của ngày (ví dụ: Giáp Tý)
    @JsonKey(name: "can_chi") String? canChi,
    /// Có phải tháng nhuận không
    @JsonKey(name: "is_leap_month") bool? isLeapMonth,
  }) = _LunarDate;

  static LunarDate get empty => const LunarDate();

  factory LunarDate.fromJson(Map<String, dynamic> json) =>
      _$LunarDateFromJson(json);
}
