import 'dart:io';
import 'dart:typed_data';

import 'package:first_aid/app_common_data/app_colors.dart';
import 'package:first_aid/app_common_data/app_text_sytle.dart';
import 'package:first_aid/app_common_data/common_data/global_variable.dart';
import 'package:first_aid/app_common_data/enum/blood_type.dart';
import 'package:first_aid/app_common_data/enum/gender_type.dart';
import 'package:first_aid/app_common_data/enum/relationship_type.dart';
import 'package:first_aid/gen/assets.gen.dart';
import 'package:first_aid/generated/strings.g.dart';
import 'package:first_aid/model/export.dart';
import 'package:first_aid/screens/emergency_card/components/emergency_card_export_widget.dart';
import 'package:first_aid/screens/emergency_card/cubit/emergency_card_cubit.dart';
import 'package:first_aid/screens/home/components/title_component_widget.dart';
import 'package:first_aid/shared_customization/export.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:screenshot/screenshot.dart';
import 'package:url_launcher/url_launcher.dart';

class EmergencyCardInfoWidget extends StatefulWidget {
  final EmergencyCardState state;

  const EmergencyCardInfoWidget({super.key, required this.state});

  @override
  State<EmergencyCardInfoWidget> createState() =>
      _EmergencyCardInfoWidgetState();
}

class _EmergencyCardInfoWidgetState extends State<EmergencyCardInfoWidget> {
  EmergencyCardState get state => widget.state;
  ScreenshotController screenshotController = ScreenshotController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Screenshot(
          controller: screenshotController,
          child: EmergencyCardExportWidget(
            emergencyCard: state.emergencyCard!,
          ),
        ),
        AppContainer(
          width: 1.sw,
          color: AppColors.gray50,
          child: Column(
            children: [
              Expanded(
                child: AppContainer(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      spacing: 12,
                      children: [
                        _personalInfo(),
                        _medicalInfo(),
                        _emergencyContactInfo(),
                        _instructionsInfo(),
                        _visibilityInfo(),
                      ],
                    ),
                  ),
                ),
              ),
              AppContainer(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                boxShadow: AppColors.shadow,
                child: Row(
                  children: [
                    if (state.emergencyCard != null) ...[
                      InkWell(
                        onTap: () {
                          screenshotController
                              .capture()
                              .then((Uint8List? capturedImage) {
                            if (capturedImage != null) {
                              FileHelpers()
                                  .saveImageToGallery(capturedImage)
                                  .then((value) {
                                if (value) {
                                  showSuccessBanner(
                                      content: i18n.EmergencyInfo.Export);
                                } else {
                                  showErrorBanner(
                                      content: i18n.EmergencyInfo.ExportError);
                                }
                              });
                            }
                          }).catchError((onError) {
                            print(onError);
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Assets.icons.icExport.svg(width: 28),
                        ),
                      ),
                    ],
                    Expanded(
                      child: AppText(
                        "${i18n.EmergencyInfo.LastUpdated}: ${state.emergencyCard?.lastUpdated?.toDateFromMilliseconds ?? ""}",
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _personalInfo() {
    Owner? owner = state.emergencyCard?.owner;
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
    MedicalInfo? medicalInfo = state.emergencyCard?.medicalInfo;
    return TitleComponentWidget(
      title: i18n.EmergencyInfo.MedicalInfo,
      child: AppContainer(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        child: Column(
          spacing: 6,
          children: [
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
    List<EmergencyContact> contacts =
        state.emergencyCard?.emergencyContacts ?? [];
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
                width: 1.sw,
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
    String? instructions = state.emergencyCard?.instructions;
    return TitleComponentWidget(
      title: i18n.EmergencyInfo.NoteSpecific,
      child: AppContainer(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        width: 1.sw,
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

  Widget _visibilityInfo() {
    VisibilityInfo? visibilityInfo = state.emergencyCard?.visibility;
    return TitleComponentWidget(
      title: i18n.EmergencyInfo.Setting,
      child: AppContainer(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        child: Column(
          spacing: 6,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              spacing: 8,
              children: [
                Expanded(
                  flex: 30,
                  child: AppText(
                    i18n.EmergencyInfo.Allergy,
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
                          value: visibilityInfo?.allergies ?? false,
                          onChanged: (value) {}),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              spacing: 8,
              children: [
                Expanded(
                  flex: 30,
                  child: AppText(
                    i18n.EmergencyInfo.Medication,
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
                          value: visibilityInfo?.medications ?? false,
                          onChanged: (value) {}),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              spacing: 8,
              children: [
                Expanded(
                  flex: 30,
                  child: AppText(
                    i18n.EmergencyInfo.MedicalCondition,
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
                          value: visibilityInfo?.conditions ?? false,
                          onChanged: (value) {}),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              spacing: 8,
              children: [
                Expanded(
                  flex: 30,
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
                          value: visibilityInfo?.organDonor ?? false,
                          onChanged: (value) {}),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              spacing: 8,
              children: [
                Expanded(
                  flex: 30,
                  child: AppText(
                    i18n.EmergencyInfo.EmergencyContact,
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
                          value: visibilityInfo?.emergencyContacts ?? false,
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
}
