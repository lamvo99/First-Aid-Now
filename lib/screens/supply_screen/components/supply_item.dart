import 'package:bot_toast/bot_toast.dart';
import 'package:first_aid/app_common_data/app_colors.dart';
import 'package:first_aid/app_common_data/app_text_sytle.dart';
import 'package:first_aid/app_common_data/enum/supplies_catgory.dart';
import 'package:first_aid/gen/assets.gen.dart';
import 'package:first_aid/generated/strings.g.dart';
import 'package:first_aid/model/export.dart';
import 'package:first_aid/shared_customization/export.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SupplyItem extends StatelessWidget {
  final SupplyModel supplyModel;
  final Function() onEdit;
  final Function() onDelete;
  final Function() onDetail;

  const SupplyItem({
    super.key,
    required this.supplyModel,
    required this.onEdit,
    required this.onDelete,
    required this.onDetail,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onDetail,
      child: AppContainer(
        border:
            Border.all(color: supplyModel.dateExpired.checkExpiredBorderColor),
        borderRadius: BorderRadius.circular(12),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        color: supplyModel.isImportant == true ? AppColors.purple200 :Colors.white,
        boxShadow: AppColors.shadow2,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 6,
          children: [
            supplyModel.supplyCategory!.icon.svg(width: 32, height: 32),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                spacing: 2,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    spacing: 4,
                    children: [
                      Flexible(
                        child: AppText(
                          supplyModel.name ?? "",
                          style: AppTextStyle.textSecondary14W500,
                        ),
                      ),
                      if (supplyModel.isChecked == true) ...[
                        Assets.icons.icSquareCheck.svg(
                            width: 20,
                            colorFilter: ColorFilter.mode(
                                AppColors.success600, BlendMode.srcIn))
                      ],
                    ],
                  ),
                  AppText(
                    "${i18n.Supplies.Quantity}: ${supplyModel.quantity ?? 0}",
                    style:
                        AppTextStyle.textSecondary14W400.copyWith(fontSize: 12),
                  ),
                  if (supplyModel.dateExpired != null) ...[
                    AppText(
                      "${i18n.Supplies.DateExpired}: ${supplyModel.dateExpired!.toDayMonthYear()}",
                      style:
                          AppTextStyle.textSecondary14W400.copyWith(fontSize: 12),
                    ),
                  ],
                  if (supplyModel.note.isNotEmptyOrNull) ...[
                    AppText(
                      "${i18n.Supplies.Note}: ${supplyModel.note ?? ""}",
                      style:
                          AppTextStyle.textSecondary14W400.copyWith(fontSize: 12),
                    ),
                  ]
                ],
              ),
            ),
            PopupMenuButton<int>(
              position: PopupMenuPosition.under,
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              splashRadius: 20,
              onSelected: (value) {
                if (value == 0) {
                  onEdit();
                } else {
                  onDelete();
                }
              },
              color: AppColors.white,
              padding: EdgeInsets.zero,
              itemBuilder: (context) {
                return [
                  PopupMenuItem<int>(
                    value: 0,
                    child: AppContainer(
                      color: AppColors.white,
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      borderRadius: BorderRadius.circular(8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        spacing: 4,
                        children: [
                          Assets.icons.icEdit.svg(
                              width: 16,
                              height: 16,
                              colorFilter: ColorFilter.mode(
                                  AppColors.SECONDARY, BlendMode.srcIn)),
                          AppText(
                            i18n.Supplies.Edit,
                            style: AppTextStyle.textSecondary14W400,
                          )
                        ],
                      ),
                    ),
                  ),
                  PopupMenuItem<int>(
                    value: 1,
                    child: AppContainer(
                      color: AppColors.white,
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      borderRadius: BorderRadius.circular(8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        spacing: 4,
                        children: [
                          Assets.icons.icDelete.svg(
                              width: 16,
                              height: 16,
                              colorFilter: ColorFilter.mode(
                                  AppColors.error600, BlendMode.srcIn)),
                          AppText(
                            i18n.Supplies.Delete,
                            style: AppTextStyle.textSecondary14W400,
                          )
                        ],
                      ),
                    ),
                  ),
                ];
              },
              child: AppContainer(
                borderRadius: BorderRadius.circular(16),
                child: Assets.icons.icDotMenu.svg(width: 24),
              ),
            )
          ],
        ),
      ),
    );
  }
}
