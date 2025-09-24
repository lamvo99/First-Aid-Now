import 'package:first_aid/gen/assets.gen.dart';
import 'package:first_aid/generated/strings.g.dart';
import 'package:first_aid/model/export.dart';
import 'package:first_aid/screens/supply_screen/cubit/supply_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../app_common_data/export.dart';
import '../../../shared_customization/export.dart';

class FastCheckWidget extends StatefulWidget {
  final VoidCallback? cancelFunc;

  const FastCheckWidget({
    super.key,
    this.cancelFunc,
  });

  @override
  State<FastCheckWidget> createState() => _FastCheckWidgetState();
}

class _FastCheckWidgetState extends State<FastCheckWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocBuilder<SupplyCubit, SupplyState>(
          builder: (context, currentState) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppContainer(
              margin: const EdgeInsets.all(20),
              color: AppColors.white,
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 16,
                bottom: 24,
              ),
              borderRadius: BorderRadius.circular(15),
              constraints: BoxConstraints(
                maxHeight: .7.sh,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: AppText(
                          i18n.Supplies.FastCheck,
                          style: AppTextStyle.textSecondary14W500
                              .copyWith(fontSize: 20),
                        ),
                      ),
                      GestureDetector(
                        onTap: widget.cancelFunc,
                        child: Assets.icons.icClose.svg(),
                      )
                    ],
                  ),
                  const SizedBox(height: 12),
                  Flexible(
                    child: AppListBuilder<SupplyModel>(
                      sourceData: currentState.supplies,
                      onItemRender: (supplyModel) {
                        return SupplyWidget(
                          supplyModel: supplyModel,
                          onChecked: () {
                            SupplyModel sup = supplyModel.copyWith(
                                isChecked: !supplyModel.isChecked);
                            SupplyEntity supplyEntity =
                                SupplyEntity.formModel(sup);
                            meritBoxHelper.supplyBox.put(supplyEntity);
                            context.read<SupplyCubit>().updateState(
                                  (state) => state.copyWith(
                                    supplies: state.supplies.update(
                                      (e) => sup,
                                      (e) => e.id == sup.id,
                                    ),
                                  ),
                                );
                          },
                        );
                      },
                      mainAxisSpacing: 8,
                      onReload: () async {
                        context.read<SupplyCubit>().getSupplies();
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}

class SupplyWidget extends StatelessWidget {
  final Function() onChecked;
  final SupplyModel supplyModel;

  const SupplyWidget({
    super.key,
    required this.supplyModel,
    required this.onChecked,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onChecked,
      child: AppContainer(
        border:
            Border.all(color: supplyModel.dateExpired.checkExpiredBorderColor),
        borderRadius: BorderRadius.circular(12),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        color: supplyModel.isImportant == true
            ? AppColors.purple200
            : Colors.white,
        boxShadow: AppColors.shadow2,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 6,
          children: [
            AppRadio(
              value: supplyModel.isChecked,
              onTap: onChecked,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AppText(
                    supplyModel.name ?? "",
                    style: AppTextStyle.textSecondary14W500,
                  ),
                  AppText(
                    "${i18n.Supplies.Quantity}: ${supplyModel.quantity ?? 0}",
                    style:
                        AppTextStyle.textSecondary14W400.copyWith(fontSize: 12),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
