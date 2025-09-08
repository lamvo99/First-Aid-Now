import 'dart:ui';


enum TextAlignEnum {
  start,
  center,
  end,
  right,
  left,
}

extension TextAlignEnumExt on TextAlignEnum {
  TextAlign get title => {
    TextAlignEnum.start: TextAlign.start,
    TextAlignEnum.center: TextAlign.center,
    TextAlignEnum.end: TextAlign.end,
    TextAlignEnum.right: TextAlign.right,
    TextAlignEnum.left: TextAlign.left,
  }[this]!;
}
