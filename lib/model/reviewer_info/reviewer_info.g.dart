// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviewer_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewerInfoImpl _$$ReviewerInfoImplFromJson(Map<String, dynamic> json) =>
    _$ReviewerInfoImpl(
      organization: json['organization'] as String?,
      reviewer_name: json['reviewer_name'] as String?,
      review_date: json['review_date'] as String?,
    );

Map<String, dynamic> _$$ReviewerInfoImplToJson(_$ReviewerInfoImpl instance) =>
    <String, dynamic>{
      'organization': instance.organization,
      'reviewer_name': instance.reviewer_name,
      'review_date': instance.review_date,
    };
