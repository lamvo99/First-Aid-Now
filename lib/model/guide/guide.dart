// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:first_aid/app_common_data/enum/text_align_enum.dart';
import 'package:first_aid/app_common_data/enum_new/age_group.dart';
import 'package:first_aid/app_common_data/enum_new/learn_category.dart';
import 'package:first_aid/app_common_data/enum_new/severity_level.dart';
import 'package:first_aid/model/category/category.dart';
import 'package:first_aid/model/references/references.dart';
import 'package:first_aid/model/reviewer_info/reviewer_info.dart';
import 'package:first_aid/model/step/step.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'guide.g.dart';
part 'guide.freezed.dart';

@freezed
class Guide with _$Guide {
  const factory Guide({
    String? id,
    String ? version,
    Category? category,
    String? title,
    String? description,
    String? thumbnail,
    List<AgeGroup>? age_groups,
    SeverityLevel? severity_level,
    int? estimated_time_sec,
    DateTime? last_updated,
    List<Step>? steps,
    String? when_to_seek_care,
    References? references,
    ReviewerInfo? reviewer_info,
    List<String>? quiz_ids,
  }) = _Guide;

  static Guide get empty => const Guide();

  factory Guide.fromJson(Map<String, dynamic> json) =>
      _$GuideFromJson(json);
}
