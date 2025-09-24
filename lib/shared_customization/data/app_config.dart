import 'dart:io';

import 'package:first_aid/generated/strings.g.dart';
import 'package:first_aid/shared_customization/helpers/banner_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:in_app_update/in_app_update.dart';

class AppConfig {
  static final AppConfig _instance = AppConfig._internal();

  factory AppConfig() => _instance;

  AppConfig._internal();

  ///
  /// FETCH CHECK UPDATE
  ///
  Future<void> checkUpdate() async {
    try {
      if (!kDebugMode) return;
      if (!Platform.isAndroid) return;
      final result = await InAppUpdate.checkForUpdate();
      if (result.updateAvailability == UpdateAvailability.updateAvailable) {
        final updateResult = await InAppUpdate.startFlexibleUpdate();
        switch (updateResult) {
          case AppUpdateResult.success:
            await InAppUpdate.completeFlexibleUpdate();
          case AppUpdateResult.userDeniedUpdate:
            break;
          case AppUpdateResult.inAppUpdateFailed:
            showErrorBanner(content: i18n.Update.UpdateError);
            break;
        }
      }
    } catch (e) {
      // Handle any errors that occur during the update check
    }
  }

}
