// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeritModelImpl _$$MeritModelImplFromJson(Map<String, dynamic> json) =>
    _$MeritModelImpl(
      name: json['name'] as String?,
      description: json['description'] as String?,
      createdAt: (json['created_at'] as num?)?.toInt(),
      meritType: $enumDecodeNullable(_$MeritTypeEnumMap, json['merit_type']),
      recipient: json['recipient'] as String?,
    );

Map<String, dynamic> _$$MeritModelImplToJson(_$MeritModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'created_at': instance.createdAt,
      'merit_type': _$MeritTypeEnumMap[instance.meritType],
      'recipient': instance.recipient,
    };

const _$MeritTypeEnumMap = {
  MeritType.LIBERATION: 'LIBERATION',
  MeritType.GIVING: 'GIVING',
  MeritType.OFFERINGS: 'OFFERINGS',
  MeritType.GOOD_DEEDS: 'GOOD_DEEDS',
  MeritType.PRACTICE: 'PRACTICE',
  MeritType.BLOOD_DONATION: 'BLOOD_DONATION',
  MeritType.PENITENCE: 'PENITENCE',
  MeritType.OTHER: 'OTHER',
};
