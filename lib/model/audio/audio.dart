// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'audio.g.dart';

part 'audio.freezed.dart';

@freezed
class Audio with _$Audio {
  const factory Audio({
    String? name,
    String? url,
    String? assetsUrl
  }) = _Audio;

  static Audio get empty => const Audio();

  factory Audio.fromJson(Map<String, dynamic> json) => _$AudioFromJson(json);
}
