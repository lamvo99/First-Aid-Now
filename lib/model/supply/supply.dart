// ignore_for_file: invalid_annotation_target

import 'package:first_aid/app_common_data/enum/merit_type.dart';
import 'package:first_aid/app_common_data/enum/supplies_catgory.dart';
import 'package:first_aid/shared_customization/export.dart';
import 'package:first_aid/shared_customization/extensions/date_time_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'supply.g.dart';

part 'supply.freezed.dart';

@freezed
class SupplyModel with _$SupplyModel {
  const factory SupplyModel({
    @Default(0)
    int id,
    String? name,
    String? note,
    SuppliesCategory? supplyCategory,
    int? quantity,
    @TimestampConverter() DateTime? dateExpired,
    @TimestampConverter() DateTime? lastCheckedAt,
    @TimestampConverter() DateTime? createdAt,
    @TimestampConverter() DateTime? updatedAt,
    @Default(false) isImportant,
    @Default(false) isChecked,
  }) = _SupplyModel;

  static SupplyModel get empty => const SupplyModel();

  factory SupplyModel.fromJson(Map<String, dynamic> json) =>
      _$SupplyModelFromJson(json);
}

@Entity()
class SupplyEntity {
  @Id()
  int id;
  String? name;
  String? note;
  int? supplyCategoryIndex;
  int? quantity;
  int? dateExpired;
  int? lastCheckedAt;
  int? createdAt;
  int? updatedAt;
  bool? isImportant;
  bool? isChecked;

  SupplyEntity({
    this.id = 0,
    this.name,
    this.note,
    this.supplyCategoryIndex,
    this.quantity,
    this.dateExpired,
    this.lastCheckedAt,
    this.createdAt,
    this.updatedAt,
    this.isImportant,
    this.isChecked,
  });

  SupplyModel toModel() => SupplyModel(
        id: id,
        name: name,
        note: note,
        supplyCategory: supplyCategoryIndex != null
            ? SuppliesCategory.values[supplyCategoryIndex!]
            : null,
        quantity: quantity,
        dateExpired: dateExpired?.toDateTimeFromTimeStamp ?? null,
        lastCheckedAt: lastCheckedAt?.toDateTimeFromTimeStamp ?? null,
        createdAt: createdAt?.toDateTimeFromTimeStamp ?? null,
        updatedAt: updatedAt?.toDateTimeFromTimeStamp ?? null,
        isImportant: isImportant,
        isChecked: isChecked,
      );

  static SupplyEntity formModel(SupplyModel supply) {
    return SupplyEntity(
      id: supply.id,
      name: supply.name,
      note: supply.note,
      quantity: supply.quantity,
      supplyCategoryIndex: supply.supplyCategory != null
          ? SuppliesCategory.values.indexOf(supply.supplyCategory!)
          : null,
      dateExpired: supply.dateExpired?.millisecondsSinceEpoch ?? null,
      lastCheckedAt: supply.lastCheckedAt?.millisecondsSinceEpoch ?? null,
      createdAt: supply.createdAt?.millisecondsSinceEpoch ?? null,
      updatedAt: supply.updatedAt?.millisecondsSinceEpoch ?? null,
      isImportant: supply.isImportant,
      isChecked: supply.isChecked,
    );
  }
}
