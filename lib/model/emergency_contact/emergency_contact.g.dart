// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emergency_contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmergencyContactImpl _$$EmergencyContactImplFromJson(
        Map<String, dynamic> json) =>
    _$EmergencyContactImpl(
      name: json['name'] as String?,
      relationship: $enumDecodeNullable(
              _$RelationshipTypeEnumMap, json['relationship']) ??
          RelationshipType.FATHER,
      phoneNumber: json['phoneNumber'] as String?,
    );

Map<String, dynamic> _$$EmergencyContactImplToJson(
        _$EmergencyContactImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'relationship': _$RelationshipTypeEnumMap[instance.relationship]!,
      'phoneNumber': instance.phoneNumber,
    };

const _$RelationshipTypeEnumMap = {
  RelationshipType.FATHER: 'FATHER',
  RelationshipType.MOTHER: 'MOTHER',
  RelationshipType.SON: 'SON',
  RelationshipType.DAUGHTER: 'DAUGHTER',
  RelationshipType.BROTHER: 'BROTHER',
  RelationshipType.SISTER: 'SISTER',
  RelationshipType.GRANDFATHER: 'GRANDFATHER',
  RelationshipType.GRANDMOTHER: 'GRANDMOTHER',
  RelationshipType.UNCLE: 'UNCLE',
  RelationshipType.AUNT: 'AUNT',
  RelationshipType.COUSIN: 'COUSIN',
  RelationshipType.NEPHEW: 'NEPHEW',
  RelationshipType.NIECE: 'NIECE',
  RelationshipType.HUSBAND: 'HUSBAND',
  RelationshipType.WIFE: 'WIFE',
  RelationshipType.FRIEND: 'FRIEND',
  RelationshipType.COLLEAGUE: 'COLLEAGUE',
  RelationshipType.OTHER: 'OTHER',
};
