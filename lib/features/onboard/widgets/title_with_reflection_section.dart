
import 'package:flutter/material.dart';
import 'package:solar_panel_monitoring_app/core/utils/General%20Text.dart';
import 'package:solar_panel_monitoring_app/features/onboard/widgets/yellow_shadow.dart';

import '../../../core/constants/app_colors.dart';

class TitleWithReflectionSection extends StatelessWidget {
  const TitleWithReflectionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height * 0.265,
      child: Stack(
        children: [
          // نص عريض وشفّاف بالخلف
          Opacity(
            opacity: 0.05,
            child: GeneralText(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              text: 'Solar\nMonitoring',
              sizetext:size.width * 0.18 ,
              fontWeight: FontWeight.bold,
              color: AppColors.white,
              height: 1.0,
            ),
          ),
          // النص الفعلي
          Padding(
            padding:EdgeInsets.only(top: size.height * 0.035, left: size.width * 0.05,right: size.width * 0.05),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Solar panels\n',
                    style: TextStyle(
                      color: AppColors.yellow,
                      fontSize: size.width * 0.11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'reduce climate\nchange ⚡',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: size.width * 0.11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: size.width * 0.1,
              top: size.height * 0.08,
              child: YellowShadow(
                width: size.width * 0.1,
                heigh: size.height * 0.1,
              ),
          ),
        ],
      ),
    );
  }
}
