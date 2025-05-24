import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solar_panel_monitoring_app/core/utils/General%20Text.dart';

import '../../../../core/constants/app_colors.dart';
import '../../logic/statistics_provider.dart';



class HistoryList extends StatelessWidget {
  const HistoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final history = context.watch<StatisticsProvider>().history;
    final size = MediaQuery.of(context).size;

    return ListView.separated(
      itemCount: history.length,
      separatorBuilder: (_, __) => Divider(
        color: Colors.grey.withOpacity(0.5),
      ),
      itemBuilder: (context, i) {
        final item = history[i];
        return Container(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.01,vertical: size.height * 0.015 ),

          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.black54,
                  child: Icon(item['icon'], color: AppColors.white)
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GeneralText(
                        text: item['title'],
                        color: AppColors.white,
                        fontWeight: FontWeight.w700,
                        sizetext: size.width * 0.04,
                    ),
                    GeneralText(
                      text: '${item['devices']} Devices',
                      color: AppColors.white.withOpacity(0.7),
                      fontWeight: FontWeight.w700,
                      sizetext: size.width * 0.03,
                    ),
                  ],
                ),
              ),
              GeneralText(
                text: '${item['percent']}%',
                color: AppColors.yellow,
                fontWeight: FontWeight.w700,
                sizetext: size.width * 0.045,
              ),
            ],
          ),
        );
      },
    );
  }
}
