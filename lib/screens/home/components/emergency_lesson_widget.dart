import 'package:first_aid/app_common_data/app_colors.dart';
import 'package:first_aid/app_common_data/app_text_sytle.dart';
import 'package:first_aid/gen/assets.gen.dart';
import 'package:first_aid/generated/strings.g.dart';
import 'package:first_aid/screens/home/components/title_component_widget.dart';
import 'package:first_aid/screens/home/cubit/home_cubit.dart';
import 'package:first_aid/shared_customization/export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmergencyLessonWidget extends StatefulWidget {
  final HomeState state;

  const EmergencyLessonWidget({super.key, required this.state});

  @override
  State<EmergencyLessonWidget> createState() => _EmergencyLessonWidgetState();
}

class _EmergencyLessonWidgetState extends State<EmergencyLessonWidget> {
  @override
  Widget build(BuildContext context) {
    return TitleComponentWidget(
      title: i18n.Main.Emergency,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 8,
          children: [
            ...List.generate(7, (index) {
              return EmergencyLessonItem(
                onTap: () {},
              );
            }).toList()
          ],
        ),
      ),
    );
  }
}

class EmergencyLessonItem extends StatelessWidget {
  final Function() onTap;

  const EmergencyLessonItem({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      width: 100.w,
      height: 150.h,
      border: Border.all(color: AppColors.gray300),
      color: AppColors.error700,
      boxShadow: AppColors.shadow2,
      borderRadius: BorderRadius.circular(12),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 8,
        children: [
          Assets.icons.icQuiz.svg(
              colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn)),
          AppText(
            "Dị vật đường thở",
            style: AppTextStyle.textSecondary14W500
                .copyWith(color: AppColors.white),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
