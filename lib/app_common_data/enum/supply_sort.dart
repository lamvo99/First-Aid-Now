
import 'package:first_aid/gen/assets.gen.dart';
import 'package:first_aid/generated/strings.g.dart';

enum SupplySort {
  DEFAULT,
  AZ,
  CATEGORY,
  CHECKED,
  EXPIRED,
  IMPORTANT
}

extension SupplySortExt on SupplySort {
  String get title => {
    SupplySort.DEFAULT: i18n.Supplies.Default,
    SupplySort.AZ: i18n.Supplies.SortName,
    SupplySort.CATEGORY: i18n.Supplies.SortCategory,
    SupplySort.CHECKED: i18n.Supplies.SortChecked,
    SupplySort.EXPIRED: i18n.Supplies.SortExpired,
    SupplySort.IMPORTANT: i18n.Supplies.SortImportant,
  }[this]!;

  SvgGenImage get icon => {
    SupplySort.DEFAULT: Assets.icons.icSort,
    SupplySort.AZ: Assets.icons.icAz,
    SupplySort.CATEGORY: Assets.icons.icCategory,
    SupplySort.CHECKED: Assets.icons.icSquareCheckBorder,
    SupplySort.EXPIRED: Assets.icons.icExpired,
    SupplySort.IMPORTANT: Assets.icons.icStar,
  }[this]!;
}