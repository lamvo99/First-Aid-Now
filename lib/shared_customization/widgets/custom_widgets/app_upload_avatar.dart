// Dart imports:
import 'dart:io';

// Flutter imports:
import 'package:first_aid/app_common_data/app_colors.dart';
import 'package:first_aid/app_common_data/app_text_sytle.dart';
import 'package:first_aid/gen/assets.gen.dart';
import 'package:first_aid/generated/strings.g.dart';
import 'package:first_aid/shared_customization/export.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import '../../../app_common_data/common_data/global_variable.dart';

class AppUploadAvatar extends StatefulWidget {
  final void Function(File file)? onSelectFile;
  final bool isAvatar;
  final String? initialUrl;
  final File? initialFile;
  final double? width;
  final double? height;
  final BorderRadius borderRadius;
  final BoxFit fit;
  final int maxWidth;
  final int maxHeight;
  final int quality;
  final bool isPermission;

  const AppUploadAvatar({
    super.key,
    required this.onSelectFile,
    this.isAvatar = true,
    this.initialUrl,
    this.initialFile,
    this.width,
    this.height,
    this.borderRadius =
        const BorderRadius.all(Radius.circular(BORDER_RADIUS_VALUE)),
    this.fit = BoxFit.cover,
    this.maxWidth = 1080,
    this.maxHeight = 1080,
    this.quality = 85,
    this.isPermission = true,
  });

  @override
  State<AppUploadAvatar> createState() => _AppUploadAvatarState();
}

class _AppUploadAvatarState extends State<AppUploadAvatar> {
  File? currentSelectedFile;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    currentSelectedFile = widget.initialFile;
  }

  @override
  void didUpdateWidget(AppUploadAvatar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initialFile != widget.initialFile) {
      currentSelectedFile = widget.initialFile;
    }
  }

  Future<void> _handleImageSelection(ImageSource source) async {
    try {
      setState(() => _isLoading = true);

      final XFile? image = await ImagePickerHelper.showImagePickerSingle(
        context: context,
        source: source,
        maxWidth: widget.maxWidth.toDouble(),
        maxHeight: widget.maxHeight.toDouble(),
        imageQuality: widget.quality,
      );

      if (image != null) {
        // await _cropImage(image.path);
        final File croppedImage = File(image.path);
              if (await croppedImage.exists()) {
                setState(() {
                  currentSelectedFile = croppedImage;
                });
                widget.onSelectFile?.call(croppedImage);
              }
      }
    } catch (e) {
      debugPrint('Error selecting image: $e');
    } finally {
      setState(() => _isLoading = false);
    }
  }

  // Future<void> _cropImage(String imagePath) async {
  //   try {
  //     final CroppedFile? croppedFile = await ImageCropper().cropImage(
  //       sourcePath: imagePath,
  //       compressFormat: ImageCompressFormat.jpg,
  //       compressQuality: widget.quality,
  //       uiSettings: [
  //         AndroidUiSettings(
  //           toolbarTitle: 'Chỉnh sửa',
  //           toolbarColor: AppColors.primary600,
  //           toolbarWidgetColor: Colors.white,
  //           initAspectRatio: CropAspectRatioPreset.original,
  //           lockAspectRatio: false,
  //         ),
  //         IOSUiSettings(),
  //         WebUiSettings(context: context),
  //       ],
  //     );
  //
  //     if (croppedFile != null) {
  //       final File croppedImage = File(croppedFile.path);
  //       if (await croppedImage.exists()) {
  //         setState(() {
  //           currentSelectedFile = croppedImage;
  //         });
  //         widget.onSelectFile?.call(croppedImage);
  //       }
  //     }
  //   } catch (e) {
  //     debugPrint('Error cropping image: $e');
  //   }
  // }

  void _showImagePickerModal() {
    showModalBottomSheet(
      context: context,
      isDismissible: true,
      isScrollControlled: true,
      backgroundColor: AppColors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      builder: (_) => _buildImagePickerContent(),
    );
  }

  Widget _buildImagePickerContent() {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
        color: AppColors.white,
      ),
      padding: EdgeInsets.only(
        left: 8,
        right: 16,
        top: 12,
        bottom: 12,
      ),
      width: 1.sw,
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.icons.icIndicator.svg(),
            const SizedBox(height: 16),
            _buildImageOption(
              icon: Assets.icons.icCamera,
              label: i18n.CommonData.TakeAPhoto,
              onTap: () {
                Navigator.pop(context);
                _handleImageSelection(ImageSource.camera);
              },
            ),
            const SizedBox(height: 16),
            _buildImageOption(
              icon: Assets.icons.icGallery,
              label: i18n.CommonData.Gallery,
              onTap: () {
                Navigator.pop(context);
                _handleImageSelection(ImageSource.gallery);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageOption({
    required SvgGenImage icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          icon.svg(
            colorFilter: const ColorFilter.mode(
              AppColors.primary600,
              BlendMode.srcIn,
            ),
            width: 24,
            height: 24,
          ),
          const SizedBox(width: 8),
          AppText(
            label,
            style: AppTextStyle.textSecondary14W500,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.isPermission && !_isLoading) {
          _showImagePickerModal();
        }
      },
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: widget.isAvatar
                  ? BorderRadius.circular(999)
                  : widget.borderRadius,
            ),
            child: Container(
              width: widget.width,
              height: widget.height,
              decoration: BoxDecoration(
                color: AppColors.gray200,
                borderRadius: widget.isAvatar
                    ? BorderRadius.circular(999)
                    : widget.borderRadius,
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(16, 24, 40, 0.10),
                    offset: Offset(0, 3.556), // x, y
                    blurRadius: 7.111, // blur
                    spreadRadius: -1.778, // spread
                  ),
                  BoxShadow(
                    color: Color.fromRGBO(16, 24, 40, 0.06),
                    offset: Offset(0, 1.778),
                    blurRadius: 3.556,
                    spreadRadius: -1.778,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: widget.isAvatar
                    ? BorderRadius.circular(999)
                    : widget.borderRadius,
                child: _buildImageContent(),
              ),
            ),
          ),
          if (!_isLoading && widget.isPermission)
            Positioned(
              bottom: 0,
              right: 0,
              child: AppContainer(
                width: 24,
                height: 24,
                child: Assets.icons.icEditAvatar.svg(),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildImageContent() {
    if (currentSelectedFile != null) {
      return Image.file(
        currentSelectedFile!,
        fit: widget.fit,
        errorBuilder: (context, error, stackTrace) => avatarLoading,
      );
    } else if (widget.initialUrl.isNotEmptyOrNull) {
      return CachedNetworkImage(
        imageUrl: widget.initialUrl!,
        fit: widget.fit,
        maxHeightDiskCache: widget.maxHeight,
        maxWidthDiskCache: widget.maxWidth,
        placeholder: (context, url) => avatarLoading,
        errorWidget: (context, url, error) => avatarLoading,
      );
    }
    return avatarLoading;
  }

  Widget get avatarLoading => LayoutBuilder(
        builder: (context, constraint) {
          return AppContainer(
            color: AppColors.gray50,
            border: Border.all(color: AppColors.gray200),
            borderRadius: widget.isAvatar
                ? BorderRadius.circular(999)
                : widget.borderRadius,
            child: Center(
              child: widget.isAvatar
                  ? Assets.icons.icAvatar.svg(
                      width: constraint.maxHeight / 2,
                    )
                  : Assets.icons.icPlaceholderImageAdd.svg(
                      width: constraint.maxHeight / 2,
                    ),
            ),
          );
        },
      );
}
