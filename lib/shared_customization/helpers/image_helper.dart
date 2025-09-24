// ignore_for_file: depend_on_referenced_packages, use_build_context_synchronously

// Dart imports:
import 'dart:io';

// Flutter imports:
import 'package:device_info_plus/device_info_plus.dart';
import 'package:first_aid/generated/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

// Project imports:
import '/shared_customization/helpers/dialogs/dialog_helper.dart';

class ImagePickerHelper {
  ImagePickerHelper._();

  static final ImagePicker _picker = ImagePicker();

  /// Shows image picker with specified options
  ///
  /// [context] - BuildContext for showing dialogs
  /// [withCameraOption] - Whether to include camera option
  /// [multiSelection] - Whether to allow multiple image selection
  /// [withVideoOption] - Whether to allow video selection
  /// [fileSelected] - List of already selected files
  /// [maxFiles] - Maximum number of files that can be selected (only applies when multiSelection is true)
  /// [imageQuality] - Quality of the selected images (0-100)
  static Future<XFile?> showImagePickerSingle({
    required BuildContext context,
    required ImageSource source,
    double? maxWidth,
    double? maxHeight,
    int? imageQuality,
  }) async {
    try {
      bool canAccess = false;
      if (Platform.isAndroid) {
        DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
        final androidInfo = await deviceInfoPlugin.androidInfo;
        if (androidInfo.version.sdkInt > 32) {
          // final PermissionStatus ps = await Permission.photos.request();
          // canAccess = ps.isGranted || ps.isLimited;
          canAccess = true;
          // print("#######################");
          // // print(ps.isGranted);
          // // print(ps.isLimited);
        } else {
          final PermissionStatus ps = await Permission.storage.request();
          canAccess = ps.isGranted || ps.isLimited;
        }
      } else {
        final photosPermission = await Permission.photos.request();
        canAccess = photosPermission.isGranted || photosPermission.isLimited;
      }

      if (!canAccess) {
        _showPermissionDialog(context, Permission.photos);
        return null;
      }

      final XFile? image = await _picker.pickImage(
        source: source,
        imageQuality: imageQuality,
      );

      return image;
    } on PlatformException catch (e) {
      debugPrint('Error picking image: $e');
      if (e.code == 'photo_access_denied') {
        _showPermissionDialog(context, Permission.photos);
      } else if (e.code == 'camera_access_denied') {
        _showPermissionDialog(context, Permission.camera);
      }
      return null;
    } catch (e) {
      debugPrint('Unexpected error picking image: $e');
      return null;
    }
  }

  /// Shows image picker with specified options
  ///
  /// [context] - BuildContext for showing dialogs
  /// [withCameraOption] - Whether to include camera option
  /// [multiSelection] - Whether to allow multiple image selection
  /// [withVideoOption] - Whether to allow video selection
  /// [fileSelected] - List of already selected files
  /// [maxFiles] - Maximum number of files that can be selected (only applies when multiSelection is true)
  /// [imageQuality] - Quality of the selected images (0-100)
  static Future<List<File>> showImagePicker({
    required BuildContext context,
    // bool withCameraOption = true,
    bool multiSelection = true,
    bool withVideoOption = false,
    List<File>? fileSelected,
    int? maxFiles,
    int imageQuality = 50,
  }) async {
    try {
      // if (withCameraOption) {
      //   final cameraPermission = await Permission.camera.request();
      //   if (cameraPermission.isDenied) {
      //     _showPermissionDialog(context, Permission.camera);
      //     return [];
      //   }
      // }
      bool canAccess = false;
      if (Platform.isAndroid) {
        DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
        final androidInfo = await deviceInfoPlugin.androidInfo;
        if (androidInfo.version.sdkInt > 32) {
          final PermissionStatus ps = await Permission.photos.request();
          canAccess = ps.isGranted || ps.isLimited;
        } else {
          final PermissionStatus ps = await Permission.storage.request();
          canAccess = ps.isGranted || ps.isLimited;
        }
      } else {
        final photosPermission = await Permission.photos.request();
        canAccess = photosPermission.isGranted || photosPermission.isLimited;
      }

      if (!canAccess) {
        _showPermissionDialog(context, Permission.photos);
        return [];
      }

      List<XFile>? data = [];

      if (!multiSelection) {
        final XFile? image = await _picker.pickImage(
          source: ImageSource.gallery,
          imageQuality: imageQuality,
        );
        if (image != null) {
          data.add(image);
        }
      } else {
        if (withVideoOption) {
          final List<XFile> newData = await _picker.pickMultipleMedia();
          data.addAll(newData);
        } else {
          final List<XFile> newData = await _picker.pickMultiImage(
            imageQuality: imageQuality,
          );
          data.addAll(newData);
        }
      }

      if (maxFiles != null && data.length > maxFiles) {
        data = data.sublist(0, maxFiles);
      }

      return data.map((xfile) => File(xfile.path)).toList();
    } on PlatformException catch (e) {
      debugPrint('Error picking image: $e');
      if (e.code == 'photo_access_denied') {
        _showPermissionDialog(context, Permission.photos);
      } else if (e.code == 'camera_access_denied') {
        _showPermissionDialog(context, Permission.camera);
      }
      return [];
    } catch (e) {
      debugPrint('Unexpected error picking image: $e');
      return [];
    }
  }
  static Future<File?> takePhotoFromCamera(
      {required BuildContext context}) async {
    PermissionStatus status = await Permission.camera.request();
    try {
      XFile? xFile = await ImagePicker().pickImage(source: ImageSource.camera);
      return xFile == null ? null : File(xFile.path);
    } on PlatformException {
      PermissionStatus status = await Permission.camera.request();
      if ([PermissionStatus.denied, PermissionStatus.permanentlyDenied]
          .contains(status)) {
        showConfirmDialog(context,
            title: i18n.Permission.CameraPermissionPurpose,
            content: i18n.Permission.PleaseAcceptCameraPermission,
            onAccept: openAppSettings);
        return null;
      }
    }
    return null;
  }

  /// Shows permission dialog for the specified permission
  static void _showPermissionDialog(
      BuildContext context, Permission permission) {
    String title;
    String content;

    switch (permission) {
      case Permission.camera:
        title = i18n.Permission.CameraPermissionPurpose;
        content = i18n.Permission.PleaseAcceptCameraPermission;
        break;
      case Permission.photos:
        title = i18n.Permission.GalleryPermissionPurpose;
        content = i18n.Permission.PleaseAccessGalleryPermission;
        break;
      default:
        title = i18n.Permission.PermissionRequired;
        content = i18n.Permission.PleaseAcceptPermission;
    }

    showConfirmDialog(
      context,
      title: title,
      content: content,
      onAccept: openAppSettings,
    );
  }
}
