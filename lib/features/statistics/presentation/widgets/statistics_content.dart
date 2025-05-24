import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solar_panel_monitoring_app/core/utils/General%20Text.dart';
import 'package:solar_panel_monitoring_app/features/onboard/widgets/yellow_shadow.dart';
import 'package:solar_panel_monitoring_app/features/statistics/presentation/widgets/statistics_header.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/space.dart';
import '../widgets/power_chart.dart';
import '../widgets/history_list.dart';
import 'history_titel.dart';

class StatisticsContent extends StatelessWidget {
  const StatisticsContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
          left: 0,
            right: 0,
            child: YellowShadow()
        ),

        Positioned(
            left: 0,
            right: 0,
            bottom: size.height * 0.1,
            child: YellowShadow()
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
          child: Column(
            children: [
              const HeightSpace(space: 0.02),
              // الهيدر العلوي
              StatisticsHeader(),
              const HeightSpace(space: 0.03),
              // صندوق الرسم البياني
              const PowerChart(),
              const HeightSpace(space: 0.03),
              // عنوان History
              HistoryTitel(),
              const HeightSpace(space: 0.02),
              // قائمة الـ history
              const Expanded(child: HistoryList()),
            ],
          ),
        ),
      ],
    );
  }
}