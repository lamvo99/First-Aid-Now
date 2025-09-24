import 'package:first_aid/app_common_data/app_text_sytle.dart';
import 'package:first_aid/shared_customization/export.dart';
import 'package:flutter/material.dart';

class TitleComponentWidget extends StatelessWidget {
  final String title;
  final Widget child;
  final Widget? action;

  const TitleComponentWidget({
    super.key,
    required this.title,
    required this.child,
    this.action,
  });

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 8,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: AppText(
                  title,
                  style: AppTextStyle.textSecondary14W600.copyWith(fontSize: 18),
                ),
              ),
              action ?? const SizedBox.shrink(),
            ],
          ),
          child,
        ],
      ),
    );
  }
}
