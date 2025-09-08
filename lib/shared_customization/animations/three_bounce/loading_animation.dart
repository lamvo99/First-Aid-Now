// Flutter imports:
import 'package:first_aid/app_common_data/app_colors.dart';
import 'package:first_aid/shared_customization/widgets/custom_widgets/app_shimmer_list.dart';
import 'package:flutter/material.dart';

// Project imports:
import 'fade_in_out.dart';

class LoadingAnimation extends StatelessWidget {
  final Color color;

  const LoadingAnimation({super.key, this.color = AppColors.gray600});
  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: FadeInOut(
    //       visible: true,
    //       child: Center(child: ThreeBounce(color: color, size: 20.0))),
    // );

    return const FadeInOut(
        visible: true, child: Center(child: ShimmerLoadingScreen()));
  }
}
