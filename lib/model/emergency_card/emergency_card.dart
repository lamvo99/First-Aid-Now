// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:first_aid/model/export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'emergency_card.g.dart';
part 'emergency_card.freezed.dart';

@freezed
class EmergencyCard with _$EmergencyCard {
  const factory EmergencyCard({
    String? id,
      Owner? owner,
    MedicalInfo? medicalInfo,
    @Default([]) List<EmergencyContact> emergencyContacts,
    String? instructions,
    int? lastUpdated,
    VisibilityInfo? visibility,
  }) = _EmergencyCard;

  static EmergencyCard get empty => const EmergencyCard();

  factory EmergencyCard.fromJson(Map<String, dynamic> json) =>
      _$EmergencyCardFromJson(json);
}
