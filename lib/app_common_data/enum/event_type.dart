import 'package:first_aid/app_common_data/app_colors.dart';
import 'package:first_aid/generated/strings.g.dart';
import 'package:flutter/material.dart';

enum EventType {
  festival,
  observance,
  uposatha,
  // retreat,
  other,
}

extension EventTypeExt on EventType {
  String get title => {
    EventType.festival: i18n.EventType.Festival,
    EventType.observance: i18n.EventType.Observance,
    EventType.uposatha: i18n.EventType.Uposatha,
    // EventType.retreat: i18n.EventType.Retreat,
    EventType.other: i18n.EventType.Other,
  }[this]!;

  Color get color => {
    EventType.festival: Color(0xFFFFD700),
    EventType.observance: Color(0xFF4B0082),
    EventType.uposatha: Color(0xFF87CEEB),
    // EventType.retreat: Color(0xFF228B22),
    EventType.other: Color(0xFFF5F5F5),
  }[this]!;

  Color get labelColor => {
    EventType.festival: AppColors.gray800,
    EventType.observance: AppColors.white,
    EventType.uposatha: AppColors.gray800,
    // EventType.retreat: AppColors.white,
    EventType.other: AppColors.gray800,
  }[this]!;
}
