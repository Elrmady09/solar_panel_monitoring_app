
import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/General Text.dart';
import '../../../statistics/presentation/pages/statistics_page.dart';


class DevicesTitel extends StatelessWidget {
  const DevicesTitel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children:  [
        GeneralText(
          text: 'Devices',
          color: AppColors.white,
          sizetext: size.width * 0.05,
          fontWeight: FontWeight.bold,

        ),
        Spacer(),
        GestureDetector(
          onTap: (){
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const StatisticsPage()),
            );
          },
          child: GeneralText(
            text: 'See More',
            color: AppColors.yellow,
            sizetext: size.width * 0.035,
          ),
        ),
      ],
    );
  }
}
