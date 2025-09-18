import 'package:first_aid/app_common_data/app_colors.dart';
import 'package:first_aid/gen/assets.gen.dart';
import 'package:first_aid/generated/strings.g.dart';
import 'package:flutter/material.dart';

enum LearnCategory {
  immediateLifeSupport,
  injuryBleedingManagement,
  specificAccidentsWounds,
  survivalSkills,
  generalPrinciplesPrevention,
  medicalEmergencies,
}

extension LearnCategoryExt on LearnCategory {
  String get title => {
        LearnCategory.immediateLifeSupport: i18n.Category.Immediate,
        LearnCategory.injuryBleedingManagement: i18n.Category.Injury,
        LearnCategory.specificAccidentsWounds: i18n.Category.Special,
        LearnCategory.survivalSkills: i18n.Category.Survival,
        LearnCategory.generalPrinciplesPrevention: i18n.Category.General,
        LearnCategory.medicalEmergencies: i18n.Category.Emergencies,
      }[this]!;

  String get desc => {
        LearnCategory.immediateLifeSupport: i18n.Category.ImmediateDesc,
        LearnCategory.injuryBleedingManagement: i18n.Category.InjuryDesc,
        LearnCategory.specificAccidentsWounds: i18n.Category.SpecialDesc,
        LearnCategory.survivalSkills: i18n.Category.SurvivalDesc,
        LearnCategory.generalPrinciplesPrevention: i18n.Category.GeneralDesc,
        LearnCategory.medicalEmergencies: i18n.Category.EmergenciesDesc,
      }[this]!;

  AssetGenImage get logo => {
        LearnCategory.immediateLifeSupport: Assets.icon.icImmediate,
        LearnCategory.injuryBleedingManagement: Assets.icon.icInjury,
        LearnCategory.specificAccidentsWounds: Assets.icon.icSpecific,
        LearnCategory.survivalSkills: Assets.icon.icSurival,
        LearnCategory.generalPrinciplesPrevention: Assets.icon.icGeneral,
        LearnCategory.medicalEmergencies: Assets.icon.icEmergency,
      }[this]!;

  Color get bgColor => {
        LearnCategory.immediateLifeSupport: AppColors.warning50,
        LearnCategory.injuryBleedingManagement: AppColors.error50,
        LearnCategory.specificAccidentsWounds: AppColors.yellow50,
        LearnCategory.survivalSkills: AppColors.success50,
        LearnCategory.generalPrinciplesPrevention: AppColors.blue50,
        LearnCategory.medicalEmergencies: AppColors.purple50,
      }[this]!;

  Color get borderColor => {
        LearnCategory.immediateLifeSupport: AppColors.warning500,
        LearnCategory.injuryBleedingManagement: AppColors.error500,
        LearnCategory.specificAccidentsWounds: AppColors.yellow500,
        LearnCategory.survivalSkills: AppColors.success500,
        LearnCategory.generalPrinciplesPrevention: AppColors.blue500,
        LearnCategory.medicalEmergencies: AppColors.purple500,
      }[this]!;
}
