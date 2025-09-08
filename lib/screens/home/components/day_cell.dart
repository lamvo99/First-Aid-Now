import 'package:flutter/material.dart';

import '../../../app_common_data/export.dart';
import '../../../model/export.dart';
import '../../../shared_customization/export.dart';

class DayCell extends StatelessWidget {
  /// Ngày dương lịch
  final DateTime date;

  /// Ngày âm lịch
  final LunarDate lunarDate;

  /// Ngày được chọn
  final DateTime? selectedDate;

  /// Có phải là ngày trong tháng hiện tại không
  final bool isCurrentMonth;

  /// Callback khi chọn ngày
  final ValueChanged<DateTime>? onDateSelected;

  /// Danh sách sự kiện cá nhân trong ngày
  final List<PersonalEvent> personalEvents;

  const DayCell({
    super.key,
    required this.date,
    required this.lunarDate,
    this.selectedDate,
    this.isCurrentMonth = true,
    this.onDateSelected,
    this.personalEvents = const [],
  });

  bool checkNeedShowMonth() {
    final isFirstDayOfLunarMonth = lunarDate.day == 1;

    final isFirstDayOfSolarMonth = date.day == 1;
    return isFirstDayOfSolarMonth || isFirstDayOfLunarMonth;
  }

  @override
  Widget build(BuildContext context) {
    final isSelected =
        selectedDate != null && DateUtils.isSameDay(date, selectedDate);
    final isToday = DateLunarUtils.isToday(date);
    final isGoodDay = LunarUtils.isGoodDay(date);

    if (!isCurrentMonth) {
      return Container();
    }

    final shouldShowMonth = checkNeedShowMonth();

    return InkWell(
      onTap: isCurrentMonth ? () => onDateSelected?.call(date) : null,
      borderRadius: BorderRadius.circular(10),
      child: AppContainer(
        border: Border.all(
            color: isToday ? AppColors.primary600 : AppColors.gray700),
        color: isSelected ? AppColors.primary600 : AppColors.white,
        borderRadius: BorderRadius.circular(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppText(
              date.day.toString(),
              textAlign: TextAlign.center,
              style: AppTextStyle.textSecondary14W500.copyWith(
                color: isSelected
                    ? AppColors.white
                    : isToday
                        ? AppColors.primary600
                        : AppColors.gray900,
                fontSize: 14,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.w400,
              ),
            ),
            Text(
              shouldShowMonth
                  ? '${lunarDate.day}/${lunarDate.month}'
                  : lunarDate.day.toString(),
              style: AppTextStyle.textSecondary14W500.copyWith(
                  color: isSelected ? AppColors.white : AppColors.gray600,
                  fontSize: 10),
            ),
            SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 2,
              children: [
                if (personalEvents.isNotEmptyOrNull) ...[
                  AppContainer(
                    width: 5,
                    height: 5,
                    color: AppColors.gray900,
                    borderRadius: BorderRadius.circular(999),
                  ),
                ],
              ],
            )
          ],
        ),
      ),
    );
  }

// Color _getTextColor(bool isSelected, bool isToday, DateTime date) {
//   if (!isCurrentMonth) return theme.outsideDayColor;
//   if (isSelected) return theme.selectedDayTextColor;
//   if (isToday) return theme.todayTextColor;
//   if (date.weekday == 7) return theme.sundayColor;
//   if (date.weekday == 6) return theme.saturdayColor;
//   return theme.textColor;
// }
//
// Color _getSubtextColor(bool isSelected) {
//   if (!isCurrentMonth) return theme.outsideDayColor;
//   if (isSelected) return theme.selectedDaySubtextColor;
//   return theme.subtextColor;
// }
}
