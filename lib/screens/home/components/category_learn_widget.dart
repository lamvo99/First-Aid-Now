import 'package:first_aid/app_common_data/export.dart';
import 'package:first_aid/data/category/category_data.dart';
import 'package:first_aid/generated/strings.g.dart';
import 'package:first_aid/model/category/category.dart';
import 'package:first_aid/screens/home/components/title_component_widget.dart';
import 'package:first_aid/screens/home/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared_customization/export.dart';

class CategoryLearnWidget extends StatelessWidget {
  final HomeState state;

  const CategoryLearnWidget({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return TitleComponentWidget(
      title: i18n.Main.LearnCategory,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 8,
          children: [
            ...learnCategories.map((category) {
              return CategoryLearnItem(learnCategory: category);
            })
          ],
        ),
      ),
    );
  }
}

class CategoryLearnItem extends StatelessWidget {
  final Category learnCategory;

  const CategoryLearnItem({
    super.key,
    required this.learnCategory,
  });

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      width: 100.w,
      height: 150.h,
      color: AppColors.white,
      boxShadow: AppColors.shadow2,
      borderRadius: BorderRadius.circular(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 8,
        children: [
          AppContainer(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            borderRadius: BorderRadius.circular(12),
            color: AppColors.primary400,
            height: 140,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppContainer(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(999),
                  padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                  child: learnCategory.learnCategory!.logo.image(
                    width: 60,
                    height: 60,
                  ),
                ),
                AppText(
                  learnCategory.name,
                  style: AppTextStyle.textSecondary14W500
                      .copyWith(color: AppColors.white),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: AppText(
                i18n.Learn.Lessons(num: learnCategory.numLesson.toString()),
                style: AppTextStyle.textSecondary14W500.copyWith(fontSize: 12),
              ),
            ),
          )
        ],
      ),
    );
  }
}
