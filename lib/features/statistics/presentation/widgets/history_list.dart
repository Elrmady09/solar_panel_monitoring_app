import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants/app_colors.dart';
import '../../logic/statistics_provider.dart';



class HistoryList extends StatelessWidget {
  const HistoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final history = context.watch<StatisticsProvider>().history;

    return ListView.separated(
      itemCount: history.length,
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      itemBuilder: (context, i) {
        final item = history[i];
        return Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: AppColors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Icon(item['icon'], color: AppColors.yellow),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item['title'],
                        style: const TextStyle(color: AppColors.white, fontSize: 16)),
                    Text('${item['devices']} Devices',
                        style: TextStyle(color: AppColors.white.withOpacity(0.7), fontSize: 12)),
                  ],
                ),
              ),
              Text('${item['percent']}%',
                  style: const TextStyle(color: AppColors.yellow, fontWeight: FontWeight.bold)),
            ],
          ),
        );
      },
    );
  }
}
