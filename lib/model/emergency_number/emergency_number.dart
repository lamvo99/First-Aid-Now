// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'emergency_number.g.dart';

part 'emergency_number.freezed.dart';

@freezed
class EmergencyNumber with _$EmergencyNumber {
  const factory EmergencyNumber({
     String? police,
     String? fire,
     String? ambulance,
     String? locale,
     String? country,
  }) = _EmergencyNumber;

  static EmergencyNumber get empty => const EmergencyNumber();

  factory EmergencyNumber.fromJson(Map<String, dynamic> json) => _$EmergencyNumberFromJson(json);
}
