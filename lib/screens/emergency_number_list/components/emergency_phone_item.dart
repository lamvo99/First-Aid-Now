import 'package:first_aid/app_common_data/app_colors.dart';
import 'package:first_aid/app_common_data/app_text_sytle.dart';
import 'package:first_aid/gen/assets.gen.dart';
import 'package:first_aid/model/emergency_number/emergency_number.dart';
import 'package:first_aid/shared_customization/export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class EmergencyPhoneItem extends StatelessWidget {
  final EmergencyNumber emergencyNumber;

  const EmergencyPhoneItem({
    super.key,
    required this.emergencyNumber,
  });

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: AppColors.gray300),
      boxShadow: AppColors.shadow2,
      color: AppColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppText(
            emergencyNumber.country,
            style: AppTextStyle.textSecondary16W600,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 2),
          AppText(
            "(${emergencyNumber.locale})",
            style: AppTextStyle.textSecondary14W400.copyWith(color: AppColors.gray600, fontSize: 12),
          ),
          SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 6,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    _makePhoneCall(emergencyNumber.police ?? "");
                  },
                  child: AppContainer(
                    color: AppColors.error600,
                    width: 1.sw,
                    padding: EdgeInsets.symmetric(vertical: 8),
                    borderRadius: BorderRadius.circular(12),
                    child: Assets.icons.icPoliceCar.svg(
                      colorFilter:
                          ColorFilter.mode(AppColors.white, BlendMode.srcIn),
                      height: 20,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    _makePhoneCall(emergencyNumber.ambulance ?? "");
                  },
                  child: AppContainer(
                    color: AppColors.error600,
                    width: 1.sw,
                    padding: EdgeInsets.symmetric(vertical: 8),
                    borderRadius: BorderRadius.circular(12),
                    child: Assets.icons.icAmbulanceCar.svg(
                      colorFilter:
                          ColorFilter.mode(AppColors.white, BlendMode.srcIn),
                      height: 20,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    _makePhoneCall(emergencyNumber.fire ?? "");
                  },
                  child: AppContainer(
                    color: AppColors.error600,
                    width: 1.sw,
                    padding: EdgeInsets.symmetric(vertical: 8),
                    borderRadius: BorderRadius.circular(12),
                    child: Assets.icons.icFireTruck.svg(
                      colorFilter:
                          ColorFilter.mode(AppColors.white, BlendMode.srcIn),
                      height: 20,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    try {
      final Uri launchUri = Uri(
        scheme: 'tel',
        path: phoneNumber,
      );
      await launchUrl(launchUri);
    } catch (e) {
      showErrorBanner(content: e.toString());
    }
  }
}
