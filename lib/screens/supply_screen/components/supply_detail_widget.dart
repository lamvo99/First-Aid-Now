import 'package:first_aid/gen/assets.gen.dart';
import 'package:first_aid/generated/strings.g.dart';
import 'package:first_aid/model/export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../app_common_data/export.dart';
import '../../../shared_customization/export.dart';

class SupplyDetailWidget extends StatelessWidget {
  final VoidCallback? cancelFunc;
  final SupplyModel supplyModel;

  const SupplyDetailWidget({
    super.key,
    this.cancelFunc,
    required this.supplyModel,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppContainer(
            margin: const EdgeInsets.all(20),
            color: AppColors.white,
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 16,
              bottom: 24,
            ),
            borderRadius: BorderRadius.circular(15),
            constraints: BoxConstraints(
              maxHeight: .7.sh,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  spacing: 8,
                  children: [
                    Expanded(
                      child: AppText(
                        i18n.Supplies.Detail,
                        style: AppTextStyle.textSecondary14W500
                            .copyWith(fontSize: 20),
                      ),
                    ),
                    GestureDetector(
                      onTap: cancelFunc,
                      child: Assets.icons.icClose.svg(),
                    )
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  spacing: 6,
                  children: [
                    supplyModel.supplyCategory!.icon.svg(width: 50),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AppText(
                            supplyModel.name ?? "",
                            style: AppTextStyle.textSecondary14W600
                                .copyWith(fontSize: 16),
                          ),
                          AppText(
                              "${i18n.Supplies.Quantity}: ${supplyModel.quantity ?? 0}",
                              style: AppTextStyle.textSecondary14W400),
                        ],
                      ),
                    ),
                  ],
                ),
                
                AppText(
                    "${i18n.Supplies.Category}: ${supplyModel.supplyCategory?.title ?? ""}",
                    style: AppTextStyle.textSecondary14W400),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [],
                ),
                if (supplyModel.dateExpired != null) ...[
                  AppText(
                      "${i18n.Supplies.DateExpired}: ${supplyModel.dateExpired!.toDayMonthYear()}",
                      style: AppTextStyle.textSecondary14W400),
                ],
                AppText(
                    "${i18n.Supplies.Category}: ${supplyModel.supplyCategory?.title ?? ""}",
                    style: AppTextStyle.textSecondary14W400),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
