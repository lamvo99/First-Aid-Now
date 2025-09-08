import 'package:first_aid/model/merit/merit.dart';
import 'package:first_aid/screens/merit_journal/cubit/merit_journal_cubit.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../app_common_data/export.dart';
import '../../../shared_customization/export.dart';

class MeritBarChart extends StatefulWidget {
  final List<MeritModel> listMerit;
  final MeritJournalState state;

  const MeritBarChart({super.key, required this.state, required this.listMerit});

  @override
  State<MeritBarChart> createState() => _MeritBarChartState();
}

class _MeritBarChartState extends State<MeritBarChart> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      color: AppColors.gray100,
      borderRadius: BorderRadius.circular(8),
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Column(
        children: [
          SizedBox(height: 20),
          AspectRatio(
            aspectRatio: 2.0,
            child: BarChart(
              BarChartData(
                barTouchData: barTouchData,
                titlesData: titlesData,
                borderData: borderData,
                barGroups: barGroups,
                gridData: const FlGridData(show: false),
                alignment: BarChartAlignment.spaceAround,
              ),
            ),
          ),
        ],
      ),
    );
  }

  BarTouchData get barTouchData => BarTouchData(
        enabled: false,
        touchTooltipData: BarTouchTooltipData(
          getTooltipColor: (group) => Colors.transparent,
          tooltipPadding: EdgeInsets.zero,
          tooltipMargin: 4,
          getTooltipItem: (
            BarChartGroupData group,
            int groupIndex,
            BarChartRodData rod,
            int rodIndex,
          ) {
            return BarTooltipItem(
              rod.toY.round().toString(),
              const TextStyle(
                color: AppColors.gray700,
                fontWeight: FontWeight.bold,
              ),
            );
          },
        ),
      );

  Widget getTitles(double value, TitleMeta meta) {
    MeritType meritType = MeritType.values[value.toInt()];
    return SideTitleWidget(
      meta: meta,
      space: 4,
      child: AppContainer(
        width: 24,
        height: 24,
        padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
        child: meritType.icon.svg(width: 24, height: 24),
      ),
    );
  }

  FlTitlesData get titlesData => FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            getTitlesWidget: getTitles,
          ),
        ),
        leftTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      );

  FlBorderData get borderData => FlBorderData(
        show: false,
      );

  List<BarChartGroupData> get barGroups => [
        BarChartGroupData(
          x: 0,
          barRods: [
            BarChartRodData(
              toY: widget.listMerit.where((e) => e.meritType == MeritType.LIBERATION).length.toDouble(),
              color: MeritType.LIBERATION.backgroundColor,
            )
          ],
          showingTooltipIndicators: [0],
        ),
        BarChartGroupData(
          x: 1,
          barRods: [
            BarChartRodData(
              toY: widget.listMerit.where((e) => e.meritType == MeritType.GIVING).length.toDouble(),
              color: MeritType.GIVING.backgroundColor,
            )
          ],
          showingTooltipIndicators: [0],
        ),
        BarChartGroupData(
          x: 2,
          barRods: [
            BarChartRodData(
              toY: widget.listMerit.where((e) => e.meritType == MeritType.OFFERINGS).length.toDouble(),
              color: MeritType.OFFERINGS.backgroundColor,
            )
          ],
          showingTooltipIndicators: [0],
        ),
        BarChartGroupData(
          x: 3,
          barRods: [
            BarChartRodData(
              toY: widget.listMerit.where((e) => e.meritType == MeritType.GOOD_DEEDS).length.toDouble(),
              color: MeritType.GOOD_DEEDS.backgroundColor,
            )
          ],
          showingTooltipIndicators: [0],
        ),
        BarChartGroupData(
          x: 4,
          barRods: [
            BarChartRodData(
              toY: widget.listMerit.where((e) => e.meritType == MeritType.PRACTICE).length.toDouble(),
              color: MeritType.PRACTICE.backgroundColor,
            )
          ],
          showingTooltipIndicators: [0],
        ),
        BarChartGroupData(
          x: 5,
          barRods: [
            BarChartRodData(
              toY: widget.listMerit.where((e) => e.meritType == MeritType.BLOOD_DONATION).length.toDouble(),
              color: MeritType.BLOOD_DONATION.backgroundColor,
            )
          ],
          showingTooltipIndicators: [0],
        ),
        BarChartGroupData(
          x: 6,
          barRods: [
            BarChartRodData(
              toY: widget.listMerit.where((e) => e.meritType == MeritType.PENITENCE).length.toDouble(),
              color: MeritType.PENITENCE.backgroundColor,
            )
          ],
          showingTooltipIndicators: [0],
        ),
        BarChartGroupData(
          x: 7,
          barRods: [
            BarChartRodData(
              toY: widget.listMerit.where((e) => e.meritType == MeritType.OTHER).length.toDouble(),
              color: MeritType.OTHER.backgroundColor,
            )
          ],
          showingTooltipIndicators: [0],
        ),
      ];
}
