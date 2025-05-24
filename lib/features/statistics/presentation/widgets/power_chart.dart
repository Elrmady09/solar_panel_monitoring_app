
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:provider/provider.dart';
import 'package:solar_panel_monitoring_app/core/utils/General%20Text.dart';

import '../../../../core/constants/app_colors.dart';
import '../../logic/statistics_provider.dart';



class PowerChart extends StatelessWidget {
  const PowerChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final prov = context.watch<StatisticsProvider>();
    final data = prov.monthlyUsage;

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.backgroundpowerchart,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GeneralText(
                    text: '78.36 Kwh',
                    sizetext:size.width * 0.05 ,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                  GeneralText(
                    text: 'Report on your power consumption',
                    sizetext:size.width * 0.032 ,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ],
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.01,vertical: size.height * 0.003),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black
                ),
                child: Row(
                  children: [
                    GeneralText(
                      padding: EdgeInsets.only(left: size.width * 0.01),
                        text: 'Week',
                      sizetext: size.width * 0.035,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                    Icon(Icons.keyboard_arrow_down,color: Colors.white,),
                  ],
                ),
              ),

            ],
          ),

          SizedBox(
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
                        return GeneralText(
                          padding: EdgeInsets.only(top: size.height * 0.01),
                            text:data[idx].label,
                            color: AppColors.black,
                            sizetext: 12,
                        );
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
                        width: size.width * 0.06,
                        borderRadius: BorderRadius.circular(size.width * 0.07),
                      )
                    ],
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}