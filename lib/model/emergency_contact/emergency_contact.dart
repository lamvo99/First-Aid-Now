// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:first_aid/app_common_data/enum/relationship_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'emergency_contact.g.dart';
part 'emergency_contact.freezed.dart';

@freezed
class EmergencyContact with _$EmergencyContact {
  const factory EmergencyContact({
    String? name,
    @Default(RelationshipType.FATHER) RelationshipType relationship,
    String? phoneNumber,
  }) = _EmergencyContact;

  static EmergencyContact get empty => const EmergencyContact();

  factory EmergencyContact.fromJson(Map<String, dynamic> json) =>
      _$EmergencyContactFromJson(json);
}
