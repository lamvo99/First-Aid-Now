import 'dart:io';

import 'package:first_aid/app_common_data/app_colors.dart';
import 'package:first_aid/app_common_data/app_text_sytle.dart';
import 'package:first_aid/app_common_data/database/local_storage/database.dart';
import 'package:first_aid/app_common_data/enum/blood_type.dart';
import 'package:first_aid/app_common_data/enum/gender_type.dart';
import 'package:first_aid/gen/assets.gen.dart';
import 'package:first_aid/generated/strings.g.dart';
import 'package:first_aid/model/emergency_card/emergency_card.dart';
import 'package:first_aid/model/emergency_contact/emergency_contact.dart';
import 'package:first_aid/screens/emergency_card/cubit/emergency_card_cubit.dart';
import 'package:first_aid/screens/home/components/title_component_widget.dart';
import 'package:first_aid/shared_customization/export.dart';
import 'package:first_aid/shared_customization/widgets/custom_widgets/app_upload_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'contact_widget.dart';

class EmergencyCardEditWidget extends StatefulWidget {
  final EmergencyCardState state;

  const EmergencyCardEditWidget({
    super.key,
    required this.state,
  });

  @override
  State<EmergencyCardEditWidget> createState() =>
      _EmergencyCardEditWidgetState();
}

class _EmergencyCardEditWidgetState extends State<EmergencyCardEditWidget> {
  late BuildContext _context;

  final TextEditingController _allergies = TextEditingController();
  final TextEditingController _medications = TextEditingController();
  final TextEditingController _medicalConditions = TextEditingController();

  EmergencyCardState get state => widget.state;

  @override
  Widget build(BuildContext context) {
    _context = context;
    return AppDismissKeyboard(
      child: AppForm(
        child: (formKey) => Column(
          children: [
            Expanded(
              child: AppContainer(
                width: 1.sw,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: SingleChildScrollView(
                  child: Column(
                    spacing: 16,
                    children: [
                      ///
                      /// Avatar
                      ///
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ///
                          ///
                          /// INFO
                          AppUploadAvatar(
                            onSelectFile: (value) {
                              FileHelpers()
                                  .copyFileToAppDir(value)
                                  .then((String? newPath) {
                                if (newPath.isNotEmptyOrNull) {
                                  context
                                      .read<EmergencyCardCubit>()
                                      .updateState((state) => state.copyWith(
                                          owner: state.owner
                                              .copyWith(photoUrl: newPath)));
                                }
                              });
                            },
                            initialFile: widget.state.owner.photoUrl != null
                                ? File(widget.state.owner.photoUrl!)
                                : null,
                            width: 100,
                            height: 100,
                          ),
                        ],
                      ),

                      ///
                      /// EMERGENCY
                      ///
                      _emergencyInfo(),

                      ///
                      /// MEDICAL
                      ///
                      _medicalInfo(),

                      ///
                      ///
                      ///
                      _emergencyContactInfo(),

                      ///
                      ///
                      ///
                      _noteSpecificInfo(),

                      ///
                      ///
                      ///
                      _visibilityInfo(),
                    ],
                  ),
                ),
              ),
            ),

            ///
            /// ACTION BUTTON
            ///
            AppActionEditWidget(
              onCancel: () {
                context
                    .read<EmergencyCardCubit>()
                    .updateState((state) => state.copyWith(isEditInfo: false));
              },
              onConfirm: () async {
                if (formKey.currentState?.validate() ?? false) {
                  try {
                    await AppDatabase().putEmergencyCard(EmergencyCard(
                      owner: state.owner,
                      medicalInfo: state.medicalInfo,
                      emergencyContacts: state.emergencyContacts,
                      instructions: state.instructions,
                      visibility: state.visibility,
                      lastUpdated: DateTime.now().millisecondsSinceEpoch,
                    ));
                    showSuccessBanner(
                        content: i18n.EmergencyInfo.UpdateSuccess);
                    context.read<EmergencyCardCubit>().getEmergencyCard();
                    context.read<EmergencyCardCubit>().updateState((state) => state.copyWith(isEditInfo: false));
                  } catch (e) {}
                }
              },
              lableConfirm: i18n.CommonAction.Save,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              color: AppColors.gray50,
              boxShadow: AppColors.shadow,
            )
          ],
        ),
      ),
    );
  }

  Widget _emergencyInfo() {
    return TitleComponentWidget(
      title: i18n.EmergencyInfo.Info,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 12,
        children: [
          AppTextFormField(
            label: i18n.EmergencyInfo.Name,
            placeholder: i18n.EmergencyInfo.NamePlace,
            onChanged: (value) {
              _context.read<EmergencyCardCubit>().updateState((state) =>
                  state.copyWith(owner: state.owner.copyWith(fullName: value)));
            },
            initValue: state.owner.fullName,
            keyboardType: KeyboardType.text,
            validations: [
              (data) => Validators.validateNotEmptyListOrString(data,
                  fieldName: i18n.EmergencyInfo.Name)
            ],
          ),
          AppSelectDate(
            label: i18n.EmergencyInfo.DateOfBirth,
            isRequired: false,
            onChanged: (value) {
              _context.read<EmergencyCardCubit>().updateState((state) =>
                  state.copyWith(
                      owner: state.owner.copyWith(
                          dateOfBirth: value.millisecondsSinceEpoch)));
            },
            initDateTime: state.owner.dateOfBirth?.toDateTimeFromTimeStamp,
            minDate: DateTime.now(),
          ),
          AppDropdownButton<GenderType>(
            label: i18n.EmergencyInfo.Gender,
            onChanged: (value) {
              _context.read<EmergencyCardCubit>().updateState((state) =>
                  state.copyWith(owner: state.owner.copyWith(gender: value!)));
            },
            value: state.owner.gender,
            isExpanded: true,
            items: GenderType.values.map((cate) {
              return DropdownItemModel<GenderType>(
                value: cate,
                label: cate.title,
              );
            }).toList(),
            selectedCondition: (_) => false,
          ),
        ],
      ),
    );
  }

  Widget _medicalInfo() {
    return TitleComponentWidget(
      title: i18n.EmergencyInfo.MedicalInfo,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 12,
        children: [
          ///
          /// BLOOD TYPE
          ///
          AppDropdownButton<BloodType>(
            label: i18n.Supplies.Category,
            onChanged: (value) {
              _context.read<EmergencyCardCubit>().updateState((state) =>
                  state.copyWith(
                      medicalInfo:
                          state.medicalInfo.copyWith(bloodType: value!)));
            },
            value: state.medicalInfo.bloodType,
            isExpanded: true,
            items: BloodType.values.map((cate) {
              return DropdownItemModel<BloodType>(
                value: cate,
                label: cate.title,
              );
            }).toList(),
            selectedCondition: (_) => false,
          ),

          ///
          ///
          /// Allergy
          ///
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            spacing: 8,
            children: [
              Expanded(
                child: AppTextFormField(
                  label: i18n.EmergencyInfo.Allergy,
                  placeholder: i18n.EmergencyInfo.AllergyPlace,
                  onChanged: (value) {},
                  isRequiredField: false,
                  controller: _allergies,
                  keyboardType: KeyboardType.text,
                  validations: [],
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (_allergies.text.isNotEmptyOrNull) {
                    List<String> newAllergies =
                        List.from(state.medicalInfo.allergies ?? []);
                    newAllergies.add(_allergies.text.trim());
                    _allergies.text = "";
                    _context.read<EmergencyCardCubit>().updateState(
                          (state) => state.copyWith(
                            medicalInfo: state.medicalInfo.copyWith(
                              allergies: newAllergies,
                            ),
                          ),
                        );
                  }
                },
                child: AppContainer(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  color: AppColors.primary100,
                  border: Border.all(color: AppColors.primary300),
                  borderRadius: BorderRadius.circular(8),
                  child: Assets.icons.icAddRound.svg(
                    colorFilter: ColorFilter.mode(
                        AppColors.PRIMARY_BASE, BlendMode.srcIn),
                  ),
                ),
              ),
            ],
          ),
          if (state.medicalInfo.allergies.isNotEmptyOrNull) ...[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              spacing: 6,
              children: [
                AppText(
                  i18n.EmergencyInfo.AllergyList,
                  style: AppTextStyle.textSecondary14W500,
                ),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.start,
                  alignment: WrapAlignment.start,
                  spacing: 8,
                  runSpacing: 8,
                  children: List.generate(state.medicalInfo.allergies.length,
                      (index) {
                    return _itemCondition(
                      value: state.medicalInfo.allergies[index],
                      onDelete: () {
                        List<String> newAllergies =
                            List.from(state.medicalInfo.allergies ?? []);
                        newAllergies.removeAt(index);
                        _context.read<EmergencyCardCubit>().updateState(
                              (state) => state.copyWith(
                                medicalInfo: state.medicalInfo.copyWith(
                                  allergies: newAllergies,
                                ),
                              ),
                            );
                      },
                    );
                  }),
                )
              ],
            )
          ],

          ///
          ///
          /// Medication
          ///
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            spacing: 8,
            children: [
              Expanded(
                child: AppTextFormField(
                  label: i18n.EmergencyInfo.Medication,
                  placeholder: i18n.EmergencyInfo.MedicationPlace,
                  onChanged: (value) {},
                  isRequiredField: false,
                  controller: _medications,
                  keyboardType: KeyboardType.text,
                  validations: [],
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (_medications.text.isNotEmptyOrNull) {
                    List<String> newAllergies =
                        List.from(state.medicalInfo.medications ?? []);
                    newAllergies.add(_medications.text.trim());
                    _medications.text = "";
                    _context.read<EmergencyCardCubit>().updateState(
                          (state) => state.copyWith(
                            medicalInfo: state.medicalInfo.copyWith(
                              medications: newAllergies,
                            ),
                          ),
                        );
                  }
                },
                child: AppContainer(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  color: AppColors.primary100,
                  border: Border.all(color: AppColors.primary300),
                  borderRadius: BorderRadius.circular(8),
                  child: Assets.icons.icAddRound.svg(
                    colorFilter: ColorFilter.mode(
                        AppColors.PRIMARY_BASE, BlendMode.srcIn),
                  ),
                ),
              ),
            ],
          ),
          if (state.medicalInfo.medications.isNotEmptyOrNull) ...[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              spacing: 6,
              children: [
                AppText(
                  i18n.EmergencyInfo.MedicationList,
                  style: AppTextStyle.textSecondary14W500,
                ),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.start,
                  alignment: WrapAlignment.start,
                  spacing: 8,
                  runSpacing: 8,
                  children: List.generate(state.medicalInfo.medications.length,
                      (index) {
                    return _itemCondition(
                      value: state.medicalInfo.medications[index],
                      onDelete: () {
                        List<String> newAllergies =
                            List.from(state.medicalInfo.medications ?? []);
                        newAllergies.removeAt(index);
                        _context.read<EmergencyCardCubit>().updateState(
                              (state) => state.copyWith(
                                medicalInfo: state.medicalInfo.copyWith(
                                  medications: newAllergies,
                                ),
                              ),
                            );
                      },
                    );
                  }),
                )
              ],
            )
          ],

          ///
          ///
          /// Medication Condition
          ///
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            spacing: 8,
            children: [
              Expanded(
                child: AppTextFormField(
                  label: i18n.EmergencyInfo.MedicalCondition,
                  placeholder: i18n.EmergencyInfo.MedicalConditionPlace,
                  onChanged: (value) {},
                  isRequiredField: false,
                  controller: _medicalConditions,
                  keyboardType: KeyboardType.text,
                  validations: [],
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (_medicalConditions.text.isNotEmptyOrNull) {
                    List<String> newAllergies =
                        List.from(state.medicalInfo.medicalConditions ?? []);
                    newAllergies.add(_medicalConditions.text.trim());
                    _medicalConditions.text = "";
                    _context.read<EmergencyCardCubit>().updateState(
                          (state) => state.copyWith(
                            medicalInfo: state.medicalInfo.copyWith(
                              medicalConditions: newAllergies,
                            ),
                          ),
                        );
                  }
                },
                child: AppContainer(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  color: AppColors.primary100,
                  border: Border.all(color: AppColors.primary300),
                  borderRadius: BorderRadius.circular(8),
                  child: Assets.icons.icAddRound.svg(
                    colorFilter: ColorFilter.mode(
                        AppColors.PRIMARY_BASE, BlendMode.srcIn),
                  ),
                ),
              ),
            ],
          ),
          if (state.medicalInfo.medicalConditions.isNotEmptyOrNull) ...[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              spacing: 8,
              children: [
                AppText(
                  i18n.EmergencyInfo.MedicalConditionList,
                  style: AppTextStyle.textSecondary14W500,
                ),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.start,
                  alignment: WrapAlignment.start,
                  spacing: 8,
                  runSpacing: 8,
                  children: List.generate(
                      state.medicalInfo.medicalConditions.length, (index) {
                    return _itemCondition(
                      value: state.medicalInfo.medicalConditions[index],
                      onDelete: () {
                        List<String> newAllergies = List.from(
                            state.medicalInfo.medicalConditions ?? []);
                        newAllergies.removeAt(index);
                        _context.read<EmergencyCardCubit>().updateState(
                              (state) => state.copyWith(
                                medicalInfo: state.medicalInfo.copyWith(
                                  medicalConditions: newAllergies,
                                ),
                              ),
                            );
                      },
                    );
                  }),
                )
              ],
            )
          ],

          ///
          ///
          ///
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: AppText(
                  i18n.EmergencyInfo.OrganDonation,
                  style: AppTextStyle.textSecondary14W500,
                ),
              ),
              AppToggleButton(
                value: state.medicalInfo.organDonor,
                onChanged: (value) {
                  context.read<EmergencyCardCubit>().updateState((state) =>
                      state.copyWith(
                          medicalInfo:
                              state.medicalInfo.copyWith(organDonor: value)));
                },
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _emergencyContactInfo() {
    return TitleComponentWidget(
      title: i18n.EmergencyInfo.EmergencyContact,
      action: InkWell(
        onTap: () {
          List<EmergencyContact> listContact =
              List.from(state.emergencyContacts);
          listContact.add(EmergencyContact());
          context.read<EmergencyCardCubit>().updateState(
              (state) => state.copyWith(emergencyContacts: listContact));
        },
        child: Icon(
          CupertinoIcons.add_circled,
          color: AppColors.SECONDARY,
          size: 30,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 8,
        children: List.generate(state.emergencyContacts.length, (index) {
          return ContactWidget(
            emergencyContact: state.emergencyContacts[index],
            index: index,
            onChanged: (value) {
              context.read<EmergencyCardCubit>().updateState((state) =>
                  state.copyWith(
                      emergencyContacts: state.emergencyContacts
                          .updateAt((e) => value, index)));
            },
            onDelete: () {
              List<EmergencyContact> listContact =
                  List.from(state.emergencyContacts);
              listContact.removeAt(index);
              context.read<EmergencyCardCubit>().updateState(
                  (state) => state.copyWith(emergencyContacts: listContact));
            },
          );
        }),
      ),
    );
  }

  Widget _noteSpecificInfo() {
    return TitleComponentWidget(
      title: i18n.EmergencyInfo.NoteSpecific,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 12,
        children: [
          AppTextFormField(
            label: i18n.EmergencyInfo.NoteSpecific,
            placeholder: i18n.EmergencyInfo.NoteSpecific,
            onChanged: (value) {
              _context
                  .read<EmergencyCardCubit>()
                  .updateState((state) => state.copyWith(instructions: value));
            },
            minLines: 3,
            initValue: state.instructions,
            keyboardType: KeyboardType.text,
            validations: [],
          ),
        ],
      ),
    );
  }

  Widget _visibilityInfo() {
    return TitleComponentWidget(
      title: i18n.EmergencyInfo.Setting,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 12,
        children: [
          ///
          ///
          ///
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: AppText(
                  i18n.EmergencyInfo.Allergy,
                  style: AppTextStyle.textSecondary14W500,
                ),
              ),
              AppToggleButton(
                value: state.visibility.allergies,
                onChanged: (value) {
                  context.read<EmergencyCardCubit>().updateState((state) =>
                      state.copyWith(
                          visibility:
                              state.visibility.copyWith(allergies: value)));
                },
              )
            ],
          ),

          ///
          ///
          ///
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: AppText(
                  i18n.EmergencyInfo.Medication,
                  style: AppTextStyle.textSecondary14W500,
                ),
              ),
              AppToggleButton(
                value: state.visibility.medications,
                onChanged: (value) {
                  context.read<EmergencyCardCubit>().updateState((state) =>
                      state.copyWith(
                          visibility:
                              state.visibility.copyWith(medications: value)));
                },
              )
            ],
          ),

          ///
          ///
          ///
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: AppText(
                  i18n.EmergencyInfo.MedicalCondition,
                  style: AppTextStyle.textSecondary14W500,
                ),
              ),
              AppToggleButton(
                value: state.visibility.conditions,
                onChanged: (value) {
                  context.read<EmergencyCardCubit>().updateState((state) =>
                      state.copyWith(
                          visibility:
                              state.visibility.copyWith(conditions: value)));
                },
              )
            ],
          ),

          ///
          ///
          ///
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: AppText(
                  i18n.EmergencyInfo.OrganDonation,
                  style: AppTextStyle.textSecondary14W500,
                ),
              ),
              AppToggleButton(
                value: state.visibility.organDonor,
                onChanged: (value) {
                  context.read<EmergencyCardCubit>().updateState((state) =>
                      state.copyWith(
                          visibility:
                              state.visibility.copyWith(organDonor: value)));
                },
              )
            ],
          ),

          ///
          ///
          ///
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: AppText(
                  i18n.EmergencyInfo.EmergencyContact,
                  style: AppTextStyle.textSecondary14W500,
                ),
              ),
              AppToggleButton(
                value: state.visibility.emergencyContacts,
                onChanged: (value) {
                  context.read<EmergencyCardCubit>().updateState((state) =>
                      state.copyWith(
                          visibility: state.visibility
                              .copyWith(emergencyContacts: value)));
                },
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _itemCondition({
    required Function() onDelete,
    required String value,
  }) {
    return AppContainer(
      borderRadius: BorderRadius.circular(8),
      color: AppColors.success300,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          AppContainer(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.success400,
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: AppText(
              value,
              style: AppTextStyle.textSecondary14W500
                  .copyWith(color: Colors.white),
            ),
          ),
          InkWell(
            onTap: onDelete,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Icon(
                Icons.close_rounded,
                color: AppColors.SECONDARY,
                size: 24,
              ),
            ),
          )
        ],
      ),
    );
  }
}
