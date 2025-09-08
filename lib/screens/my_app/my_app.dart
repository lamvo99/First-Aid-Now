import 'package:first_aid/generated/strings.g.dart';
import 'package:first_aid/public_providers/export.dart';
import 'package:first_aid/screens/app_obverser.dart';
import 'package:first_aid/screens/main_screen/cubit/main_screen_cubit.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../../app_common_data/export.dart';

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    // etc.
  };
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final botToastBuilder = BotToastInit();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 763),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_ , child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => AppUserCubit()),
            BlocProvider(create: (_) => AppNotificationCubit()),
            BlocProvider(create: (_) => PageRouterCubit()),
            BlocProvider(create: (_) => MainScreenCubit()),
          ],
          child: Builder(builder: (context) {

            return AppObserverScreen(
              child: MaterialApp(
                scrollBehavior: MyCustomScrollBehavior(),
                title: 'FirstAid Now - Sơ cấp cứu',
                debugShowCheckedModeBanner: false,
                themeMode: ThemeMode.system,
                initialRoute:
                Routes.splash,
                routes: Routes.routes,
                supportedLocales: AppLocaleUtils.supportedLocales,
                localizationsDelegates: const [
                  GlobalCupertinoLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                ],
                locale: TranslationProvider.of(context).flutterLocale,
                navigatorObservers: [
                  AppRouteObserver(context),
                  BotToastNavigatorObserver(),
                ],
                builder: (context, child) => Stack(
                  children: [
                    botToastBuilder(context, child),
                  ],
                ),
                navigatorKey: GlobalKeyVariable.navigatorState,
                scaffoldMessengerKey: GlobalKeyVariable.scaffoldMessengerState,
                home: EMPTY_WIDGET,
              ),
            );
          }),
        );
      },
    );
  }
}
