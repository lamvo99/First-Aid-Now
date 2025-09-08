// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guide.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GuideImpl _$$GuideImplFromJson(Map<String, dynamic> json) => _$GuideImpl(
      id: json['id'] as String?,
      version: json['version'] as String?,
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      title: json['title'] as String?,
      description: json['description'] as String?,
      thumbnail: json['thumbnail'] as String?,
      age_groups: (json['age_groups'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$AgeGroupEnumMap, e))
          .toList(),
      severity_level:
          $enumDecodeNullable(_$SeverityLevelEnumMap, json['severity_level']),
      estimated_time_sec: (json['estimated_time_sec'] as num?)?.toInt(),
      last_updated: json['last_updated'] == null
          ? null
          : DateTime.parse(json['last_updated'] as String),
      steps: (json['steps'] as List<dynamic>?)
          ?.map((e) => Step.fromJson(e as Map<String, dynamic>))
          .toList(),
      when_to_seek_care: json['when_to_seek_care'] as String?,
      references: json['references'] == null
          ? null
          : References.fromJson(json['references'] as Map<String, dynamic>),
      reviewer_info: json['reviewer_info'] == null
          ? null
          : ReviewerInfo.fromJson(
              json['reviewer_info'] as Map<String, dynamic>),
      quiz_ids: (json['quiz_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$GuideImplToJson(_$GuideImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'version': instance.version,
      'category': instance.category,
      'title': instance.title,
      'description': instance.description,
      'thumbnail': instance.thumbnail,
      'age_groups':
          instance.age_groups?.map((e) => _$AgeGroupEnumMap[e]!).toList(),
      'severity_level': _$SeverityLevelEnumMap[instance.severity_level],
      'estimated_time_sec': instance.estimated_time_sec,
      'last_updated': instance.last_updated?.toIso8601String(),
      'steps': instance.steps,
      'when_to_seek_care': instance.when_to_seek_care,
      'references': instance.references,
      'reviewer_info': instance.reviewer_info,
      'quiz_ids': instance.quiz_ids,
    };

const _$AgeGroupEnumMap = {
  AgeGroup.ADULT: 'ADULT',
  AgeGroup.CHILD: 'CHILD',
  AgeGroup.INFANT: 'INFANT',
};

const _$SeverityLevelEnumMap = {
  SeverityLevel.EMERGENCY: 'EMERGENCY',
  SeverityLevel.HIGH: 'HIGH',
  SeverityLevel.MEDIUM: 'MEDIUM',
  SeverityLevel.LOW: 'LOW',
};
