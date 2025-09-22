// ignore_for_file: constant_identifier_names, non_constant_identifier_names

// Flutter imports:
import 'package:first_aid/app_common_data/app_colors.dart';
import 'package:first_aid/app_common_data/app_text_sytle.dart';
import 'package:first_aid/app_common_data/database/local_storage/database.dart';
import 'package:first_aid/app_common_data/database/supply_object_box/supply_box_helper.dart';
import 'package:first_aid/gen/assets.gen.dart';
import 'package:first_aid/generated/strings.g.dart';
import 'package:first_aid/app_common_data/database/storages.dart';
import 'package:first_aid/shared_customization/helpers/notification_helper.dart';
import 'package:first_aid/shared_customization/widgets/texts/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

///
///
///
const double BORDER_RADIUS_VALUE = 16;

///
///
const EMPTY_WIDGET = SizedBox.shrink();
final Widget NO_DATA_WIDGET = Center(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    children: [
      Assets.icons.icNoData.svg(width: 215, height: 215),
      const SizedBox(height: 8),
      AppText(
        i18n.CommonData.ListDataIsEmpty,
        style: AppTextStyle.textSecondary16W500,
        textAlign: TextAlign.center,
      ),
    ],
  ),
);

final DEFAUT_BOX_SHADOWN = BoxShadow(
  color: AppColors.black.withOpacity(0.4),
  blurRadius: 5.0,
  spreadRadius: 3.0,
  offset: const Offset(4, 3),
);

final Widget NO_INTERNET = Center(
  child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        // Assets.icons.icNoInternet.svg(width: 150, height: 150),
        // const SizedBox(height: 16),
        // AppText(
        //   tr(LocaleKeys.Branch_NoInternet),
        //   style: AppTextStyle.textGray80016W600,
        // ),
        // const SizedBox(height: 8),
        // AppText(
        //   tr(LocaleKeys.Branch_CheckInternet),
        //   style: AppTextStyle.textGray80014W400,
        // ),
      ]),
);

///
///
///
CustomSharedPreferences sp = CustomSharedPreferences();
AppDatabase appDatabase = AppDatabase();
SupplyBoxHelper meritBoxHelper = SupplyBoxHelper();
NotificationHelper notificationHelper = NotificationHelper();
// 'month': 'Month',
// 'year': 'Year',
// 'monday': 'Mon',
// 'tuesday': 'Tue',
// 'wednesday': 'Wed',
// 'thursday': 'Thu',
// 'friday': 'Fri',
// 'saturday': 'Sat',
// 'sunday': 'Sun',
// 'lunar': 'Lunar',
// 'solar': 'Solar',
// 'today': 'Today',
// 'good_day': 'Auspicious Day',
// 'bad_day': 'Inauspicious Day',
// 'new_event': 'New Event',
// 'edit_event': 'Edit Event',
// 'delete_event': 'Delete Event',
// 'event_title': 'Event Title',
// 'event_description': 'Description',
// 'save': 'Save',
// 'cancel': 'Cancel',
// 'confirm_delete': 'Are you sure you want to delete this event?',
// 'yearly_recurring': 'Yearly Recurring',
// 'monthly_recurring': 'Monthly Recurring',
// 'set_reminder': 'Set Reminder',
// 'month_1': 'January',
// 'month_2': 'February',
// 'month_3': 'March',
// 'month_4': 'April',
// 'month_5': 'May',
// 'month_6': 'June',
// 'month_7': 'July',
// 'month_8': 'August',
// 'month_9': 'September',
// 'month_10': 'October',
// 'month_11': 'November',
// 'month_12': 'December',
// 'can': 'Giap,At,Binh,Dinh,Mau,Ky,Canh,Tan,Nham,Quy',
// 'chi': 'Rat,Ox,Tiger,Cat,Dragon,Snake,Horse,Goat,Monkey,Rooster,Dog,Pig',
// 'month_chi':
// 'Tiger,Cat,Dragon,Snake,Horse,Goat,Monkey,Rooster,Dog,Pig,Rat,Ox',
// 'hour_ty': 'Rat Hour',
// 'hour_dan': 'Tiger Hour',
// 'hour_mao': 'Cat Hour',
// 'solar_terms':
// 'Spring Equinox,Clear and Bright,Grain Rain,Start of Summer,Little Full Moon,Great Full Moon,Summer Solstice,Little Cold,Great Cold,Winter Solstice,Little Snow,Great Snow,Winter Solstice,Little Snow,Great Snow,Spring Equinox,Summer Solstice,Autumn Equinox,Winter Solstice,Little Snow,Great Snow,Spring Equinox,Summer Solstice,Autumn Equinox,Winter Solstice',
// 'festival_1_1': 'Lunar New Year',
// 'festival_15_1': 'First Full Moon Festival',
// 'festival_10_3': 'Hung Kings Festival',
// 'monday_short': 'Mo',
// 'tuesday_short': 'Tu',
// 'wednesday_short': 'We',
// 'thursday_short': 'Th',
// 'friday_short': 'Fr',
// 'saturday_short': 'Sa',
// 'sunday_short': 'Su',
// 'all_day': 'all day',
// 'calendar': 'Calendar',
// 'inbox': 'Inbox',
// 'events': 'Events',
// 'select_date': 'Select Date',
// 'solar_calendar': 'Solar Calendar',
// 'lunar_calendar': 'Lunar Calendar',
// 'confirm': 'Confirm',
// 'choose_date': 'Choose Date',
// 'selected_date': 'Selected Date',
// 'day': 'Day',
// 'leap_month': 'Leap',
/////
const String noInternet = 'NO_INTERNET_CONNECTION';


//