import 'package:first_aid/generated/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app_common_data/export.dart';
import '../../../shared_customization/export.dart';

class CalendarHeader extends StatelessWidget {
  /// Tháng hiện tại đang hiển thị
  final DateTime displayedMonth;

  /// Callback khi chuyển tháng trước/sau
  final ValueChanged<DateTime>? onMonthChanged;

  /// Callback khi nhấn nút Today
  final VoidCallback? onTodayPressed;
  final bool showTodayButton;

  const CalendarHeader({
    super.key,
    required this.displayedMonth,
    this.onMonthChanged,
    this.onTodayPressed,
    this.showTodayButton = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      padding: const EdgeInsets.only(left: 16, right: 4, bottom: 4),
      constraints: BoxConstraints(maxWidth: double.infinity),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Nút chọn tháng
          InkWell(
            onTap: () {
              DateTime date = displayedMonth;
              if (displayedMonth.month == 1) {
                date = DateTime(displayedMonth.year - 1, 12);
              } else {
                date = DateTime(displayedMonth.year, displayedMonth.month - 1);
              }
              onMonthChanged?.call(date);
            },
            child: Icon(Icons.arrow_back_ios_new_rounded, size: 18),
          ),
          SizedBox(width: 8),

          // Hiển thị tên tháng
          InkWell(
            onTap: () => _showMonthPicker(context),
            child: AppText(
              DateLunarUtils.monthName(
                displayedMonth,
              ),
              style: AppTextStyle.textSecondary14W500,
            ),
          ),

          const SizedBox(width: 8),
          AppText(
            "-",
            style: AppTextStyle.textSecondary14W500,
          ),
          const SizedBox(width: 8),

          // Hiển thị năm
          InkWell(
            onTap: () => _showYearPicker(context),
            child: Row(
              children: [
                AppText(
                  displayedMonth.year.toString(),
                  style: AppTextStyle.textSecondary14W500,
                ),
              ],
            ),
          ),
          SizedBox(width: 8),

          // Nút chuyển sang tháng tiếp theo
          InkWell(
            onTap: () {
              DateTime date = displayedMonth;
              if (displayedMonth.month == 12) {
                date = DateTime(displayedMonth.year + 1, 1);
              } else {
                date = DateTime(displayedMonth.year, displayedMonth.month + 1);
              }
              onMonthChanged?.call(date);
            },
            child: Icon(Icons.arrow_forward_ios_rounded, size: 18,),
          ),

          const Spacer(),

          // Chỉ hiển thị nút Today khi showTodayButton = true
          if (showTodayButton)
            InkWell(
              onTap: onTodayPressed,
              child: AppText(
                i18n.Lunar.Today,
                style: AppTextStyle.textSecondary14W500
                    .copyWith(color: AppColors.primary700),
              ),
            ),
        ],
      ),
    );
  }

  void _showMonthPicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      builder: (context) {
        return SizedBox(
          height: 300,
          child: GridView.builder(
            padding: const EdgeInsets.all(16),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 2,
            ),
            itemCount: 12,
            itemBuilder: (context, index) {
              final month = DateTime(displayedMonth.year, index + 1);
              final isSelected = month.month == displayedMonth.month;

              return InkWell(
                onTap: () {
                  Navigator.pop(context);
                  onMonthChanged?.call(month);
                },
                child: AppContainer(
                  border: Border.all(
                      color:
                          isSelected ? AppColors.primary600 : AppColors.white),
                  borderRadius: BorderRadius.circular(8),
                  alignment: Alignment.center,
                  child: AppText(
                      DateLunarUtils.monthName(
                        month,
                        short: true,
                      ),
                      style: AppTextStyle.textSecondary14W500.copyWith(
                        fontWeight:
                            isSelected ? FontWeight.w600 : FontWeight.w400,
                      )),
                ),
              );
            },
          ),
        );
      },
    );
  }

  void _showYearPicker(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          backgroundColor: AppColors.white,
          child: Container(
            width: 1.sw,
            height: 400,
            padding: const EdgeInsets.all(16),
            child: YearPicker(
              firstDate: DateTime(1900),
              lastDate: DateTime(2100),
              selectedDate: displayedMonth,
              onChanged: (date) {
                Navigator.pop(context);
                onMonthChanged?.call(date);
              },
            ),
          ),
        );
      },
    );
  }
}
