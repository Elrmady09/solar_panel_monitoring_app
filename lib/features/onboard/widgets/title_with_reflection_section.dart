
import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class TitleWithReflectionSection extends StatelessWidget {
  const TitleWithReflectionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: Stack(
        children: [
          // نص عريض وشفّاف بالخلف
          Opacity(
            opacity: 0.1,
            child: Text(
              'SOLAR\nMONITORING',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: AppColors.white,
                height: 1.0,
              ),
            ),
          ),
          // النص الفعلي
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 4),
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
                    text: 'reduce climate\n change ⚡',
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
        ],
      ),
    );
  }
}
