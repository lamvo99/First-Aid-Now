// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StepImpl _$$StepImplFromJson(Map<String, dynamic> json) => _$StepImpl(
      step_no: (json['step_no'] as num?)?.toInt(),
      text: json['text'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$StepImplToJson(_$StepImpl instance) =>
    <String, dynamic>{
      'step_no': instance.step_no,
      'text': instance.text,
      'image': instance.image,
    };
