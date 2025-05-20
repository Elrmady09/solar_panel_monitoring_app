
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants/app_colors.dart';
import '../../logic/statistics_provider.dart';



class PowerChart extends StatelessWidget {
  const PowerChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final prov = context.watch<StatisticsProvider>();
    final data = prov.monthlyUsage;

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: SizedBox(
        height: 200,
        child: BarChart(
          BarChartData(
            alignment: BarChartAlignment.spaceAround,
            maxY: 100,
            titlesData: FlTitlesData(
              leftTitles: AxisTitles(),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: (value, _) {
                    final idx = value.toInt();
                    if (idx < 0 || idx >= data.length) return const SizedBox();
                    return Text(data[idx].label,
                        style: const TextStyle(color: AppColors.white, fontSize: 12));
                  },
                  reservedSize: 24,
                  interval: 1,
                ),
              ),
              rightTitles: AxisTitles(),
              topTitles: AxisTitles(),
            ),
            gridData: FlGridData(show: false),
            borderData: FlBorderData(show: false),
            barGroups: List.generate(data.length, (i) {
              return BarChartGroupData(
                x: i,
                barRods: [
                  BarChartRodData(
                    toY: data[i].value,
                    color: AppColors.yellow,
                    width: 16,
                    borderRadius: BorderRadius.circular(8),
                  )
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}