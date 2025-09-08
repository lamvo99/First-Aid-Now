import 'package:first_aid/generated/strings.g.dart';

enum LearnCategory {
  immediateLifeSupport,
  injuryManagement,
  specificAccidents,
  woundsInfections,
  survivalSkills,
}

extension LearnCategoryExt on LearnCategory {
  String get title =>
      {
        LearnCategory.immediateLifeSupport: i18n.Category.Immediate,
        LearnCategory.injuryManagement: i18n.Category.Injury,
        LearnCategory.specificAccidents: i18n.Category.Special,
        LearnCategory.woundsInfections: i18n.Category.WoundsAndInfections,
        LearnCategory.survivalSkills: i18n.Category.Survival,
      }[this]!;

  String get desc =>
      {
        LearnCategory.immediateLifeSupport: i18n.Category.ImmediateDesc,
        LearnCategory.injuryManagement: i18n.Category.InjuryDesc,
        LearnCategory.specificAccidents: i18n.Category.SpecialDesc,
        LearnCategory.woundsInfections: i18n.Category.WoundsAndInfectionsDesc,
        LearnCategory.survivalSkills: i18n.Category.SurvivalDesc,
      }[this]!;

}
