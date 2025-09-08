
import 'package:first_aid/gen/assets.gen.dart';
import 'package:first_aid/generated/strings.g.dart';

enum DateType {
  SOLAR,
  LUNAR
}

extension DateTypeExt on DateType {
  String get title => {
    DateType.SOLAR: i18n.Event.Lunar,
    DateType.LUNAR: i18n.Event.Georgian,
  }[this]!;

  SvgGenImage get icon => {
    DateType.SOLAR: Assets.icons.icGeorgian,
    DateType.LUNAR: Assets.icons.icLunar,
  }[this]!;
}