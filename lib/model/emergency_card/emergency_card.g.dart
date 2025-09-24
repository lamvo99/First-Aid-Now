// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emergency_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmergencyCardImpl _$$EmergencyCardImplFromJson(Map<String, dynamic> json) =>
    _$EmergencyCardImpl(
      id: json['id'] as String?,
      owner: json['owner'] == null
          ? null
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
      medicalInfo: json['medicalInfo'] == null
          ? null
          : MedicalInfo.fromJson(json['medicalInfo'] as Map<String, dynamic>),
      emergencyContacts: (json['emergencyContacts'] as List<dynamic>?)
              ?.map((e) => EmergencyContact.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      instructions: json['instructions'] as String?,
      lastUpdated: (json['lastUpdated'] as num?)?.toInt(),
      visibility: json['visibility'] == null
          ? null
          : VisibilityInfo.fromJson(json['visibility'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EmergencyCardImplToJson(_$EmergencyCardImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner': instance.owner,
      'medicalInfo': instance.medicalInfo,
      'emergencyContacts': instance.emergencyContacts,
      'instructions': instance.instructions,
      'lastUpdated': instance.lastUpdated,
      'visibility': instance.visibility,
    };
