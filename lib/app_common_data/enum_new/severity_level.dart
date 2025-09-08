
import 'package:first_aid/gen/assets.gen.dart';
import 'package:first_aid/generated/strings.g.dart';

enum SeverityLevel {
  EMERGENCY,
  HIGH,
  MEDIUM,
  LOW
}

extension SeverityLevelExt on SeverityLevel {
  String get title => {
    SeverityLevel.EMERGENCY: i18n.SeverityLevel.Emergency,
    SeverityLevel.HIGH: i18n.SeverityLevel.High,
    SeverityLevel.MEDIUM: i18n.SeverityLevel.Medium,
    SeverityLevel.LOW: i18n.SeverityLevel.Low,
  }[this]!;
}