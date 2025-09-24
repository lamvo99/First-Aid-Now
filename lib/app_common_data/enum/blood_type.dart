
enum BloodType {
  A_POSITIVE,
  A_NEGATIVE,
  B_POSITIVE,
  B_NEGATIVE,
  AB_POSITIVE,
  AB_NEGATIVE,
  O_POSITIVE,
  O_NEGATIVE
}

extension BloodTypeExt on BloodType {
  String get title => {
    BloodType.A_POSITIVE: "A (RH+)",
    BloodType.A_NEGATIVE: "A (RH-)",
    BloodType.B_POSITIVE: "B (RH+)",
    BloodType.B_NEGATIVE: "B (RH-)",
    BloodType.AB_POSITIVE: "AB (RH+)",
    BloodType.AB_NEGATIVE: "AB (RH-)",
    BloodType.O_POSITIVE: "O (RH+)",
    BloodType.O_NEGATIVE: "O (RH-)",
  }[this]!;
}