import 'package:flutter/material.dart';
import 'package:solar_panel_monitoring_app/core/constants/app_images.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/space.dart';


class OnboardContent extends StatelessWidget {
  const OnboardContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeightSpace(space: 0.02),

          // الـ Indicator العلوي
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(4, (index) {
              final isActive = index == 1;
              return Expanded(
                child: Container(
                  height: 4,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  color: isActive ? AppColors.yellow : AppColors.white,
                ),
              );
            }),
          ),

          const HeightSpace(space: 0.04),

          // الصورة مع الظلال الصفراء
          Expanded(
            child: Stack(
              children: [
                Positioned.fill(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      AppImages.onbordingImage3x,
                      //fit: BoxFit.cover,
                      scale: 5,
                    ),
                  ),
                ),
                // ظل أصفر شفاف أعلى يمين
                Positioned(
                  top: 16,
                  right: 16,
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: AppColors.yellow.withOpacity(0.3),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                // ظل أصفر شفاف أسفل يسار
                Positioned(
                  bottom: 24,
                  left: 24,
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: AppColors.yellow.withOpacity(0.3),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const HeightSpace(space: 0.04),

          // العنوان مع "انعكاس" خلفي
          Stack(
            children: [
              // نص عريض وشفّاف بالخلف
              Opacity(
                opacity: 0.1,
                child: Text(
                  'SOLAR\nMONITORING',
                  style: TextStyle(
                    fontSize: 64,
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
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'reduce climate change ⚡',
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          const HeightSpace(space: 0.02),

          // الوصف
          Text(
            'Solar panel monitoring systems gather data\n'
                'from various sensors and meters installed\n'
                'within the solar PV system.',
            style: Theme.of(context).textTheme.bodyLarge,
          ),

          const HeightSpace(space: 0.04),

          // زر Get Started
          Center(
            child: SizedBox(
              width: size.width * 0.8,
              child: ElevatedButton(
                onPressed: () {
                  // TODO: الانتقال للصفحة التالية
                },
                child: const Text('Get Started'),
              ),
            ),
          ),

          const HeightSpace(space: 0.02),
        ],
      ),
    );
  }
}