
import 'package:first_aid/generated/strings.g.dart';

enum RelationshipType {
  FATHER,
  MOTHER,
  SON,
  DAUGHTER,
  BROTHER,
  SISTER,
  GRANDFATHER,
  GRANDMOTHER,
  UNCLE,
  AUNT,
  COUSIN,
  NEPHEW,
  NIECE,
  HUSBAND,
  WIFE,
  FRIEND,
  COLLEAGUE,
  OTHER,
}

extension RelationshipTypeExt on RelationshipType {
  String get title => {
    RelationshipType.FATHER: i18n.RelationShip.Father,
    RelationshipType.MOTHER: i18n.RelationShip.Mother,
    RelationshipType.SON: i18n.RelationShip.Son,
    RelationshipType.DAUGHTER: i18n.RelationShip.Daughter,
    RelationshipType.BROTHER: i18n.RelationShip.Brother,
    RelationshipType.SISTER: i18n.RelationShip.Sister,
    RelationshipType.GRANDFATHER: i18n.RelationShip.Grandfather,
    RelationshipType.GRANDMOTHER: i18n.RelationShip.Grandmother,
    RelationshipType.UNCLE: i18n.RelationShip.Uncle,
    RelationshipType.AUNT: i18n.RelationShip.Aunt,
    RelationshipType.COUSIN: i18n.RelationShip.Cousin,
    RelationshipType.NEPHEW: i18n.RelationShip.Nephew,
    RelationshipType.NIECE: i18n.RelationShip.Niece,
    RelationshipType.HUSBAND: i18n.RelationShip.Husband,
    RelationshipType.WIFE: i18n.RelationShip.Wife,
    RelationshipType.FRIEND: i18n.RelationShip.Friend,
    RelationshipType.COLLEAGUE: i18n.RelationShip.Colleague,
    RelationshipType.OTHER: i18n.RelationShip.Other,
  }[this]!;
}