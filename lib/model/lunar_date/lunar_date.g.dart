// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lunar_date.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LunarDateImpl _$$LunarDateImplFromJson(Map<String, dynamic> json) =>
    _$LunarDateImpl(
      day: (json['day'] as num?)?.toInt(),
      month: (json['month'] as num?)?.toInt(),
      year: (json['year'] as num?)?.toInt(),
      canChi: json['can_chi'] as String?,
      isLeapMonth: json['is_leap_month'] as bool?,
    );

Map<String, dynamic> _$$LunarDateImplToJson(_$LunarDateImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'month': instance.month,
      'year': instance.year,
      'can_chi': instance.canChi,
      'is_leap_month': instance.isLeapMonth,
    };
