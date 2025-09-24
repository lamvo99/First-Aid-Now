// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medical_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MedicalInfoImpl _$$MedicalInfoImplFromJson(Map<String, dynamic> json) =>
    _$MedicalInfoImpl(
      bloodType: $enumDecodeNullable(_$BloodTypeEnumMap, json['bloodType']) ??
          BloodType.A_POSITIVE,
      allergies: (json['allergies'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      medications: (json['medications'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      medicalConditions: (json['medicalConditions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      organDonor: json['organDonor'] as bool? ?? false,
    );

Map<String, dynamic> _$$MedicalInfoImplToJson(_$MedicalInfoImpl instance) =>
    <String, dynamic>{
      'bloodType': _$BloodTypeEnumMap[instance.bloodType]!,
      'allergies': instance.allergies,
      'medications': instance.medications,
      'medicalConditions': instance.medicalConditions,
      'organDonor': instance.organDonor,
    };

const _$BloodTypeEnumMap = {
  BloodType.A_POSITIVE: 'A_POSITIVE',
  BloodType.A_NEGATIVE: 'A_NEGATIVE',
  BloodType.B_POSITIVE: 'B_POSITIVE',
  BloodType.B_NEGATIVE: 'B_NEGATIVE',
  BloodType.AB_POSITIVE: 'AB_POSITIVE',
  BloodType.AB_NEGATIVE: 'AB_NEGATIVE',
  BloodType.O_POSITIVE: 'O_POSITIVE',
  BloodType.O_NEGATIVE: 'O_NEGATIVE',
};
