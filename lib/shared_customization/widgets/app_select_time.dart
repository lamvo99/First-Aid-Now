// Flutter imports:
import 'package:first_aid/gen/assets.gen.dart';
import 'package:first_aid/generated/strings.g.dart';
import 'package:flutter/material.dart';

import '../../app_common_data/export.dart';
import '../export.dart';

class AppSelectTime extends StatefulWidget {
  final String lable;
  final bool isRequired;
  final double? width;
  final Border? border;
  final EdgeInsetsGeometry padding;
  final int? time;
  final Function(int?) onChanged;
  final String errorLabel;
  final bool isDateAndTime;
  final bool isDisablePreviousTime;
  final bool isOnlyHour;

  const AppSelectTime({
    super.key,
    required this.lable,
    this.isRequired = false,
    required this.time,
    required this.onChanged,
    this.width,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    this.border,
    this.errorLabel = "",
    this.isDateAndTime = false,
    this.isDisablePreviousTime = false,
    this.isOnlyHour = false,
  });

  @override
  State<AppSelectTime> createState() => _AppSelectTimeState();
}

class _AppSelectTimeState extends State<AppSelectTime> {
  int? _hourSelect;

  @override
  Widget build(BuildContext context) {
    return AppField(
      errorLabel: widget.errorLabel,
      label: widget.lable,
      isRequired: widget.isRequired,
      child: InkWell(
        onTap: () async {
          if (widget.isDateAndTime) {
            DateTime? dateSelect;
            await showCalendarPicker(context, onChanged: (value) {
              if (value != null) {
                dateSelect = value;
              }
            },
                initDateTime: (widget.time != null && widget.time != 0)
                    ? widget.time!.toDateTimeFromTimeStamp
                    : DateTime.now(),
                minDate: DateTime.now());

            if (dateSelect != null) {
              if (widget.isOnlyHour) {
                setState(() {
                  _hourSelect = null;
                });
                int? hour = await showSelectTimeHour(
                    context: context, dateSelect: dateSelect!);
                if (hour != null) {
                  DateTime newDateTime = DateTime(
                    dateSelect!.year,
                    dateSelect!.month,
                    dateSelect!.day,
                    hour,
                  );

                  if (widget.isDisablePreviousTime &&
                      newDateTime.millisecondsSinceEpoch <
                          DateTime.now().millisecondsSinceEpoch) {
                    showErrorBanner(
                        content: i18n.DateTime.YouCanNotSelectAPastDateTime);
                    return;
                  }
                  widget.onChanged(newDateTime.millisecondsSinceEpoch);
                }
              } else {
                final TimeOfDay? selectedTime = await showTimePicker(
                  context: context,
                  initialTime: (widget.time != null && widget.time != 0)
                      ? widget.time.toTimeOfDay
                      : DateTime.now().millisecondsSinceEpoch.toTimeOfDay,
                  initialEntryMode: TimePickerEntryMode.inputOnly,
                  cancelText: i18n.CommonAction.Cancel,
                  confirmText: i18n.CommonAction.Confirm,
                );
                if (selectedTime != null) {
                  DateTime newDateTime = DateTime(
                      dateSelect!.year,
                      dateSelect!.month,
                      dateSelect!.day,
                      selectedTime.hour,
                      selectedTime.minute);

                  if (widget.isDisablePreviousTime &&
                      newDateTime.millisecondsSinceEpoch <
                          DateTime.now().millisecondsSinceEpoch) {
                    showErrorBanner(
                        content: i18n.DateTime.YouCanNotSelectAPastDateTime);
                    return;
                  }
                  widget.onChanged(newDateTime.millisecondsSinceEpoch);
                }
              }
            }
          } else {
            final TimeOfDay? selectedTime = await showTimePicker(
              context: context,
              initialTime: widget.time.toTimeOfDay,
              initialEntryMode: TimePickerEntryMode.inputOnly,
              cancelText: i18n.CommonAction.Cancel,
              confirmText: i18n.CommonAction.Confirm,
            );

            if (selectedTime != null) {
              widget.onChanged(selectedTime.toMilisecondSinceEpoch);
            }
          }
        },
        child: AppContainer(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          width: widget.width,
          border: widget.border ?? Border.all(color: AppColors.gray300),
          padding: widget.padding,
          child: Row(
            children: [
              Expanded(
                child: AppText(
                  widget.isDateAndTime
                      ? widget.time.toDateAndTimeFromMilliseconds
                      : widget.time.toTimeFromMilliseconds,
                  style: AppTextStyle.textSecondary14W500.copyWith(color: AppColors.gray700),
                ),
              ),
              widget.isDisablePreviousTime
                  ? Assets.icons.icCalendar.svg()
                  : Assets.icons.icClock.svg()
            ],
          ),
        ),
      ),
    );
  }

  Future<int?> showSelectTimeHour({
    required BuildContext context,
    required DateTime dateSelect,
  }) {
    return showDialog<int?>(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return WillPopScope(
          onWillPop: () async {
            return false;
          },
          child: StatefulBuilder(
            builder: (context, StateSetter setStater) {
              return Dialog(
                insetPadding: const EdgeInsets.symmetric(horizontal: 16),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: AppContainer(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            AppText(i18n.DateTime.InputTime),
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Assets.icons.icClose.svg(),
                            )
                          ],
                        ),
                        const SizedBox(height: 8),
                        AppDropdownButton<int>(
                          placeholder: i18n.DateTime.InputTime,
                          onChanged: (value) {
                            setStater(() {
                              _hourSelect = value!;
                            });
                          },
                          value: _hourSelect,
                          items: List.generate(24, (index) => index)
                              .map<DropdownItemModel<int>>((int value) {
                            return DropdownItemModel<int>(
                              value: value,
                              label: "${value > 9 ? value : "0$value"}:00",
                              enable: (dateSelect.isToDay) &&
                                      (value <= DateTime.now().hour)
                                  ? false
                                  : true,
                            );
                          }).toList(),
                          selectedCondition: (value) => false,
                        ),
                        const SizedBox(height: 24),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: AppButton(
                                type: ButtonType.white,
                                label: i18n.CommonAction.Cancel,
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              flex: 1,
                              child: AppButton(
                                label: i18n.CommonAction.Confirm,
                                onPressed: () {
                                  Navigator.pop(context, _hourSelect);
                                },
                              ),
                            ),
                          ],
                        ),
                      ]),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
