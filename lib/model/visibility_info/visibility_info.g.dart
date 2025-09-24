// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visibility_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VisibilityInfoImpl _$$VisibilityInfoImplFromJson(Map<String, dynamic> json) =>
    _$VisibilityInfoImpl(
      bloodType: json['bloodType'] as bool? ?? false,
      allergies: json['allergies'] as bool? ?? false,
      conditions: json['conditions'] as bool? ?? false,
      medications: json['medications'] as bool? ?? false,
      organDonor: json['organDonor'] as bool? ?? false,
      emergencyContacts: json['emergencyContacts'] as bool? ?? false,
    );

Map<String, dynamic> _$$VisibilityInfoImplToJson(
        _$VisibilityInfoImpl instance) =>
    <String, dynamic>{
      'bloodType': instance.bloodType,
      'allergies': instance.allergies,
      'conditions': instance.conditions,
      'medications': instance.medications,
      'organDonor': instance.organDonor,
      'emergencyContacts': instance.emergencyContacts,
    };
