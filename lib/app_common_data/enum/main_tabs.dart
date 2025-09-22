// Flutter imports:
import 'package:first_aid/gen/assets.gen.dart';
import 'package:first_aid/generated/strings.g.dart';
import 'package:first_aid/screens/home/home_screen.dart';
import 'package:first_aid/screens/learn/learn_screen.dart';
import 'package:first_aid/screens/setting/setting_screen.dart';
import 'package:first_aid/screens/tools/tools_screen.dart';
import 'package:flutter/material.dart';

// Package imports:

// Project imports:

enum MainTabs {
  home,
  learn,
  tool,
  quiz,
  // setting,
}

extension MainTabsExt on MainTabs {
  String get title =>
      {
        MainTabs.home: i18n.MainTab.Home,
        MainTabs.learn: i18n.Learn.Library,
        MainTabs.tool: i18n.Tool.Title,
        MainTabs.quiz: i18n.MainTab.Quiz,
        // MainTabs.setting: i18n.MainTab.Settings,
      }[this]!;

  SvgGenImage get icon =>
      {
        MainTabs.home: Assets.icons.icHome,
        MainTabs.learn: Assets.icons.icBook,
        MainTabs.tool: Assets.icons.icTool,
        MainTabs.quiz: Assets.icons.icQuiz,
        // MainTabs.setting: Assets.icons.icSetting,
      }[this]!;

  SvgGenImage get iconActive =>
      {
        MainTabs.home: Assets.icons.icHomeActive,
        MainTabs.learn: Assets.icons.icBookActive,
        MainTabs.tool: Assets.icons.icToolActive,
        MainTabs.quiz: Assets.icons.icQuizActive,
        // MainTabs.setting: Assets.icons.icSettingActive,
      }[this]!;

  bool get isShowAppBar =>
      {
        MainTabs.home: false,
        MainTabs.learn: true,
        MainTabs.tool: true,
        MainTabs.quiz: false,
        // MainTabs.setting: false,
      }[this]!;

  Widget get widget =>
      {
        MainTabs.home: const HomeScreen(),
        MainTabs.learn: const LearnScreen(),
        MainTabs.tool: const ToolsScreen(),
        MainTabs.quiz: const ToolsScreen(),
        // MainTabs.setting: const SettingScreen(),
      }[this]!;

  List<Widget> actions(BuildContext context) =>
      {
        MainTabs.home: <Widget>[],
        MainTabs.learn: <Widget>[],
        MainTabs.tool: <Widget>[],
        MainTabs.quiz: <Widget>[],
        // MainTabs.setting: <Widget>[],
      }[this]!;
}
