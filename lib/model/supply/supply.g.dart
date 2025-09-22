// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supply.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SupplyModelImpl _$$SupplyModelImplFromJson(Map<String, dynamic> json) =>
    _$SupplyModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String?,
      note: json['note'] as String?,
      supplyCategory: $enumDecodeNullable(
          _$SuppliesCategoryEnumMap, json['supplyCategory']),
      quantity: (json['quantity'] as num?)?.toInt(),
      dateExpired: _$JsonConverterFromJson<int, DateTime>(
          json['dateExpired'], const TimestampConverter().fromJson),
      lastCheckedAt: _$JsonConverterFromJson<int, DateTime>(
          json['lastCheckedAt'], const TimestampConverter().fromJson),
      createdAt: _$JsonConverterFromJson<int, DateTime>(
          json['createdAt'], const TimestampConverter().fromJson),
      updatedAt: _$JsonConverterFromJson<int, DateTime>(
          json['updatedAt'], const TimestampConverter().fromJson),
      isImportant: json['isImportant'] ?? false,
      isChecked: json['isChecked'] ?? false,
    );

Map<String, dynamic> _$$SupplyModelImplToJson(_$SupplyModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'note': instance.note,
      'supplyCategory': _$SuppliesCategoryEnumMap[instance.supplyCategory],
      'quantity': instance.quantity,
      'dateExpired': _$JsonConverterToJson<int, DateTime>(
          instance.dateExpired, const TimestampConverter().toJson),
      'lastCheckedAt': _$JsonConverterToJson<int, DateTime>(
          instance.lastCheckedAt, const TimestampConverter().toJson),
      'createdAt': _$JsonConverterToJson<int, DateTime>(
          instance.createdAt, const TimestampConverter().toJson),
      'updatedAt': _$JsonConverterToJson<int, DateTime>(
          instance.updatedAt, const TimestampConverter().toJson),
      'isImportant': instance.isImportant,
      'isChecked': instance.isChecked,
    };

const _$SuppliesCategoryEnumMap = {
  SuppliesCategory.ESSENTIAL: 'ESSENTIAL',
  SuppliesCategory.DRESSING: 'DRESSING',
  SuppliesCategory.MEDICATION: 'MEDICATION',
  SuppliesCategory.TOOLS: 'TOOLS',
  SuppliesCategory.CUSTOM: 'CUSTOM',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
