import 'package:first_aid/app_common_data/app_colors.dart';
import 'package:first_aid/app_common_data/app_text_sytle.dart';
import 'package:first_aid/gen/assets.gen.dart';
import 'package:first_aid/shared_customization/export.dart';
import 'package:first_aid/shared_customization/helpers/dialogs/dialog_helper.dart';
import 'package:flutter/material.dart';

import 'app_container.dart';
import 'custom_widgets/app_field.dart';
import 'texts/app_text.dart';

class AppSelectDate extends StatefulWidget {
  final String label;
  final bool isRequired;
  final DateTime? initDateTime;
  final DateTime? minDate;
  final DateTime? lastDate;
  final Function(DateTime) onChanged;

  const AppSelectDate({
    super.key,
    required this.label,
    required this.isRequired,
    required this.onChanged,
    this.initDateTime,
    this.minDate,
    this.lastDate,
  });

  @override
  State<AppSelectDate> createState() => _AppSelectDateState();
}

class _AppSelectDateState extends State<AppSelectDate> {
  DateTime? _currentDateTime;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _currentDateTime = widget.initDateTime;
  }

  @override
  Widget build(BuildContext context) {
    return AppField(
      label: widget.label,
      isRequired: widget.isRequired,
      errorLabel: "",
      child: AppContainer(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
        child: GestureDetector(
          onTap: () {
            showCalendarPicker(
              context,
              onChanged: (DateTime value) {
                widget.onChanged(value);
                setState(() {
                  _currentDateTime = value;
                });
              },
              minDate: widget.minDate,
              lastDate: widget.lastDate,
              initDateTime: _currentDateTime ?? DateTime.now(),
            );
          },
          child: AppContainer(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
            border: Border.all(color: AppColors.primaryBorderColor, width: 0.5),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Row(
              children: [
                Expanded(
                  child: AppText(
                    _currentDateTime?.toDayMonthYear() ?? "",
                    style: AppTextStyle.textSecondary14W500,
                  ),
                ),
                const SizedBox(width: 12),
                Assets.icons.icCalendar.svg(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
