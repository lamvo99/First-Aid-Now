// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emergency_number.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmergencyNumberImpl _$$EmergencyNumberImplFromJson(
        Map<String, dynamic> json) =>
    _$EmergencyNumberImpl(
      police: json['police'] as String?,
      fire: json['fire'] as String?,
      ambulance: json['ambulance'] as String?,
      locale: json['locale'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$$EmergencyNumberImplToJson(
        _$EmergencyNumberImpl instance) =>
    <String, dynamic>{
      'police': instance.police,
      'fire': instance.fire,
      'ambulance': instance.ambulance,
      'locale': instance.locale,
      'country': instance.country,
    };
