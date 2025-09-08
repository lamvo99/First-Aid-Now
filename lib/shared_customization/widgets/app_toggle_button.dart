import 'package:first_aid/app_common_data/app_colors.dart';
import 'package:flutter/material.dart';

import 'app_container.dart';

class AppToggleButton extends StatefulWidget {
  final bool value;
  final Function(bool) onChanged;
  const AppToggleButton({super.key, required this.value, required this.onChanged});

  @override
  State<AppToggleButton> createState() => _AppToggleButtonState();
}

class _AppToggleButtonState extends State<AppToggleButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()  {
        widget.onChanged(!widget.value);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: 36,
        height: 20,
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(999),
          color: widget.value ? AppColors.gray800 : AppColors.gray400,
        ),
        child: AnimatedAlign(
          duration: const Duration(milliseconds: 300),
          alignment: widget.value ? Alignment.centerRight : Alignment.centerLeft,
          child: AppContainer(
            width: 16,
            height: 16,
            borderRadius: BorderRadius.circular(9999),
            color: Colors.white,
            child: widget.value
                ? const Icon(Icons.check_rounded, size: 12, color: AppColors.gray800)
                : const Icon(Icons.check_rounded, size: 12, color: AppColors.gray400),
          ),
        ),
      ),
    );
  }
}
