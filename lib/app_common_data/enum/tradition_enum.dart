import 'package:first_aid/generated/strings.g.dart';

enum TraditionEnum {
  theravada,
  mahayana,
}

extension TraditionEnumExt on TraditionEnum {
  String get title =>
      {
        TraditionEnum.theravada: i18n.Tradition.Theravada,
        TraditionEnum.mahayana: i18n.Tradition.Mahayana,
      }[this]!;
}
