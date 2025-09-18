import 'package:first_aid/app_common_data/app_colors.dart';
import 'package:first_aid/app_common_data/app_text_sytle.dart';
import 'package:first_aid/gen/assets.gen.dart';
import 'package:first_aid/generated/strings.g.dart';
import 'package:first_aid/screens/home/components/title_component_widget.dart';
import 'package:first_aid/screens/home/cubit/home_cubit.dart';
import 'package:first_aid/shared_customization/export.dart';
import 'package:flutter/material.dart';

class FavouritesLessonWidget extends StatefulWidget {
  final HomeState state;

  const FavouritesLessonWidget({
    super.key,
    required this.state,
  });

  @override
  State<FavouritesLessonWidget> createState() => _FavouritesLessonWidgetState();
}

class _FavouritesLessonWidgetState extends State<FavouritesLessonWidget> {
  @override
  Widget build(BuildContext context) {
    return TitleComponentWidget(
        title: i18n.Main.Favorites,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 12,
          children: [
            if (true) ...[
              AppContainer(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                border: Border.all(color: AppColors.gray300),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                boxShadow: AppColors.shadow,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText(
                      i18n.Main.NoLesson,
                      style: AppTextStyle.textGray90014W500
                          .copyWith(color: AppColors.gray600, fontSize: 12),
                    ),
                    AppButton(
                      onPressed: () {},
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 4,
                        children: [
                          AppText(
                            i18n.Main.GoLearn,
                            style: AppTextStyle.textSecondary14W400
                                .copyWith(color: AppColors.white),
                          ),
                          Assets.icons.icArrowRight.svg(
                              colorFilter: ColorFilter.mode(
                                  AppColors.white, BlendMode.srcIn)),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ] else
              ...[],
            AppContainer(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  AppColors.primary400,
                  AppColors.primary200,
                  AppColors.primary50,
                ],
                stops: [0.0, 0.5, 1.0],
                tileMode: TileMode.clamp,
              ),
              borderRadius: BorderRadius.circular(8),
              boxShadow: AppColors.shadow2,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 8,
                children: [
                  Assets.icons.icBookOpen.svg(
                    colorFilter: ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                  Expanded(
                    child: AppText(
                      "Hồi sức tim phổi (CPR)",
                      style: AppTextStyle.textSecondary16W500,
                    ),
                  ),
                  AppContainer(
                    width: 60,
                    height: 10,
                    color: AppColors.gray300,
                    borderRadius: BorderRadius.circular(8),
                    child: Row(
                      children: [
                        AppContainer(
                          width: 36,
                          height: 10,
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.primary700,
                        ),
                      ],
                    ),
                  ),
                  AppText(
                    "60%",
                    style: AppTextStyle.textSecondary14W500,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
