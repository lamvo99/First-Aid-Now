import 'package:first_aid/gen/assets.gen.dart';
import 'package:first_aid/generated/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app_common_data/export.dart';
import '../../../model/export.dart';
import '../../../shared_customization/export.dart';

class PersonalEventItem extends StatelessWidget {
  final PersonalEvent event;
  final DateTime gregorianDate;
  final LunarDate lunarDate;
  final Function() onEdit;

  const PersonalEventItem({
    super.key,
    required this.event,
    required this.gregorianDate,
    required this.lunarDate,
    required this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      width: 1.sw,
      color: event.eventType?.bgColor,
      borderRadius: BorderRadius.circular(16),
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 6,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 6,
            children: [
              event.eventType!.icon.svg(
                width: 40,
                height: 40,
                colorFilter: ColorFilter.mode(
                    event.eventType?.labelColor ?? AppColors.gray900,
                    BlendMode.srcIn),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AppText(
                      event.eventName,
                      style: AppTextStyle.textSecondary14W500
                          .copyWith(color: event.eventType?.labelColor),
                    ),
                    AppText(
                      event.note ?? "",
                      style: AppTextStyle.textSecondary14W500
                          .copyWith(color: event.eventType?.labelColor),
                      maxLines: 3,
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: onEdit,
                child: Assets.icons.icMenu.svg(
                  colorFilter: ColorFilter.mode(
                      event.eventType?.labelColor ?? AppColors.gray900,
                      BlendMode.srcIn),
                ),
              )
            ],
          ),
          SizedBox(height: 4.h),
          AppText(
            event.eventType!.title,
            style: AppTextStyle.textSecondary14W500
                .copyWith(color: event.eventType?.labelColor),
          ),
        ],
      ),
    );
  }
}
