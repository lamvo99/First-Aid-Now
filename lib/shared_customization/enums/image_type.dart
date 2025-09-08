// Flutter imports:
import 'package:first_aid/gen/assets.gen.dart';
import 'package:flutter/material.dart';

// Project imports:

enum ImageType { avatar, image, web }

extension ImageTypeExt on ImageType {
  Image get imagePlaceHolder => {
        ImageType.avatar: Assets.images.avatarPlaceholder.image(),
        ImageType.image: Assets.images.imageLoading.image(),
        ImageType.web: Assets.images.web.image(),
      }[this]!;
}
