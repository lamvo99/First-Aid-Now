// ignore_for_file: use_build_context_synchronously

// Dart imports:

// Flutter imports:

import 'package:bot_toast/bot_toast.dart';
import 'package:first_aid/gen/assets.gen.dart';
import 'package:first_aid/generated/strings.g.dart';
import 'package:first_aid/model/supply/supply.dart';
import 'package:first_aid/public_providers/export.dart';
import 'package:first_aid/screens/supply_screen/components/change_supply_widget.dart';
import 'package:first_aid/screens/supply_screen/components/supply_detail_widget.dart';
import 'package:first_aid/screens/supply_screen/components/supply_item.dart';
import 'package:first_aid/screens/supply_screen/cubit/supply_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

// Project imports:
import '../../app_common_data/export.dart';
import '../../shared_customization/export.dart';
import '/screens/bloc_base_screen.dart';
import 'components/fast_check_widget.dart';

class SupplyScreen extends StatefulWidget {
  const SupplyScreen({super.key});

  @override
  State<SupplyScreen> createState() => _SupplyScreenState();
}

class _SupplyScreenState extends State<SupplyScreen> {
  late BuildContext _context;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {});
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBaseScreen<SupplyCubit, SupplyState>(
      createCubit: (_) => SupplyCubit()..initData(),
      onShowSuccess: (_, state) => Future(() => null),
      onShowSuccessDone: (_, state) {
        context.read<AppNotificationCubit>().notifyInApp(InAppNotification(
            type: state.status!.action!, data: state.status!.data));
      },
      listeners: [
        ///
        ///
        ///
        InAppNotiListener(
          listener: (context, state, inAppNoti) async {},
        ),
      ],
      builder: (context, state) {
        _context = context;

        return AppLayout(
          onWillPop: () => Future.value(true),
          title: i18n.Supplies.Title,
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          floatingActionButton: SpeedDial(
            onPress: () {
              showChangeSupplyModel(
                model: SupplyModel(
                  isImportant: false,
                  isChecked: false,
                  quantity: 0,
                  supplyCategory: SuppliesCategory.ESSENTIAL,
                ),
                onAccept: (supply, cancelFunc) {
                  SupplyEntity supplyEntity = SupplyEntity.formModel(supply);
                  meritBoxHelper.supplyBox.put(supplyEntity);

                  cancelFunc();
                  showSuccessBanner(content: i18n.Supplies.AddSuccess);
                  _context.read<SupplyCubit>().getSupplies();
                },
              );
            },
            backgroundColor: AppColors.PRIMARY_BASE,
            child: Icon(
              CupertinoIcons.add,
              color: Colors.white,
              weight: 20,
              size: 32,
            ),
          ),
          body: AppContainer(
            width: 1.sw,
            height: 1.sh,
            color: AppColors.white,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              spacing: 12,
              children: [
                ///
                /// FAST CHEKC
                ///
                AppContainer(
                  borderRadius: BorderRadius.circular(16),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  boxShadow: AppColors.shadow2,
                  color: AppColors.white,
                  border: Border.all(color: AppColors.gray200),
                  child: Builder(builder: (context) {
                    int totalLength = state.supplies.length;
                    int totalChecked =
                        state.supplies.where((e) => e.isChecked == true).length;

                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Assets.icons.icSquareCheck.svg(width: 24, height: 24),
                        SizedBox(width: 6),
                        AppText(
                          "$totalChecked/$totalLength",
                          style: AppTextStyle.textSecondary16W500,
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            showFastCheckDialog(context);
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              AppText(
                                i18n.Supplies.FastCheck,
                                style: AppTextStyle.textSecondary14W400
                                    .copyWith(color: AppColors.gray600),
                              ),
                              SizedBox(width: 2),
                              Assets.icons.icArrowRight.svg(),
                            ],
                          ),
                        )
                      ],
                    );
                  }),
                ),

                ///
                /// SEARCH AND SORT
                ///
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  spacing: 6,
                  children: [
                    Expanded(
                      child: AppTextField(
                        onChanged: (value) {
                          _context.read<SupplyCubit>().updateState(
                              (state) => state.copyWith(search: value));
                        },
                        placeholder: i18n.CommonAction.Search,
                        borderRadius: BorderRadius.circular(16),
                        suffixIcon: Assets.icons.icSearch.svg(),
                      ),
                    ),
                    PopupMenuButton<SupplySort>(
                      position: PopupMenuPosition.under,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(BORDER_RADIUS_VALUE)),
                      splashRadius: 20,
                      onSelected: (value) {
                        context.read<SupplyCubit>().updateState(
                            (state) => state.copyWith(supplySort: value));
                      },
                      color: AppColors.white,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context) {
                        return SupplySort.values.map((e) {
                          return PopupMenuItem<SupplySort>(
                            value: e,
                            child: AppContainer(
                              color: e == state.supplySort
                                  ? AppColors.primary500
                                  : AppColors.white,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 8),
                              borderRadius: BorderRadius.circular(8),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                spacing: 4,
                                children: [
                                  e.icon.svg(
                                      width: 16,
                                      height: 16,
                                      colorFilter: ColorFilter.mode(
                                          e == state.supplySort
                                              ? AppColors.white
                                              : AppColors.SECONDARY,
                                          BlendMode.srcIn)),
                                  AppText(
                                    e.title,
                                    style: AppTextStyle.textSecondary14W400
                                        .copyWith(
                                            color: e == state.supplySort
                                                ? AppColors.white
                                                : AppColors.SECONDARY),
                                  )
                                ],
                              ),
                            ),
                          );
                        }).toList();
                      },
                      child: AppContainer(
                        borderRadius: BorderRadius.circular(16),
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                        boxShadow: AppColors.shadow2,
                        color: AppColors.white,
                        border: Border.all(color: AppColors.gray200),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            state.supplySort.icon.svg(width: 24, height: 24),
                            SizedBox(width: 6),
                            AppText(
                              state.supplySort.title,
                              style: AppTextStyle.textSecondary14W400,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),

                ///
                /// LIST
                ///
                Expanded(
                  child: Builder(
                    builder: (context) {
                      List<SupplyModel> listTotal = List.from(state.supplies);
                      List<SupplyModel> listSort = listTotal
                          .where((e) => e.name!
                              .toLowerCase()
                              .contains(state.search.toLowerCase()))
                          .toList();

                      if (state.supplySort == SupplySort.DEFAULT) {
                        listSort = listSort;
                      } else if (state.supplySort == SupplySort.AZ) {
                        listSort.sort((a, b) => a.name!.compareTo(b.name!));
                      } else if (state.supplySort == SupplySort.CATEGORY) {
                        listSort.sort((a, b) => a.supplyCategory!.title
                            .compareTo(a.supplyCategory!.title));
                      } else if (state.supplySort == SupplySort.CHECKED) {
                        listSort.sort((a, b) => (a.isChecked == true ? 0 : 1)
                            .compareTo(b.isChecked == true ? 0 : 1));
                      } else if (state.supplySort == SupplySort.IMPORTANT) {
                        listSort.sort((a, b) => (a.isImportant == true ? 0 : 1)
                            .compareTo(b.isImportant == true ? 0 : 1));
                      } else if (state.supplySort == SupplySort.EXPIRED) {
                        listSort.sort((a, b) => (b
                                    .dateExpired?.millisecondsSinceEpoch ??
                                9999999999)
                            .compareTo(a.dateExpired?.millisecondsSinceEpoch ??
                                9999999999));
                      }

                      return AppListBuilder<SupplyModel>(
                        sourceData: listSort,
                        padding: EdgeInsets.only(bottom: 100),
                        onItemRender: (supplyModel) {
                          return SupplyItem(
                            supplyModel: supplyModel,
                            onDetail: () {
                              showSupplyDetailDialog(context, supplyModel);
                            },
                            onEdit: () {
                              showChangeSupplyModel(
                                model: supplyModel,
                                onAccept: (supply, cancelFunc) {
                                  SupplyEntity supplyEntity =
                                      SupplyEntity.formModel(supply);
                                  meritBoxHelper.supplyBox.put(supplyEntity);
                                  cancelFunc();
                                  showSuccessBanner(
                                      content: i18n.Supplies.EditSuccess);
                                  _context.read<SupplyCubit>().getSupplies();
                                },
                              );
                            },
                            onDelete: () {
                              showConfirmDialog(
                                context,
                                content: i18n.Supplies.DeleteConfirm,
                                onAccept: () {
                                  SupplyEntity supplyEntity =
                                      SupplyEntity.formModel(supplyModel);
                                  bool success = meritBoxHelper.supplyBox
                                      .remove(supplyEntity.id);
                                  if (success) {
                                    _context.read<SupplyCubit>().getSupplies();

                                    showSuccessBanner(
                                        content: i18n.Supplies.DeleteSuccess);
                                  } else {
                                    showErrorBanner(
                                        content: i18n.CommonNotiAction
                                            .YourActionMakingFailed);
                                  }
                                },
                              );
                            },
                          );
                        },
                        mainAxisSpacing: 8,
                        onReload: () async {
                          context.read<SupplyCubit>().getSupplies();
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void Function() showFastCheckDialog(BuildContext context) {
    return BotToast.showAnimationWidget(
      toastBuilder: (cancelFunc) => Material(
        color: AppColors.transparent,
        child: Center(
          child: BlocProvider.value(
            value: BlocProvider.of<SupplyCubit>(context),
            child: FastCheckWidget(
              cancelFunc: () {
                cancelFunc();
              },
            ),
          ),
        ),
      ),
      backgroundColor: AppColors.black.withOpacity(0.5),
      animationDuration: const Duration(milliseconds: 0),
      crossPage: false,
      allowClick: false,
    );
  }

  void Function() showSupplyDetailDialog(
      BuildContext context, SupplyModel supply) {
    return BotToast.showAnimationWidget(
      toastBuilder: (cancelFunc) => Material(
        color: AppColors.transparent,
        child: Center(
          child: SupplyDetailWidget(
            supplyModel: supply,
            cancelFunc: () {
              cancelFunc();
            },
          ),
        ),
      ),
      backgroundColor: AppColors.black.withOpacity(0.5),
      animationDuration: const Duration(milliseconds: 0),
      crossPage: false,
      allowClick: false,
    );
  }

  void Function() showChangeSupplyModel({
    required SupplyModel model,
    Function(SupplyModel, VoidCallback)? onAccept,
    VoidCallback? closeHandle,
  }) {
    return BotToast.showAnimationWidget(
      toastBuilder: (cancelFunc) => Material(
        color: AppColors.transparent,
        child: Center(
          child: ChangeSupplyWidget(
            supplyModel: model,
            onAcceptHandle: (supplyModel) async {
              if (onAccept != null) {
                try {
                  await onAccept(supplyModel, () {
                    cancelFunc();
                    closeHandle?.call();
                  });
                } catch (e) {
                  rethrow;
                }
              }
            },
            cancelFunc: () {
              cancelFunc();
              closeHandle?.call();
            },
          ),
        ),
      ),
      backgroundColor: AppColors.black.withOpacity(0.5),
      animationDuration: const Duration(milliseconds: 0),
      crossPage: false,
      allowClick: false,
    );
  }
}
