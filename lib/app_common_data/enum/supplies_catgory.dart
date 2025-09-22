
import 'package:first_aid/gen/assets.gen.dart';
import 'package:first_aid/generated/strings.g.dart';

enum SuppliesCategory {
  ESSENTIAL,
  DRESSING,
  MEDICATION,
  TOOLS,
  CUSTOM
}

extension SuppliesCategoryExt on SuppliesCategory {
  String get title => {
    SuppliesCategory.ESSENTIAL: i18n.Supplies.Essential,
    SuppliesCategory.DRESSING: i18n.Supplies.Dressing,
    SuppliesCategory.MEDICATION: i18n.Supplies.Medication,
    SuppliesCategory.TOOLS: i18n.Supplies.Tools,
    SuppliesCategory.CUSTOM: i18n.Supplies.Custom,
  }[this]!;

  SvgGenImage get icon => {
    SuppliesCategory.ESSENTIAL: Assets.icons.icShield,
    SuppliesCategory.DRESSING: Assets.icons.icBandAid,
    SuppliesCategory.MEDICATION: Assets.icons.icMedicine,
    SuppliesCategory.TOOLS: Assets.icons.icTools,
    SuppliesCategory.CUSTOM: Assets.icons.icCustom,
  }[this]!;
}