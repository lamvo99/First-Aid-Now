// Dart imports:
import 'dart:io';
import 'dart:typed_data';
import 'package:first_aid/shared_customization/extensions/string_ext.dart';
import 'package:dio/dio.dart';

import 'package:file_picker/file_picker.dart' as filePicker;

import 'package:first_aid/generated/strings.g.dart';

import 'package:first_aid/shared_customization/extensions/list_ext.dart';
import 'package:first_aid/shared_customization/helpers/banner_helper.dart';
import 'package:first_aid/shared_customization/helpers/dialogs/dialog_helper.dart';
import 'package:file_saver/file_saver.dart';
import 'package:flutter/material.dart';
import 'package:flutter_file_downloader/flutter_file_downloader.dart';
import 'package:gallery_saver_plus/gallery_saver.dart';
import 'package:image_gallery_saver_plus/image_gallery_saver_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class FileHelpers {
  // Hàm lưu ảnh vào thư viện
  Future<bool> saveImageToGallery(Uint8List imageBytes) async {
    // Kiểm tra và yêu cầu quyền
    try {
      // Lưu ảnh vào thư viện bằng image_gallery_saver_plus
      final result = await ImageGallerySaverPlus.saveImage(
        imageBytes,
        quality: 80, // Chất lượng ảnh (0-100)
        name: "image_${DateTime.now().millisecondsSinceEpoch}", // Tên file
      );

      // Kiểm tra kết quả
      if (result['isSuccess']) {
        print('Ảnh đã được lưu vào thư viện: ${result['filePath']}');
        return true;
      } else {
        print('Lưu ảnh thất bại: ${result['errorMessage']}');
        return false;
      }
    } catch (e) {
      print('Lỗi khi lưu ảnh: $e');
      return false;
    }
  }

  Future<String?> copyFileToAppDir(File sourceFile) async {
    try {
      // Lấy thư mục documents của app
      final appDir = await getApplicationDocumentsDirectory();
      final fileName = sourceFile.path.split('/').last; // lấy tên file
      final newPath = '${appDir.path}/$fileName';

      // Copy file
      final newFile = await sourceFile.copy(newPath);
      print("File đã copy vào: ${newFile.path}");

      return newPath;
    } catch (e) {
      print("Lỗi khi copy file: $e");
      return null;
    }
  }

  Future<bool> saveFileToLocal(String url, String fileName) async {
    try {
      final dio = Dio();

      if (fileName.isImage) {
        bool? success = await GallerySaver.saveImage(url);
        return success ?? false;
      } else if (fileName.isVideo) {
        bool? success = await GallerySaver.saveVideo(url);
        return success ?? false;
      } else {
        bool isSuccess = false;
        if (Platform.isAndroid) {
          final file = await FileDownloader.downloadFile(
            url: url,
            name: fileName,
            downloadDestination: DownloadDestinations.publicDownloads,
            onDownloadCompleted: (val) {
              isSuccess = true;
            },
            onDownloadError: (errorMessage) {
              isSuccess = false;
            },
          );
        } else {
          await FileSaver.instance
              .saveAs(
                  name: fileName,
                  bytes: await dio
                      .get(url,
                          options: Options(responseType: ResponseType.bytes))
                      .then((response) => response.data),
                  mimeType: MimeType.other,
                  ext: '')
              .then((value) {
            showSuccessBanner(
                content: i18n.CommonNotiAction.DownloadFileSuccessfully(
                    filename: value ?? ""));
            isSuccess = true;
          }).catchError((error) {
            isSuccess = false;
          });
        }
        return isSuccess;
      }
    } catch (e) {
      return false;
    }
  }

  Future<String> findLocalPath() async {
    if (Platform.isAndroid) {
      return "/sdcard/download";
    } else {
      var directory = await getApplicationDocumentsDirectory();
      return '${directory.path}${Platform.pathSeparator}Download';
    }
  }

  static Future getFile(
      {required BuildContext context,
      required bool allowMultiple,
      filePicker.FileType type = filePicker.FileType.any,
      List<String>? allowedExtensions}) async {
    try {
      filePicker.FilePickerResult? result = await filePicker.FilePicker.platform
          .pickFiles(
              type: type,
              allowMultiple: allowMultiple,
              allowedExtensions: allowedExtensions.isNotEmptyOrNull
                  ? allowedExtensions
                  : null);
      if (result != null) {
        if (allowMultiple == false) {
          File fileReturn = File(result.files.single.path!);

          if (allowedExtensions.isNotEmptyOrNull &&
              !allowedExtensions!
                  .any((element) => fileReturn.path.endsWith(".$element"))) {
            showErrorBanner(content: i18n.CommonData.ErrorFileSelect);
            return null;
          }
          if (fileReturn.lengthSync() > 10000000) {
            showErrorDialog(context,
                title: i18n.CommonNotiAction.Failed,
                content: i18n.CommonValidation.FileSizeMustLessThan10MB);
            return null;
          } else {
            return fileReturn;
          }
        } else {
          List<File> fileReturn =
              result.files.map((e) => File(e.path!)).toList();
          if (fileReturn.any((element) => element.lengthSync() > 10000000)) {
            showErrorDialog(context,
                title: i18n.CommonNotiAction.Failed,
                content: i18n.CommonValidation
                    .ListFileHasOneOrMoreFileSizeBiggerThan10MB);
            fileReturn
                .removeWhere((element) => element.lengthSync() > 10000000);
            return fileReturn;
          } else {
            return fileReturn;
          }
        }
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
