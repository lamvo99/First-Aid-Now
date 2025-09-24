
import 'package:first_aid/generated/strings.g.dart';

enum AgeGroup {
  ADULT,
  CHILD,
  INFANT
}

extension AgeGroupExt on AgeGroup {
  String get title => {
    AgeGroup.ADULT: i18n.AgeGroup.Adult,
    AgeGroup.CHILD: i18n.AgeGroup.Child,
    AgeGroup.INFANT: i18n.AgeGroup.Infant,
  }[this]!;
}