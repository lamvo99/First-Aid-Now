// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reviewer_info.g.dart';
part 'reviewer_info.freezed.dart';

@freezed
class ReviewerInfo with _$ReviewerInfo {
  const factory ReviewerInfo({
    String? organization,
    String? reviewer_name,
    String? review_date,
  }) = _ReviewerInfo;

  static ReviewerInfo get empty => const ReviewerInfo();

  factory ReviewerInfo.fromJson(Map<String, dynamic> json) =>
      _$ReviewerInfoFromJson(json);
}
