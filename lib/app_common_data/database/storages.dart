// Flutter imports:
import 'package:first_aid/generated/strings.g.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:shared_preferences/shared_preferences.dart';

// Project imports:

class CustomSharedPreferences {
  late final SharedPreferences prefs;

  ///
  /// isBackground
  ///
  bool get isBackgroundOne => prefs.getBool('is_Background_One') ?? false;

  set isBackgroundOne(bool value) => prefs.setBool('is_Background_One', value);

  Future setBackground(bool isBackground) async {
    await prefs.setBool('is_Background_One', isBackground);
  }
  ///
  /// isBackground
  ///
  bool get isMoOne => prefs.getBool('is_mo_one') ?? false;

  set isMoOne(bool value) => prefs.setBool('is_mo_one', value);

  Future setMoOne(bool isBackground) async {
    await prefs.setBool('is_mo_one', isBackground);
  }
  ///
  /// isBackground
  ///
  String get bonkAudio => prefs.getString('bonk_audio') ?? "audio/mo/bonk1.mp3";

  set bonk_audio(String value) => prefs.setString('bonk_audio', value);

  Future setBonkAudio(String audio) async {
    await prefs.setString('bonk_audio', audio);
  }
  ///
  /// isBackground
  ///
  String get bellAudio => prefs.getString('bell_audio') ?? "audio/bell/chuong1.mp3";

  set bellAudio(String value) => prefs.setString('bell_audio', value);

  Future setBellAudio(String audio) async {
    await prefs.setString('audio', audio);
  }


  ///
  /// INIT
  ///
  Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }


  Future<void> setLanguage(String languageCode) async {
    prefs.setString("devices_locale", languageCode);
    // await LocaleSettings.setLocale(languageCode == "en" ? AppLocale.en : AppLocale.vi);
    await WidgetsBinding.instance.performReassemble();
  }

  Future<void> initLanguage() async {
    String locale = prefs.getString("devices_locale") ?? "vi";
    // await LocaleSettings.setLocale(locale == "en" ? AppLocale.en : AppLocale.vi);
    await WidgetsBinding.instance.performReassemble();
  }

}
