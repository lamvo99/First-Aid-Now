// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:first_aid/app_common_data/enum/text_align_enum.dart';
import 'package:first_aid/app_common_data/enum_new/learn_category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.g.dart';
part 'category.freezed.dart';

@freezed
class Category with _$Category {
  const factory Category({
    int? numLesson,
    String? name,
    LearnCategory? learnCategory,
    String? shortDescription,
    String? url,
  }) = _Category;

  static Category get empty => const Category();

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
