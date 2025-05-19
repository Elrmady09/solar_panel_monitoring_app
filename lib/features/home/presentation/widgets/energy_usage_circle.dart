import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'package:provider/provider.dart';

import '../../../../core/constants/app_colors.dart';
import '../../logic/home_provider.dart';


class EnergyUsageCircle extends StatelessWidget {
  const EnergyUsageCircle({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final usage = context.watch<HomeProvider>().usagePercent;

    return Stack(
      alignment: Alignment.center,
      children: [
        CircularPercentIndicator(
          radius: size.width * 0.28,
          lineWidth: size.width * 0.04,
          percent: usage,
          circularStrokeCap: CircularStrokeCap.round,
          backgroundColor: Colors.grey.shade800,
          linearGradient: const LinearGradient(
            colors: [Color(0xFFFFC107), Color(0xFFFF9800)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Energy Usages",
              style: TextStyle(
                fontSize: size.width * 0.045,
                color: Colors.white,
              ),
            ),
            Text(
              "${(usage * 100).toInt()}%",
              style: TextStyle(
                fontSize: size.width * 0.1,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 10,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: size.width * 0.07,
            child: Icon(
              Icons.flash_on,
              color: AppColors.yellow,
              size: size.width * 0.07,
            ),
          ),
        ),
      ],
    );
  }
}