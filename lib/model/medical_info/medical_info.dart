// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:first_aid/app_common_data/enum/blood_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'medical_info.g.dart';
part 'medical_info.freezed.dart';

@freezed
class MedicalInfo with _$MedicalInfo {
  const factory MedicalInfo({
    @Default(BloodType.A_POSITIVE) BloodType bloodType,
    @Default([]) List<String> allergies,
    @Default([]) List<String> medications,
    @Default([]) List<String> medicalConditions,
    @Default(false) bool organDonor,
  }) = _MedicalInfo;

  static MedicalInfo get empty => const MedicalInfo();

  factory MedicalInfo.fromJson(Map<String, dynamic> json) =>
      _$MedicalInfoFromJson(json);
}
