import 'package:first_aid/app_common_data/app_text_sytle.dart';
import 'package:first_aid/gen/assets.gen.dart';
import 'package:first_aid/shared_customization/export.dart';
import 'package:flutter/material.dart';

class ActionItem extends StatelessWidget {
  final Function() onTap;
  final String title;
  final SvgGenImage icon;
  final Color color;

  const ActionItem({
    super.key,
    required this.onTap,
    required this.icon,
    required this.color,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: AppContainer(
        color: color,
        height: 120,
        borderRadius: BorderRadius.circular(12),
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon.svg(
              width: 30,
              height: 30,
            ),
            SizedBox(
              height: 6,
            ),
            AppText(
              title,
              maxLines: 2,
              style: AppTextStyle.textSecondary14W500,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
