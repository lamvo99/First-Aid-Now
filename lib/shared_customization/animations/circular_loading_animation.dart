// Flutter imports:
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

// Project imports:
import '/app_common_data/app_colors.dart';

class CircularLoadingAnimation extends StatelessWidget {
  final Color color;
  const CircularLoadingAnimation({
    super.key,
    this.color = AppColors.primary600,
  });

  @override
  Widget build(BuildContext context) {
    return LoadingAnimationWidget.staggeredDotsWave(
      color: color,
      size: 50,
    );
  }
}
