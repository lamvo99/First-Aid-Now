// ignore_for_file: invalid_annotation_target

import 'package:first_aid/app_common_data/enum/merit_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'merit.g.dart';

part 'merit.freezed.dart';

@freezed
class MeritModel with _$MeritModel {
  const factory MeritModel({
    @Default(0) @JsonKey(includeFromJson: false, includeToJson: false, defaultValue: 0) int id,
    String? name,
    String? description,
    @JsonKey(name: "created_at") int? createdAt,
    @JsonKey(name: "merit_type") MeritType? meritType,
    @JsonKey(name: "recipient") String? recipient,
  }) = _MeritModel;

  static MeritModel get empty => const MeritModel();

  factory MeritModel.fromJson(Map<String, dynamic> json) =>
      _$MeritModelFromJson(json);
}

@Entity()
class MeritEntity {
  @Id()
  int id;
  String? name;
  String? description;
  int? createdAt;
  int? meritTypeIndex;
  String? recipient;

  MeritEntity({
    this.id = 0,
    this.name,
    this.description,
    this.createdAt,
    this.meritTypeIndex,
    this.recipient,
  });

  MeritModel toModel() => MeritModel(
        id: id,
        name: name,
        description: description,
        createdAt: createdAt,
        meritType:
            meritTypeIndex != null ? MeritType.values[meritTypeIndex!] : null,
        recipient: recipient,
      );

  static MeritEntity formModel(MeritModel merit) {
    return MeritEntity(
      id: merit.id,
      name: merit.name,
      description: merit.description,
      createdAt: merit.createdAt,
      meritTypeIndex: merit.meritType != null
          ? MeritType.values.indexOf(merit.meritType!)
          : null,
      recipient: merit.recipient,
    );
  }
}
