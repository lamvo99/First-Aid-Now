// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:first_aid/app_common_data/enum/gender_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'owner.g.dart';
part 'owner.freezed.dart';

@freezed
class Owner with _$Owner {
  const factory Owner({
    String? fullName,
    int? dateOfBirth,
    @Default(GenderType.MALE) GenderType gender,
    String? photoUrl,
  }) = _Owner;

  static Owner get empty => const Owner();

  factory Owner.fromJson(Map<String, dynamic> json) =>
      _$OwnerFromJson(json);
}
