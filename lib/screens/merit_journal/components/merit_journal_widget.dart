import 'package:first_aid/gen/assets.gen.dart';
import 'package:first_aid/generated/strings.g.dart';
import 'package:first_aid/model/merit/merit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app_common_data/export.dart';
import '../../../shared_customization/export.dart';

class MeritJournalContentWidget extends StatefulWidget {
  final MeritModel meritModel;
  final Function(MeritModel? meritModel) onPersonalEventChanged;
  final bool isAdd;
  final Function() onDelete;

  const MeritJournalContentWidget({
    super.key,
    required this.meritModel,
    required this.onPersonalEventChanged,
    required this.onDelete,
    required this.isAdd,
  });

  @override
  State<MeritJournalContentWidget> createState() =>
      _MeritJournalContentWidgetState();
}

class _MeritJournalContentWidgetState extends State<MeritJournalContentWidget> {
  MeritModel? meritModel;

  @override
  void initState() {
    // TODO: implement initState
    meritModel = widget.meritModel;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      height: 0.7.sh,
      color: AppColors.white,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(12),
        topRight: Radius.circular(12),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
        child: AppForm(
          child: (fomKey) => AppDismissKeyboard(
            child: AppLayout(
              backgroundColor: AppColors.white,
              showAppBar: false,
              resizeToAvoidBottomInset: true,
              body: AppContainer(
                color: AppColors.white,
                child: Column(
                  children: [
                    ///
                    /// TITLE
                    ///
                    AppContainer(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      border: const Border(
                          bottom: BorderSide(color: AppColors.gray100)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: AppText(
                              i18n.MeritJournal.Title,
                              style: AppTextStyle.textSecondary14W500,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(Icons.close_rounded),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),

                    ///
                    /// BODY
                    ///
                    Expanded(
                      child: AppContainer(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: SingleChildScrollView(
                          child: Column(
                            spacing: 12,
                            children: [
                              // /
                              // / Event Name
                              // /
                              AppTextFormField(
                                label: i18n.MeritJournal.Name,
                                placeholder: i18n.MeritJournal.NamePlaceholder,
                                initValue: meritModel!.name,
                                isRequiredField: true,
                                onChanged: (value) {
                                  meritModel = meritModel!.copyWith(
                                    name: value,
                                  );
                                  setState(() {});
                                },
                                validations: [
                                  (data) =>
                                      Validators.validateNotEmptyListOrString(
                                          data,
                                          fieldName: i18n.Event.Name),
                                ],
                              ),

                              ///
                              /// NOTE
                              ///
                              AppTextFormField(
                                label: i18n.MeritJournal.Description,
                                placeholder:
                                    i18n.MeritJournal.DescriptionPlaceholder,
                                initValue: meritModel!.description,
                                isRequiredField: false,
                                onChanged: (value) {
                                  meritModel = meritModel!.copyWith(
                                    description: value,
                                  );
                                  setState(() {});
                                },
                                maxLines: 3,
                                validations: [
                                  // (data) =>
                                  //     Validators.validateNotEmptyListOrString(
                                  //         data,
                                  //         fieldName: i18n.Event.Note),
                                ],
                              ),
                              //
                              ///
                              /// Event Type
                              ///
                              AppDropdownButton<MeritType>(
                                label: i18n.Event.Type,
                                isRequired: true,
                                errorLabel: meritModel!.meritType != null
                                    ? null
                                    : i18n.CommonValidation.CommonRequired,
                                placeholder: i18n.Event.Type,
                                onChanged: (value) {
                                  if (value != null) {
                                    meritModel =
                                        meritModel!.copyWith(meritType: value);
                                    setState(() {});
                                  }
                                },
                                value: meritModel?.meritType,
                                items: MeritType.values
                                    .map<DropdownItemModel<MeritType>>(
                                        (MeritType value) {
                                  return DropdownItemModel<MeritType>(
                                    value: value,
                                    label: value.title,
                                  );
                                }).toList(),
                                selectedCondition: (value) => false,
                              ),

                              ///
                              ///
                              ///
                              AppField(
                                label: i18n.Event.Date,
                                isRequired: true,
                                errorLabel: "",
                                child: AppContainer(
                                  padding: const EdgeInsets.only(top: 8),
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(12),
                                  child: GestureDetector(
                                    onTap: () {
                                      showCalendarPicker(context,
                                          onChanged: (DateTime value) {
                                        meritModel = meritModel!.copyWith(
                                            createdAt:
                                                value.millisecondsSinceEpoch);
                                        setState(() {});
                                      },
                                          minDate: DateTime.now(),
                                          initDateTime: meritModel!.createdAt
                                                  .toDateTimeFromTimeStamp ??
                                              DateTime.now());
                                    },
                                    child: AppContainer(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Colors.white,
                                      border: Border.all(
                                          color: AppColors.primaryBorderColor,
                                          width: 0.5),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12, vertical: 12),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: AppText(meritModel!.createdAt
                                                    ?.toDateFromMilliseconds ??
                                                ""),
                                          ),
                                          const SizedBox(width: 12),
                                          Assets.icons.icCalendar.svg(),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    AppContainer(
                      color: AppColors.white,
                      width: 1.sw,
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      boxShadow: AppColors.shadow,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        spacing: 12,
                        children: [
                          if (!widget.isAdd) ...[
                            Expanded(
                              child: AppButton(
                                onPressed: widget.onDelete,
                                label: i18n.CommonAction.Delete,
                                type: ButtonType.red,
                              ),
                            ),
                            Expanded(
                              child: AppButton(
                                onPressed: () {
                                  if (fomKey.currentState?.validate() ??
                                      false) {
                                    widget.onPersonalEventChanged(meritModel);
                                  }
                                },
                                label: i18n.CommonAction.Save,
                              ),
                            ),
                          ] else ...[
                            Expanded(
                              child: AppButton(
                                onPressed: () {
                                  if (fomKey.currentState?.validate() ??
                                      false) {
                                    widget.onPersonalEventChanged(meritModel);
                                  }
                                },
                                label: i18n.CommonAction.Save,
                              ),
                            ),
                          ]
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
