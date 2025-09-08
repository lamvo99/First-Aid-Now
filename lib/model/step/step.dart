// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:first_aid/app_common_data/enum/text_align_enum.dart';
import 'package:first_aid/app_common_data/enum_new/learn_category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'step.g.dart';
part 'step.freezed.dart';

@freezed
class Step with _$Step {
  const factory Step({
    int? step_no,
    String ? text,
    String? image,
  }) = _Step;

  static Step get empty => const Step();

  factory Step.fromJson(Map<String, dynamic> json) =>
      _$StepFromJson(json);
}
