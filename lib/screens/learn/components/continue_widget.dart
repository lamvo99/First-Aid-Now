import 'package:first_aid/app_common_data/export.dart';
import 'package:first_aid/generated/strings.g.dart';
import 'package:first_aid/screens/home/components/title_component_widget.dart';
import 'package:first_aid/screens/learn/cubit/learn_cubit.dart';
import 'package:first_aid/shared_customization/export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContinueWidget extends StatefulWidget {
  final LearnState state;

  const ContinueWidget({
    super.key,
    required this.state,
  });

  @override
  State<ContinueWidget> createState() => _ContinueWidgetState();
}

class _ContinueWidgetState extends State<ContinueWidget> {
  @override
  Widget build(BuildContext context) {
    return TitleComponentWidget(
        title: i18n.Learn.Continue,
        child: Stack(
          children: [
            AppImage(
              width: 1.sw,
              height: 160,
              borderRadius: BorderRadius.circular(16),
              url:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqILE7BqVXf-jMPN7JzT0zVLZ3y0z5h8j8BQ&s",
            ),
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              bottom: 0,
              child: AppContainer(
                width: 1.sw,
                borderRadius: BorderRadius.circular(16),
                color: AppColors.white.withValues(alpha: .7),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AppText(
                      i18n.Learn.Continue,
                      style: AppTextStyle.textSecondary14W600
                          .copyWith(color: AppColors.gray500),
                    ),
                    Flexible(
                      child: AppText(
                        "CPR người lớn: Các bước cơ bản",
                        style: AppTextStyle.textSecondary16W600
                            .copyWith(fontSize: 18),
                      ),
                    ),
                    AppText(
                      "${i18n.Learn.Of}: ${"Cấp cưu"}",
                      style: AppTextStyle.textSecondary14W600
                          .copyWith(color: AppColors.gray500),
                    ),
                    Spacer(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      spacing: 16,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              // Row(
                              //   children: [
                              //     Expanded(
                              //       child: Stack(
                              //         children: [
                              //           AppContainer(
                              //             width: 1.sw,
                              //             borderRadius: BorderRadius.circular(8),
                              //             color: AppColors.gray300,
                              //             height: 10,
                              //           ),
                              //           Positioned(
                              //             right: 0,
                              //             child: AppContainer(
                              //               width: 0.75.sw,
                              //               borderRadius: BorderRadius.circular(8),
                              //               color: AppColors.PRIMARY_BASE,
                              //               height: 10,
                              //             ),
                              //           ),
                              //         ],
                              //       ),
                              //     ),
                              //   ],
                              // ),
                              AppText(
                                "75% ${i18n.Learn.Complete}",
                                style: AppTextStyle.textSecondary14W600
                                    .copyWith(color: AppColors.gray600),
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: AppContainer(
                            width: 50,
                            height: 50,
                            borderRadius: BorderRadius.circular(999),
                            color: AppColors.PRIMARY_BASE,
                            child: Center(
                              child: AppText(
                                i18n.CommonAction.Continue,
                                style: AppTextStyle.textSecondary12W500
                                    .copyWith(color: AppColors.white),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
