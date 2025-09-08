import 'dart:async';

import 'package:first_aid/app_common_data/common_data/global_variable.dart';
import 'package:first_aid/generated/strings.g.dart';
import 'package:first_aid/shared_customization/data/app_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:talker_flutter/talker_flutter.dart';

import 'screens/my_app/my_app.dart';

void main() async {
  runZonedGuarded(() async {
    WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    LocaleSettings.useDeviceLocale(); // and this
    unawaited(MobileAds.instance.initialize());

    // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
    Talker talker = TalkerFlutter.init();
    GetIt.instance.registerSingleton<Talker>(talker);

    await sp.init();
    // await AppConfig().getData();
    await meritBoxHelper.init();
    await appDatabase.init();
    await notificationHelper.initializeNotifications();
    await sp.initLanguage();
    // await dotenv.load(fileName: ".env");
    // apis = ApiClient(AppDio(), baseUrl: dotenv.env['BASE_URL']!);

    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
    ).then((val) {
      runApp(
        TalkerWrapper(
          talker: talker,
          options: const TalkerWrapperOptions(
            enableErrorAlerts: false,
          ),
          child: TranslationProvider(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: MyApp(),
            ),
          ),
        ),
      );
    });
  }, (dynamic exception, StackTrace stackTrace) async {
    // await Sentry.captureException(exception, stackTrace: stackTrace);
  });
}
