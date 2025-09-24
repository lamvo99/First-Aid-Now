import 'dart:io';

import 'package:first_aid/app_common_data/app_colors.dart';
import 'package:first_aid/app_common_data/app_text_sytle.dart';
import 'package:first_aid/app_common_data/common_data/global_variable.dart';
import 'package:first_aid/app_common_data/enum/blood_type.dart';
import 'package:first_aid/app_common_data/enum/gender_type.dart';
import 'package:first_aid/app_common_data/enum/relationship_type.dart';
import 'package:first_aid/gen/assets.gen.dart';
import 'package:first_aid/generated/strings.g.dart';
import 'package:first_aid/model/export.dart';
import 'package:first_aid/screens/emergency_card/cubit/emergency_card_cubit.dart';
import 'package:first_aid/screens/home/components/title_component_widget.dart';
import 'package:first_aid/shared_customization/export.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class EmergencyCardExportWidget extends StatelessWidget {
  final EmergencyCard emergencyCard;

  const EmergencyCardExportWidget({super.key, required this.emergencyCard});

  @override
  Widget build(BuildContext context) {
    VisibilityInfo? visibilityInfo = emergencyCard.visibility;
    return AppContainer(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      color: AppColors.gray50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 12,
        children: [
          _personalInfo(),
          _medicalInfo(),
          if (visibilityInfo?.emergencyContacts == true)
            _emergencyContactInfo(),
          _instructionsInfo(),
        ],
      ),
    );
  }

  Widget _personalInfo() {
    Owner? owner = emergencyCard.owner;
    return TitleComponentWidget(
      title: i18n.EmergencyInfo.Info,
      child: Row(
        children: [
          AppImage.avatar(
            size: 100,
            fit: BoxFit.cover,
            borderRadius: BorderRadius.circular(990),
            file: (owner?.photoUrl.isNotEmptyOrNull ?? false)
                ? File(owner!.photoUrl!)
                : null,
          ),
          SizedBox(width: 6),
          Expanded(
            child: AppContainer(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8,
                children: [
                  AppText(
                    owner?.fullName ?? "",
                    style:
                        AppTextStyle.textSecondary16W500.copyWith(fontSize: 18),
                  ),
                  AppText(
                    "${i18n.EmergencyInfo.DateOfBirth}: ${owner?.dateOfBirth?.toDateFromMilliseconds ?? ""}",
                  ),
                  AppText(
                    "${i18n.EmergencyInfo.Gender}: ${owner?.gender.title ?? ""}",
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _medicalInfo() {
    MedicalInfo? medicalInfo = emergencyCard.medicalInfo;
    VisibilityInfo? visibilityInfo = emergencyCard.visibility;
    return TitleComponentWidget(
      title: i18n.EmergencyInfo.MedicalInfo,
      child: AppContainer(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        child: Column(
          spacing: 6,
          children: [
            if (visibilityInfo?.bloodType == true)
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                spacing: 8,
                children: [
                  Expanded(
                    flex: 20,
                    child: AppText(
                      i18n.EmergencyInfo.BloodType,
                      style: AppTextStyle.textSecondary14W400,
                    ),
                  ),
                  Expanded(
                    flex: 35,
                    child: AppText(
                      medicalInfo?.bloodType.title ?? "",
                      textAlign: TextAlign.end,
                      style: AppTextStyle.textSecondary14W500,
                    ),
                  ),
                ],
              ),
            if (visibilityInfo?.allergies == true)
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                spacing: 8,
                children: [
                  Expanded(
                    flex: 20,
                    child: AppText(
                      i18n.EmergencyInfo.Allergy,
                      style: AppTextStyle.textSecondary14W400,
                    ),
                  ),
                  Expanded(
                    flex: 35,
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.start,
                      alignment: WrapAlignment.end,
                      runSpacing: 6,
                      spacing: 6,
                      children: (medicalInfo?.allergies ?? [])
                          .map(
                            (e) => AppContainer(
                              borderRadius: BorderRadius.circular(8),
                              color: AppColors.success400,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              child: AppText(
                                e,
                                style: AppTextStyle.textSecondary14W500
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ],
              ),
            if (visibilityInfo?.medications == true)
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                spacing: 8,
                children: [
                  Expanded(
                    flex: 20,
                    child: AppText(
                      i18n.EmergencyInfo.Medication,
                      style: AppTextStyle.textSecondary14W400,
                    ),
                  ),
                  Expanded(
                    flex: 35,
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.start,
                      alignment: WrapAlignment.end,
                      runSpacing: 6,
                      spacing: 6,
                      children: (medicalInfo?.medications ?? [])
                          .map(
                            (e) => AppContainer(
                              borderRadius: BorderRadius.circular(8),
                              color: AppColors.success400,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              child: AppText(
                                e,
                                style: AppTextStyle.textSecondary14W500
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ],
              ),
            if (visibilityInfo?.conditions == true)
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                spacing: 8,
                children: [
                  Expanded(
                    flex: 20,
                    child: AppText(
                      i18n.EmergencyInfo.MedicalCondition,
                      style: AppTextStyle.textSecondary14W400,
                    ),
                  ),
                  Expanded(
                    flex: 35,
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.start,
                      alignment: WrapAlignment.end,
                      runSpacing: 6,
                      spacing: 6,
                      children: (medicalInfo?.medicalConditions ?? [])
                          .map(
                            (e) => AppContainer(
                              borderRadius: BorderRadius.circular(8),
                              color: AppColors.success400,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              child: AppText(
                                e,
                                style: AppTextStyle.textSecondary14W500
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ],
              ),
            if (visibilityInfo?.organDonor == true)
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                spacing: 8,
                children: [
                  Expanded(
                    flex: 20,
                    child: AppText(
                      i18n.EmergencyInfo.OrganDonation,
                      style: AppTextStyle.textSecondary14W400,
                    ),
                  ),
                  Expanded(
                    flex: 35,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        AppToggleButton(
                            value: medicalInfo?.organDonor ?? false,
                            onChanged: (value) {}),
                      ],
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }

  Widget _emergencyContactInfo() {
    List<EmergencyContact> contacts = emergencyCard.emergencyContacts ?? [];
    return TitleComponentWidget(
      title: i18n.EmergencyInfo.EmergencyContact,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 8,
        children: [
          if (contacts.isEmptyOrNull) ...[
            NO_DATA_WIDGET
          ] else ...[
            ...List.generate(contacts.length, (index) {
              return AppContainer(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AppText(
                      i18n.EmergencyInfo.EmergencyContactNum(num: index + 1),
                      style: AppTextStyle.textSecondary16W500,
                    ),
                    SizedBox(height: 8),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      spacing: 6,
                      children: [
                        Icon(
                          CupertinoIcons.person,
                          size: 24,
                          color: AppColors.SECONDARY,
                        ),
                        AppText(
                          "${contacts[index].name ?? ""} (${contacts[index].relationship.title ?? ""})",
                          style: AppTextStyle.textSecondary14W500,
                        )
                      ],
                    ),
                    SizedBox(height: 6),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      spacing: 6,
                      children: [
                        Icon(
                          CupertinoIcons.phone,
                          size: 24,
                          color: AppColors.SECONDARY,
                        ),
                        InkWell(
                          onTap: () async {
                            try {
                              final Uri launchUri = Uri(
                                scheme: 'tel',
                                path: contacts[index].phoneNumber ?? "",
                              );
                              await launchUrl(launchUri);
                            } catch (e) {
                              showErrorBanner(content: e.toString());
                            }
                          },
                          child: AppText(
                            contacts[index].phoneNumber ?? "",
                            style: AppTextStyle.textSecondary14W500.copyWith(
                              decorationStyle: TextDecorationStyle.solid,
                              decorationColor: AppColors.SECONDARY,
                            ),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }),
          ]
        ],
      ),
    );
  }

  Widget _instructionsInfo() {
    String? instructions = emergencyCard.instructions;
    return TitleComponentWidget(
      title: i18n.EmergencyInfo.NoteSpecific,
      child: AppContainer(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (instructions.isEmptyOrNull) ...[
              AppText(
                i18n.EmergencyInfo.NoNote,
                style: AppTextStyle.textSecondary14W400,
                textAlign: TextAlign.center,
              ),
            ] else ...[
              AppText(instructions ?? "",
                  style: AppTextStyle.textSecondary14W400),
            ]
          ],
        ),
      ),
    );
  }
}
