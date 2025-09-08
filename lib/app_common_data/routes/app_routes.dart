// Flutter imports:
import 'package:first_aid/model/emergency_number/emergency_number.dart';
import 'package:first_aid/screens/emergency_number_list/emergency_number_screen.dart';
import 'package:first_aid/screens/language_setting_screen/language_setting_screen.dart';
import 'package:first_aid/screens/main_screen/main_screen.dart';
import 'package:first_aid/screens/prayer/prayer_screen.dart';
import 'package:first_aid/screens/splash/splash_screen.dart';
import 'package:first_aid/screens/wooden_fish/wooden_fish.dart';
import 'package:first_aid/shared_customization/extensions/build_context_ext.dart';
import 'package:first_aid/shared_customization/widgets/custom_widgets/screens/app_image_full_screen.dart';
import 'package:flutter/material.dart';

// Project imports:

class Routes {
  Routes._();

  static String splash = '/splashScreen';
  static String mainScreen = '/main-screen';
  static String changeLanguage = '/change-language';
  static String emergencyNumber = '/emergency-number';

  static String prayerScree = '/prayer-screen';
  static String dictionaryListScreen = '/dict-list-screen';
  static String imageFullScreen = '/image-full-screen';
  static String eventDetails = '/event_details';
  static String woodenFish = '/woodenFish';

  static final Map<String, Widget Function(BuildContext context)> routes = {
    splash: (context) => const SplashScreen(),
    mainScreen: (context) => const MainScreen(),
    changeLanguage: (context) => LanguageSettingScreen(),
    emergencyNumber: (context) => const EmergencyNumberScreen(),


    prayerScree: (context) => PrayerScreen(),
    woodenFish: (_) => WoodenFishScreen(),
    imageFullScreen: (_) =>
        AppImageFullScreen(params: _.getArguments<AppImageFullScreenParams>()!),
  };
}
