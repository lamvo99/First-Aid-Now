// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      numLesson: (json['numLesson'] as num?)?.toInt(),
      name: json['name'] as String?,
      learnCategory:
          $enumDecodeNullable(_$LearnCategoryEnumMap, json['learnCategory']),
      shortDescription: json['shortDescription'] as String?,
      logo_path: json['logo_path'] as String?,
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'numLesson': instance.numLesson,
      'name': instance.name,
      'learnCategory': _$LearnCategoryEnumMap[instance.learnCategory],
      'shortDescription': instance.shortDescription,
      'logo_path': instance.logo_path,
    };

const _$LearnCategoryEnumMap = {
  LearnCategory.immediateLifeSupport: 'immediateLifeSupport',
  LearnCategory.injuryBleedingManagement: 'injuryBleedingManagement',
  LearnCategory.specificAccidentsWounds: 'specificAccidentsWounds',
  LearnCategory.survivalSkills: 'survivalSkills',
  LearnCategory.generalPrinciplesPrevention: 'generalPrinciplesPrevention',
  LearnCategory.medicalEmergencies: 'medicalEmergencies',
};
