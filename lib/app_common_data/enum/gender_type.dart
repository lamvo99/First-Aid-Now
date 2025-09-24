
import 'package:first_aid/generated/strings.g.dart';

enum GenderType {
  MALE,
  FEMALE
}

extension GenderTypeExt on GenderType {
  String get title => {
    GenderType.MALE: i18n.GenderType.Male,
    GenderType.FEMALE: i18n.GenderType.Female,
  }[this]!;
}