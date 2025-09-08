import 'package:flutter/material.dart';

import '../../../app_common_data/export.dart';
import '../../../model/export.dart';
import '../../../shared_customization/export.dart';

class MeritJournalItem extends StatelessWidget {
  final MeritModel meritModel;
  final Function() onTap;

  const MeritJournalItem({
    super.key,
    required this.meritModel,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AppContainer(
        borderRadius: BorderRadius.circular(12),
        color: meritModel.meritType?.backgroundColor,
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 4,
          children: [
            if (meritModel.meritType != null)
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AppContainer(
                    width: 32,
                    height: 32,
                    borderRadius: BorderRadius.circular(999),
                    padding: EdgeInsets.all(6),
                    color: AppColors.gray600,
                    child: meritModel.meritType!.icon.svg(),
                  ),
                  SizedBox(width: 8),
                  AppText(
                    meritModel.meritType!.title,
                    style: AppTextStyle.textSecondary14W500,
                  ),
                ],
              ),
            AppText(
              meritModel.name,
              style: AppTextStyle.textGray90014W500,
              maxLines: 1,
            ),
            AppText(
              meritModel.createdAt.toDateFromMilliseconds,
              style: AppTextStyle.textSecondary14W500,
            ),
            Flexible(
              child: AppText(
                meritModel.description ?? "",
                style: AppTextStyle.textSecondary14W500,
                maxLines: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
