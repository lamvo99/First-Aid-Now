// Flutter imports:
import 'package:first_aid/generated/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app_common_data/export.dart';
import '../export.dart';


// Package imports:

// Project imports:

class AppActionEditWidget extends StatelessWidget {
  final Function() onCancel;
  final Function() onConfirm;
  final String? lableCancel;
  final String? lableConfirm;
  final Color color;
  final List<BoxShadow>? boxShadow;
  final EdgeInsets padding;

  const AppActionEditWidget({
    super.key,
    required this.onCancel,
    required this.onConfirm,
    this.lableCancel,
    this.lableConfirm,
    this.color = Colors.white,
    this.padding = EdgeInsets.zero,
    this.boxShadow,
  });

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      padding: padding,
      boxShadow: boxShadow,
      color: color,
      child: Row(
        children: [
          Expanded(
            child: AppButton(
              onPressed: onCancel,
              label: lableCancel ?? i18n.CommonAction.Cancel,
              color: Colors.white,
              labelColor: AppColors.gray800,
              borderSide: const BorderSide(color: AppColors.gray300),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: AppButton(
              onPressed: onConfirm,
              label: lableConfirm ?? i18n.CommonAction.Update,
              width: 1.sw,
            ),
          ),
        ],
      ),
    );
  }
}
