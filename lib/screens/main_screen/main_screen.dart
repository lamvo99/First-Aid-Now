// ignore_for_file: use_build_context_synchronously

// Dart imports:

// Flutter imports:

import 'package:first_aid/public_providers/export.dart';
import 'package:first_aid/screens/learn/cubit/learn_cubit.dart';
import 'package:first_aid/screens/home/cubit/home_cubit.dart';
import 'package:first_aid/screens/setting/cubit/setting_cubit.dart';
import 'package:first_aid/screens/tools/cubit/tools_cubit.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import '../../app_common_data/export.dart';
import '../../shared_customization/export.dart';
import '/screens/bloc_base_screen.dart';
import '/screens/main_screen/cubit/main_screen_cubit.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late BuildContext _context;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {});
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppUserCubit, AppUserState>(
      builder: (context, appUserState) {
        return BlocBaseScreen<MainScreenCubit, MainScreenState>.multiProvider(
          providers: [
            BlocProvider<HomeCubit>(create: (context) => HomeCubit()..initData()),
            BlocProvider<SettingCubit>(create: (context) => SettingCubit()),
            BlocProvider<LearnCubit>(create: (context) => LearnCubit()..initData()),
            BlocProvider<ToolsCubit>(create: (context) => ToolsCubit()),
          ],
          listeners: [
            ///
            ///  Handle RealTimeNoti
            ///

            ///
            ///
            ///
            InAppNotiListener(
              listener: (context, state, inAppNoti) async {},
            ),
          ],
          builder: (context, state) {
            _context = context;
            return AppDismissKeyboard(
              child: Scaffold(
                resizeToAvoidBottomInset: false,
                drawer: AppContainer(
                  color: AppColors.warning600,
                ),
                body: Stack(
                  children: [
                    AppLayout(
                      leading: EMPTY_WIDGET,
                      onWillPop: () => Future.value(false),
                      drawer: Drawer(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const DrawerHeader(
                              decoration: BoxDecoration(color: Colors.blue),
                              child: Text('Drawer Header'),
                            ),
                          ],
                        ),
                      ),
                      title: state.currentTab.title,
                      body: state.currentTab.widget,
                      actions: state.currentTab.actions(context),
                      showAppBar: state.currentTab.isShowAppBar,
                      bottomNavigationBar: AppContainer(
                        boxShadow: AppColors.shadow,
                        child: BottomNavigationBar(
                          items: MainTabs.values
                              .map(
                                (e) => BottomNavigationBarItem(
                                  label: e.title,
                                  icon: (e.title == state.currentTab.title)
                                      ? e.iconActive.svg(
                                          colorFilter: const ColorFilter.mode(
                                              AppColors.primary600,
                                              BlendMode.srcIn),
                                          width: 24,
                                          height: 24,
                                        )
                                      : e.icon.svg(
                                          colorFilter: const ColorFilter.mode(
                                              AppColors.gray600, BlendMode.srcIn),
                                          width: 24,
                                          height: 24,
                                        ),
                                ),
                              )
                              .toList(),
                          backgroundColor: AppColors.white,
                          elevation: 0,
                          selectedLabelStyle: AppTextStyle.textSecondary14W500,
                          unselectedLabelStyle: AppTextStyle.textSecondary14W500
                              .copyWith(color: AppColors.gray600),
                          selectedItemColor: AppColors.primary600,
                          currentIndex: MainTabs.values.indexOf(state.currentTab),
                          onTap: (value) async {
                            context
                                .read<MainScreenCubit>()
                                .changeTab(MainTabs.values[value]);
                            // if (mainTabsActive[value] == MainTabs.report) {
                            //   if (appUserState.myBranch != null) {
                            //     _context.read<ReportCubit>().initData(
                            //         appUserState.myBranch?.id ?? "");
                            //   }
                            // }
                          },
                          mouseCursor: SystemMouseCursors.grab,
                          type: BottomNavigationBarType.fixed,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
