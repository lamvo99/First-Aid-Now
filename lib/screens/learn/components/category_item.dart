import 'package:first_aid/app_common_data/app_colors.dart';
import 'package:first_aid/app_common_data/app_text_sytle.dart';
import 'package:first_aid/app_common_data/export.dart';
import 'package:first_aid/generated/strings.g.dart';
import 'package:first_aid/model/export.dart';
import 'package:first_aid/shared_customization/export.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      color: category.learnCategory!.bgColor,
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: category.learnCategory!.borderColor),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 8,
        children: [
          category.learnCategory!.logo.image(width: 50, height: 50),
          Expanded(
            child: AppText(
              category.name ?? "",
              style: AppTextStyle.textSecondary14W500,
              textAlign: TextAlign.center,
            ),
          ),
          AppText(
            i18n.Learn.Lessons(num: category.numLesson.toString()),
            style: AppTextStyle.textSecondary12W500.copyWith(
              color: AppColors.gray600,
            ),
          )
        ],
      ),
    );
  }
}
