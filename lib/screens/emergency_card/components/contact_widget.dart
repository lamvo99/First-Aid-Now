import 'package:first_aid/app_common_data/app_colors.dart';
import 'package:first_aid/app_common_data/app_text_sytle.dart';
import 'package:first_aid/app_common_data/enum/relationship_type.dart';
import 'package:first_aid/gen/assets.gen.dart';
import 'package:first_aid/generated/strings.g.dart';
import 'package:first_aid/model/emergency_contact/emergency_contact.dart';
import 'package:first_aid/shared_customization/export.dart';
import 'package:flutter/material.dart';

class ContactWidget extends StatelessWidget {
  final EmergencyContact emergencyContact;
  final Function(EmergencyContact) onChanged;
  final Function() onDelete;
  final int index;

  const ContactWidget({
    super.key,
    required this.emergencyContact,
    required this.onChanged,
    required this.onDelete,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 8,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 6,
            children: [
              Expanded(
                child: AppText(
                  i18n.EmergencyInfo.EmergencyContactNum(num: index + 1),
                  style: AppTextStyle.textSecondary14W500,
                ),
              ),
              InkWell(
                onTap: onDelete,
                child: Assets.icons.icDelete.svg(
                  width: 24,
                  colorFilter:
                      ColorFilter.mode(AppColors.error600, BlendMode.srcIn),
                ),
              )
            ],
          ),
          AppTextFormField(
            label: i18n.EmergencyInfo.Name,
            placeholder: i18n.EmergencyInfo.NamePlace,
            onChanged: (value) {
              onChanged(emergencyContact.copyWith(name: value));
            },
            initValue: emergencyContact.name,
            keyboardType: KeyboardType.text,
            validations: [
              (data) => Validators.validateNotEmptyListOrString(data,
                  fieldName: i18n.EmergencyInfo.Name)
            ],
          ),
          AppDropdownButton<RelationshipType>(
            label: i18n.EmergencyInfo.Relationship,
            onChanged: (value) {
              onChanged(emergencyContact.copyWith(relationship: value!));
            },
            value: emergencyContact.relationship,
            isExpanded: true,
            items: RelationshipType.values.map((cate) {
              return DropdownItemModel<RelationshipType>(
                value: cate,
                label: cate.title,
              );
            }).toList(),
            selectedCondition: (_) => false,
          ),
          AppTextFormField(
            label: i18n.EmergencyInfo.EmergencyPhone,
            placeholder: i18n.EmergencyInfo.EmergencyPhonePlace,
            onChanged: (value) {
              onChanged(emergencyContact.copyWith(phoneNumber: value));
            },
            initValue: emergencyContact.phoneNumber,
            keyboardType: KeyboardType.phone,
            validations: [
                  (data) => Validators.validateNotEmptyListOrString(data,
                  fieldName: i18n.EmergencyInfo.EmergencyPhone)
            ],
          ),
        ],
      ),
    );
  }
}
