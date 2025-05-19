
import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_images.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Expanded(
      child: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height ,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppImages.onbordingImage3x),
                  fit: BoxFit.cover
              ),

            ),
          ),

          // ظل أصفر شفاف أعلى يمين
          Positioned(
            top: size.height * 0.03,
            left: size.width * 0.05,
            child: Container(
              width: size.width * 0.4,
              height: size.width * 0.4,
              decoration: BoxDecoration(
                //color: AppColors.yellow.withOpacity(0.3),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.yellow.withOpacity(0.15), // 🔹 لون الظل
                    blurRadius: 100, // 🔹 مدى نعومة الظل
                    spreadRadius: 60, // 🔹 مدى انتشار الظل
                    offset: Offset(0, 4), // 🔹 موقع الظل
                  ),
                ],

              ),
            ),
          ),
          // ظل أصفر شفاف أسفل يسار
          Positioned(
            bottom: size.height * 0.03,
            right: size.width * 0.05,
            child: Container(
              width: size.width * 0.4,
              height: size.width * 0.4,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.yellow.withOpacity(0.15), // 🔹 لون الظل
                    blurRadius: 100, // 🔹 مدى نعومة الظل
                    spreadRadius: 60, // 🔹 مدى انتشار الظل
                    offset: Offset(0, 4), // 🔹 موقع الظل
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
