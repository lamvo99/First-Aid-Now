// Flutter imports:
import 'package:first_aid/generated/strings.g.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:readmore/readmore.dart';

import '../../../app_common_data/export.dart';

// Project imports:

class AppReadmoreText extends StatelessWidget {
  final String text;
  final int trimLines;
  final TrimMode trimMode;
  const AppReadmoreText(
      {super.key,
      required this.text,
      this.trimLines = 2,
      this.trimMode = TrimMode.Line});

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      text,
      trimMode: trimMode,
      trimLines: trimLines,
      style: AppTextStyle.textSecondary14W500,
      colorClickableText: AppColors.primary600,
      trimCollapsedText: "  ${i18n.CommonAction.ShowMore}",
      trimExpandedText: i18n.CommonAction.ShowLess,
      moreStyle:
          AppTextStyle.textGray90014W500.copyWith(color: AppColors.primary600),
      lessStyle:
          AppTextStyle.textGray90014W500.copyWith(color: AppColors.primary600),
    );
  }
}
