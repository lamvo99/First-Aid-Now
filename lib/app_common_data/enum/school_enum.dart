import 'package:first_aid/generated/strings.g.dart';

enum SchoolEnum {
  tinhDo,
  thienTong,
  matTong,
  phapHoa,
  general,
}


extension SchoolEnumExt on SchoolEnum {
  String get title => {
        SchoolEnum.tinhDo: i18n.School.TinhDo,
        SchoolEnum.thienTong: i18n.School.Thien,
        SchoolEnum.matTong: i18n.School.Mat,
        SchoolEnum.phapHoa: i18n.School.PhapHoa,
        SchoolEnum.general: i18n.School.General,
      }[this]!;
}
