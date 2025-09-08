import 'package:first_aid/gen/assets.gen.dart';
import 'package:first_aid/generated/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app_common_data/export.dart';
import '../../../model/export.dart';
import '../../../shared_customization/export.dart';

class PersonalEventContentWidget extends StatefulWidget {
  final PersonalEvent personalEvent;
  final Function(PersonalEvent? personalEvent) onPersonalEventChanged;
  final bool isAdd;
  final Function() onDelete;

  const PersonalEventContentWidget({
    super.key,
    required this.personalEvent,
    required this.onPersonalEventChanged,
    required this.onDelete,
    required this.isAdd,
  });

  @override
  State<PersonalEventContentWidget> createState() =>
      _PersonalEventContentWidgetState();
}

class _PersonalEventContentWidgetState
    extends State<PersonalEventContentWidget> {
  PersonalEvent? personalEvent;

  @override
  void initState() {
    // TODO: implement initState
    personalEvent = widget.personalEvent;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      height: 0.95.sh,
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
                              i18n.Event.Title,
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
                              ///
                              /// Event Name
                              ///
                              AppTextFormField(
                                label: i18n.Event.Name,
                                placeholder: i18n.Event.NamePlaceholder,
                                initValue: personalEvent!.eventName,
                                isRequiredField: true,
                                onChanged: (value) {
                                  personalEvent = personalEvent!.copyWith(
                                    eventName: value,
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
                                label: i18n.Event.Note,
                                placeholder: i18n.Event.NotePlaceholder,
                                initValue: personalEvent!.note,
                                isRequiredField: false,
                                onChanged: (value) {
                                  personalEvent = personalEvent!.copyWith(
                                    note: value,
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

                              ///
                              /// Event Type
                              ///
                              AppDropdownButton<PersonalEventType>(
                                label: i18n.Event.Type,
                                isRequired: true,
                                errorLabel: personalEvent!.eventType != null
                                    ? null
                                    : i18n.CommonValidation.CommonRequired,
                                placeholder: i18n.Event.Type,
                                onChanged: (value) {
                                  if (value != null) {
                                    personalEvent = personalEvent!
                                        .copyWith(eventType: value);
                                    setState(() {});
                                  }
                                },
                                value: personalEvent?.eventType,
                                items: PersonalEventType.values
                                    .map<DropdownItemModel<PersonalEventType>>(
                                        (PersonalEventType value) {
                                  return DropdownItemModel<PersonalEventType>(
                                    value: value,
                                    label: value.title,
                                  );
                                }).toList(),
                                selectedCondition: (value) => false,
                              ),

                              AppField(
                                errorLabel: "",
                                label: i18n.Event.DateType,
                                isRequired: true,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  spacing: 6,
                                  children: [
                                    AppRadio(
                                      value: personalEvent?.dateType ==
                                          DateType.LUNAR,
                                      onTap: () {
                                        personalEvent = personalEvent!.copyWith(
                                          dateType: DateType.LUNAR,
                                        );
                                        setState(() {});
                                      },
                                      isCircle: true,
                                    ),
                                    Expanded(
                                      child: AppText(
                                        i18n.Event.Lunar,
                                        style: AppTextStyle.textSecondary14W500,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    AppRadio(
                                      value: personalEvent?.dateType ==
                                          DateType.SOLAR,
                                      onTap: () {
                                        personalEvent = personalEvent!.copyWith(
                                          dateType: DateType.SOLAR,
                                        );
                                        setState(() {});
                                      },
                                      isCircle: true,
                                    ),
                                    Expanded(
                                      child: AppText(
                                        i18n.Event.Georgian,
                                        style: AppTextStyle.textSecondary14W500,
                                      ),
                                    ),
                                  ],
                                ),
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
                                        personalEvent = personalEvent!
                                            .copyWith(dateTime: value);
                                        setState(() {});
                                      },
                                          minDate: DateTime.now(),
                                          initDateTime:
                                              personalEvent!.dateTime ??
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
                                            child: AppText(personalEvent!
                                                    .dateTime
                                                    ?.toDayMonthYear() ??
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

                              ///
                              /// REPEAT
                              ///
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                spacing: 6,
                                children: [
                                  Expanded(
                                    child: AppText(
                                      i18n.Event.Repeat,
                                      style: AppTextStyle.textSecondary14W500,
                                    ),
                                  ),
                                  AppRadio(
                                      value: personalEvent?.isRepeat ?? false,
                                      onTap: () {
                                        personalEvent = personalEvent!.copyWith(
                                            isRepeat:
                                                !personalEvent!.isRepeat!);
                                        setState(() {});
                                      })
                                ],
                              ),

                              ///
                              /// REMINDER
                              ///
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                spacing: 6,
                                children: [
                                  Expanded(
                                    child: AppText(
                                      i18n.Event.Reminder,
                                      style: AppTextStyle.textSecondary14W500,
                                    ),
                                  ),
                                  AppRadio(
                                    value: personalEvent?.isReminder ?? false,
                                    onTap: () {
                                      personalEvent = personalEvent!.copyWith(
                                          isReminder:
                                              !personalEvent!.isReminder!);
                                      setState(() {});
                                    },
                                  ),
                                ],
                              ),

                              if (personalEvent!.isReminder == true) ...[
                                AppTextFormField(
                                  label: i18n.Event.AdvanceDays(
                                      days: personalEvent!.advanceDays ?? 0),
                                  keyboardType: KeyboardType.int,
                                  isRequiredField: false,
                                  initValue:
                                      personalEvent!.advanceDays.toString(),
                                  onChanged: (value) {
                                    personalEvent = personalEvent!.copyWith(
                                        advanceDays: value.isNotEmptyOrNull
                                            ? int.parse(value)
                                            : 0);
                                    setState(() {});
                                  },
                                  validations: [],
                                ),
                                AppSelectTime(
                                  onChanged: (int? value) {
                                    if (value != null) {
                                      DateTime time =
                                          value.toDateTimeFromTimeStamp;
                                      personalEvent = personalEvent!.copyWith(
                                        hour: time.hour,
                                        minute: time.minute,
                                      );
                                      setState(() {});
                                    }
                                  },
                                  lable: i18n.Event.NotificationTime,
                                  time: DateTime(
                                          personalEvent!.dateTime!.year,
                                          personalEvent!.dateTime!.hour,
                                          personalEvent!.dateTime!.minute,
                                          personalEvent!.hour ?? 8,
                                          personalEvent!.minute ?? 0)
                                      .millisecondsSinceEpoch,
                                ),
                              ]
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
                                    widget
                                        .onPersonalEventChanged(personalEvent);
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
                                    widget
                                        .onPersonalEventChanged(personalEvent);
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
