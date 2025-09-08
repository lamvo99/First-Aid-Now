
import 'package:first_aid/app_common_data/app_colors.dart';
import 'package:first_aid/gen/assets.gen.dart';
import 'package:first_aid/generated/strings.g.dart';
import 'package:flutter/material.dart';

enum PersonalEventType {
  ANNIVERSARY,    // Giỗ, kỵ nhật
  DHARMA_PRACTICE, // Buổi tu tập pháp môn
  VOW_DAY,        // Ngày phát nguyện (ăn chay, giữ giới...)
  PRAYER_SESSION, // Buổi lễ cầu an/cầu siêu
  SUTRA_STUDY,    // Buổi học/tụng kinh
  MEDITATION_DAY, // Ngày tịnh tu thiền định
  DANA_ACTIVITY,  // Ngày làm phước, bố thí
  TEMPLE_VISIT,   // Đi lễ chùa
  DHARMA_TALK,    // Nghe thuyết pháp
  PERSONAL_REFLECTION, // Ngày tự quán chiếu
  CUSTOM     // Tuỳ chỉnh
}

extension PersonalEventTypeExt on PersonalEventType {
  String get title => {
    PersonalEventType.ANNIVERSARY: i18n.Event.EventType.Anniversary,
    PersonalEventType.DHARMA_PRACTICE: i18n.Event.EventType.DharmaPractice,
    PersonalEventType.VOW_DAY: i18n.Event.EventType.VowDay,
    PersonalEventType.PRAYER_SESSION: i18n.Event.EventType.PrayerSession,
    PersonalEventType.SUTRA_STUDY: i18n.Event.EventType.SutraStudy,
    PersonalEventType.MEDITATION_DAY: i18n.Event.EventType.MeditationDay,
    PersonalEventType.DANA_ACTIVITY: i18n.Event.EventType.DanaActivity,
    PersonalEventType.TEMPLE_VISIT: i18n.Event.EventType.TempleVisit,
    PersonalEventType.DHARMA_TALK: i18n.Event.EventType.DharmaTalk,
    PersonalEventType.PERSONAL_REFLECTION: i18n.Event.EventType.PersonalReflection,
    PersonalEventType.CUSTOM: i18n.Event.EventType.Custom,
  }[this]!;

  SvgGenImage get icon => {
    PersonalEventType.ANNIVERSARY: Assets.icons.icCalendar,
    PersonalEventType.DHARMA_PRACTICE: Assets.icons.icLotus,
    PersonalEventType.VOW_DAY: Assets.icons.icHandsPrayingg,
    PersonalEventType.PRAYER_SESSION: Assets.icons.icCandle,
    PersonalEventType.SUTRA_STUDY: Assets.icons.icScroll,
    PersonalEventType.MEDITATION_DAY: Assets.icons.icHandHeart,
    PersonalEventType.DANA_ACTIVITY: Assets.icons.icHandHeart,
    PersonalEventType.TEMPLE_VISIT: Assets.icons.icTemple,
    PersonalEventType.DHARMA_TALK: Assets.icons.icTeacher,
    PersonalEventType.PERSONAL_REFLECTION: Assets.icons.icMindfulness,
    PersonalEventType.CUSTOM: Assets.icons.icCustom,
  }[this]!;

  Color get bgColor => {
    PersonalEventType.ANNIVERSARY: Color(0xFFE74C3C),
    PersonalEventType.DHARMA_PRACTICE: Color(0xFF3498DB),
    PersonalEventType.VOW_DAY: Color(0xFF2ECC71),
    PersonalEventType.PRAYER_SESSION: Color(0xFF9B59B6),
    PersonalEventType.SUTRA_STUDY: Color(0xFF1ABC9C),
    PersonalEventType.MEDITATION_DAY: Color(0xFFF1C40F),
    PersonalEventType.DANA_ACTIVITY: Color(0xFFE67E22),
    PersonalEventType.TEMPLE_VISIT: Color(0xFF16A085),
    PersonalEventType.DHARMA_TALK: Color(0xFF8E44AD),
    PersonalEventType.PERSONAL_REFLECTION: Color(0xFF95A5A6),
    PersonalEventType.CUSTOM: Color(0xFFBDC3C7),
  }[this]!;

  Color get labelColor => {
    PersonalEventType.ANNIVERSARY: Color(0xFFFFFFFF),
    PersonalEventType.DHARMA_PRACTICE: Color(0xFFFFFFFF),
    PersonalEventType.VOW_DAY: Color(0xFFFFFFFF),
    PersonalEventType.PRAYER_SESSION: Color(0xFFFFFFFF),
    PersonalEventType.SUTRA_STUDY: Color(0xFFFFFFFF),
    PersonalEventType.MEDITATION_DAY: Color(0xFFFFFFFF),
    PersonalEventType.DANA_ACTIVITY: Color(0xFFFFFFFF),
    PersonalEventType.TEMPLE_VISIT: Color(0xFFFFFFFF),
    PersonalEventType.DHARMA_TALK: Color(0xFFFFFFFF),
    PersonalEventType.PERSONAL_REFLECTION: Color(0xFFFFFFFF),
    PersonalEventType.CUSTOM: AppColors.gray900,
  }[this]!;
}
