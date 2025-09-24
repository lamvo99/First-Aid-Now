// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OwnerImpl _$$OwnerImplFromJson(Map<String, dynamic> json) => _$OwnerImpl(
      fullName: json['fullName'] as String?,
      dateOfBirth: (json['dateOfBirth'] as num?)?.toInt(),
      gender: $enumDecodeNullable(_$GenderTypeEnumMap, json['gender']) ??
          GenderType.MALE,
      photoUrl: json['photoUrl'] as String?,
    );

Map<String, dynamic> _$$OwnerImplToJson(_$OwnerImpl instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'dateOfBirth': instance.dateOfBirth,
      'gender': _$GenderTypeEnumMap[instance.gender]!,
      'photoUrl': instance.photoUrl,
    };

const _$GenderTypeEnumMap = {
  GenderType.MALE: 'MALE',
  GenderType.FEMALE: 'FEMALE',
};
