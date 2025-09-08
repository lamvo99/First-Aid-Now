
import 'dart:ui';

import 'package:first_aid/gen/assets.gen.dart';
import 'package:first_aid/generated/strings.g.dart';

enum MeritType {
  LIBERATION,
  GIVING,
  OFFERINGS,
  GOOD_DEEDS,
  PRACTICE,
  BLOOD_DONATION,
  PENITENCE,
  OTHER
}

extension MeritTypeExt on MeritType {
  String get title => {
    MeritType.LIBERATION: i18n.MeritType.Liberation,
    MeritType.GIVING: i18n.MeritType.Giving,
    MeritType.OFFERINGS: i18n.MeritType.Offerings,
    MeritType.GOOD_DEEDS: i18n.MeritType.GoodDeed,
    MeritType.PRACTICE: i18n.MeritType.Practice,
    MeritType.BLOOD_DONATION: i18n.MeritType.BloodDonation,
    MeritType.PENITENCE: i18n.MeritType.Penitence,
    MeritType.OTHER: i18n.MeritType.Other,
  }[this]!;

  SvgGenImage get icon => {
    MeritType.LIBERATION: Assets.icons.icDove,
    MeritType.GIVING: Assets.icons.icGift,
    MeritType.OFFERINGS: Assets.icons.icOilLamp,
    MeritType.GOOD_DEEDS: Assets.icons.icHeart,
    MeritType.PRACTICE: Assets.icons.icMeditationType,
    MeritType.BLOOD_DONATION: Assets.icons.icSyringe,
    MeritType.PENITENCE: Assets.icons.icRain,
    MeritType.OTHER: Assets.icons.icAsterisk,
  }[this]!;

  Color get backgroundColor => {
    MeritType.LIBERATION: Color(0xFF87CEEB),
    MeritType.GIVING: Color(0xFFFFD700),
    MeritType.OFFERINGS: Color(0xFFFFA500),
    MeritType.GOOD_DEEDS: Color(0xFFFF6B6B),
    MeritType.PRACTICE: Color(0xFF9370DB),
    MeritType.BLOOD_DONATION: Color(0xFFDC143C),
    MeritType.PENITENCE: Color(0xFF778899),
    MeritType.OTHER: Color(0xFFA9A9A9),
  }[this]!;
}