// ignore_for_file: invalid_annotation_target

// Package imports:
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
