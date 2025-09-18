import 'package:first_aid/app_common_data/app_text_sytle.dart';
import 'package:first_aid/shared_customization/export.dart';
import 'package:flutter/material.dart';

class TitleComponentWidget extends StatelessWidget {
  final String title;
  final Widget child;

  const TitleComponentWidget({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 8,
        children: [
          AppText(
            title,
            style: AppTextStyle.textSecondary14W600.copyWith(fontSize: 18),
          ),
          child,
        ],
      ),
    );
  }
}
