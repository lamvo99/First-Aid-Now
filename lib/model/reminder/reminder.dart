// // ignore_for_file: invalid_annotation_target
//
// import 'package:first_aid/app_common_data/enum/merit_type.dart';
// import 'package:first_aid/app_common_data/enum/supplies_catgory.dart';
// import 'package:first_aid/shared_customization/extensions/date_time_converter.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:objectbox/objectbox.dart';
//
// part 'reminder.g.dart';
//
// part 'reminder.freezed.dart';
//
// @freezed
// class SupplyModel with _$SupplyModel {
//   const factory SupplyModel({
//     @Default("") String id,
//     String? name,
//     String? note,
//     SuppliesCategory? supplyCategory,
//     int? quantity,
//     @TimestampConverter() DateTime? dateExpired,
//     @TimestampConverter() DateTime? lastCheckedAt,
//     @TimestampConverter() DateTime? createdAt,
//     @TimestampConverter() DateTime? updatedAt,
//     @Default(false) isImportant,
//     @Default(false) isChecked,
//   }) = _MeritModel;
//
//   static SupplyModel get empty => const SupplyModel();
//
//   factory SupplyModel.fromJson(Map<String, dynamic> json) =>
//       _$MeritModelFromJson(json);
// }
//
// @Entity()
// class SupplyEntity {
//   @Id()
//   String id;
//   String? name;
//   String? description;
//   DateTime? createdAt;
//   int? meritTypeIndex;
//   String? recipient;
//
//   SupplyEntity({
//     this.id = 0,
//     this.name,
//     this.description,
//     this.createdAt,
//     this.meritTypeIndex,
//     this.recipient,
//   });
//
//   SupplyModel toModel() => SupplyModel(
//     id: id,
//     name: name,
//     description: description,
//     createdAt: createdAt,
//     meritType:
//     meritTypeIndex != null ? MeritType.values[meritTypeIndex!] : null,
//     recipient: recipient,
//   );
//
//   static SupplyEntity formModel(SupplyModel supply) {
//     return SupplyEntity(
//       id: supply.id,
//       name: supply.name,
//       description: supply.description,
//       createdAt: supply.createdAt,
//       meritTypeIndex: supply.meritType != null
//           ? MeritType.values.indexOf(supply.meritType!)
//           : null,
//       recipient: supply.recipient,
//     );
//   }
// }
