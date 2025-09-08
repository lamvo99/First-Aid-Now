import 'package:first_aid/generated/strings.g.dart';

enum SutrasEnum {
  BASIC,
  DAILY,
  SPECIALIZED,
  LONG,
  REFERENCE,
}

extension SutrasEnumExt on SutrasEnum {
  String get title =>
      {
        SutrasEnum.BASIC: i18n.Sutras.Basic,
        SutrasEnum.DAILY: i18n.Sutras.Daily,
        SutrasEnum.SPECIALIZED: i18n.Sutras.Specialized,
        SutrasEnum.LONG: i18n.Sutras.Long,
        SutrasEnum.REFERENCE: i18n.Sutras.Reference,
      }[this]!;

}