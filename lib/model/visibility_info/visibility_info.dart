
// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'visibility_info.g.dart';
part 'visibility_info.freezed.dart';

@freezed
class VisibilityInfo with _$VisibilityInfo {
  const factory VisibilityInfo({
    @Default(false) bool bloodType,
    @Default(false) bool allergies,
    @Default(false) bool conditions,
    @Default(false) bool medications,
    @Default(false) bool organDonor,
    @Default(false) bool emergencyContacts,
  }) = _VisibilityInfo;

  static VisibilityInfo get empty => const VisibilityInfo();

  factory VisibilityInfo.fromJson(Map<String, dynamic> json) =>
      _$VisibilityInfoFromJson(json);
}
