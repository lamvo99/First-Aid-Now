// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'references.g.dart';
part 'references.freezed.dart';

@freezed
class References with _$References {
  const factory References({
    String? source,
    String? link,
  }) = _References;

  static References get empty => const References();

  factory References.fromJson(Map<String, dynamic> json) =>
      _$ReferencesFromJson(json);
}
