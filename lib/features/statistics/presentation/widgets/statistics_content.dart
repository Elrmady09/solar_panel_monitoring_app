import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/space.dart';
import '../widgets/power_chart.dart';
import '../widgets/history_list.dart';

class StatisticsContent extends StatelessWidget {
  const StatisticsContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: Column(
        children: [
          const HeightSpace(space: 0.02),

          // الهيدر العلوي
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back, color: AppColors.white),
                onPressed: () => Navigator.pop(context),
              ),
              const Text(
                'Power usages',
                style: TextStyle(
                    color: AppColors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              const Icon(Icons.more_vert, color: AppColors.white),
            ],
          ),

          const HeightSpace(space: 0.03),

          // صندوق الرسم البياني
          const PowerChart(),

          const HeightSpace(space: 0.03),

          // عنوان History
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('History',
                  style: TextStyle(
                      color: AppColors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
              Text('See More',
                  style: TextStyle(color: AppColors.yellow, fontSize: 14)),
            ],
          ),

          const HeightSpace(space: 0.02),

          // قائمة الـ history
          const Expanded(child: HistoryList()),
        ],
      ),
    );
  }
}