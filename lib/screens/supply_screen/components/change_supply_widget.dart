import 'package:first_aid/app_common_data/enum/supplies_catgory.dart';
import 'package:first_aid/generated/strings.g.dart';
import 'package:first_aid/model/export.dart';
import 'package:first_aid/shared_customization/widgets/app_select_date.dart';
import 'package:flutter/material.dart';
import '../../../app_common_data/export.dart';
import '../../../shared_customization/export.dart';

class ChangeSupplyWidget extends StatefulWidget {
  final SupplyModel supplyModel;
  final void Function(SupplyModel) onAcceptHandle;
  final VoidCallback? cancelFunc;
  final bool isEdit;

  const ChangeSupplyWidget({
    Key? key,
    required this.supplyModel,
    required this.onAcceptHandle,
    this.cancelFunc,
    this.isEdit = false,
  }) : super(key: key);

  @override
  State<ChangeSupplyWidget> createState() => _ChangeSupplyWidgetState();
}

class _ChangeSupplyWidgetState extends State<ChangeSupplyWidget> {
  String name = "";
  String quantity = "0";
  SuppliesCategory suppliesCategory = SuppliesCategory.ESSENTIAL;
  String note = "";
  DateTime? expiredDate;
  bool isImportant = false;

  @override
  void initState() {
    super.initState();
    setState(() {
      name = widget.supplyModel.name ?? "";
      quantity = (widget.supplyModel.quantity ?? 0).toString();
      suppliesCategory =
          widget.supplyModel.supplyCategory ?? SuppliesCategory.ESSENTIAL;
      note = widget.supplyModel.note ?? "";
      expiredDate = widget.supplyModel.dateExpired;
      isImportant = widget.supplyModel.isImportant ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Stack(
        children: [
          GestureDetector(
            onTap: () {
              FocusManager.instance.primaryFocus?.unfocus();
            },
          ),
          GestureDetector(
            onTap: () {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: AppForm(
              child: (formKey) => Center(
                child: SingleChildScrollView(
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 16,
                      bottom: 24,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AppText(
                          i18n.Supplies.Add,
                          style: AppTextStyle.textSecondary14W500
                              .copyWith(fontSize: 20),
                        ),
                        const SizedBox(height: 12),
                        AppTextFormField(
                          label: i18n.Supplies.Name,
                          placeholder: i18n.Supplies.NamePlace,
                          onChanged: (value) {
                            setState(() {
                              name = value;
                            });
                          },
                          initValue: name,
                          keyboardType: KeyboardType.text,
                          validations: [
                            (data) => Validators.validateNotEmptyListOrString(
                                data,
                                fieldName: i18n.Supplies.Name)
                          ],
                        ),
                        SizedBox(height: 12),
                        AppDropdownButton<SuppliesCategory>(
                          label: i18n.Supplies.Category,
                          onChanged: (value) {
                            setState(() {
                              suppliesCategory = value!;
                            });
                          },
                          value: widget.supplyModel.supplyCategory,
                          isExpanded: true,
                          items: SuppliesCategory.values.map((cate) {
                            return DropdownItemModel<SuppliesCategory>(
                              value: cate,
                              label: cate.title,
                            );
                          }).toList(),
                          selectedCondition: (_) => false,
                        ),
                        const SizedBox(height: 12),
                        AppTextFormField(
                          label: i18n.Supplies.Quantity,
                          placeholder: i18n.Supplies.Quantity,
                          onChanged: (value) {
                            setState(() {
                              quantity = value;
                            });
                          },
                          initValue: quantity,
                          keyboardType: KeyboardType.int,
                          validations: [
                            (data) => Validators.validateNotEmptyListOrString(
                                data,
                                fieldName: i18n.Supplies.Quantity),
                            (data) {
                              if (data.isNotEmptyOrNull &&
                                  int.parse(data!) == 0) {
                                return i18n.Supplies.QuantityNumError;
                              }
                              return null;
                            }
                          ],
                        ),
                        const SizedBox(height: 12),
                        AppTextFormField(
                          label: i18n.Supplies.Note,
                          placeholder: i18n.Supplies.NotePlaceholder,
                          onChanged: (value) {
                            setState(() {
                              note = value;
                            });
                          },
                          isRequiredField: false,
                          initValue: note,
                          maxLines: 3,
                          validations: [],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          spacing: 6,
                          children: [
                            AppRadio(
                                value: isImportant,
                                onTap: () {
                                  setState(() {
                                    isImportant = !isImportant;
                                  });
                                }),
                            AppText(
                              i18n.Supplies.Important,
                              style: AppTextStyle.textSecondary14W500,
                            )
                          ],
                        ),
                        const SizedBox(height: 12),
                        AppSelectDate(
                          label: i18n.Supplies.DateExpired,
                          isRequired: false,
                          onChanged: (value) {
                            setState(() {
                              expiredDate = value;
                            });
                          },
                          initDateTime: expiredDate,
                          minDate: DateTime.now(),
                        ),
                        const SizedBox(height: 24),
                        AppActionEditWidget(
                          onCancel: () {
                            widget.cancelFunc?.call();
                          },
                          onConfirm: () {
                            if ((formKey.currentState?.validate() ?? false)) {
                              SupplyModel supply = widget.supplyModel.copyWith(
                                name: name,
                                note: note,
                                supplyCategory: suppliesCategory,
                                quantity: int.parse(
                                    quantity.isNotEmptyOrNull ? quantity : "0"),
                                dateExpired: expiredDate,
                                isImportant: isImportant,
                              );
                              if (widget.isEdit) {
                                widget.onAcceptHandle(
                                  supply.copyWith(updatedAt: DateTime.now()),
                                );
                              } else {
                                widget.onAcceptHandle(
                                  supply.copyWith(createdAt: DateTime.now()),
                                );
                              }
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
