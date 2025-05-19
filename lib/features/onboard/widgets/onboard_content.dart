import 'package:flutter/material.dart';
import 'package:solar_panel_monitoring_app/core/constants/app_images.dart';
import 'package:solar_panel_monitoring_app/core/utils/General%20Text.dart';
import 'package:solar_panel_monitoring_app/features/onboard/widgets/title_with_reflection_section.dart';
import 'package:solar_panel_monitoring_app/features/onboard/widgets/top_indicator_section.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/space.dart';
import 'image_section.dart';


class OnboardContent extends StatelessWidget {
  const OnboardContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeightSpace(space: 0.015),
        // الـ Indicator العلوي
        TopIndicatorSection(),
        const HeightSpace(space: 0.02),
        // الصورة مع الظلال الصفراء
        ImageSection(),
        // العنوان مع "انعكاس" خلفي
        TitleWithReflectionSection(),

        const HeightSpace(space: 0.02),

        // الوصف
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
          child: Text(
            'Solar panel monitoring systems gather data\n'
                'from various sensors and meters installed\n'
                'within the solar PV system.',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),

        const HeightSpace(space: 0.04),

        // زر Get Started
        Center(
          child: SizedBox(
            width: size.width * 0.8,
            child: ElevatedButton(
              onPressed: () {

              },
              child: GeneralText(
                  text: 'Get Started',
                sizetext: size.width * 0.04,
                color: Colors.black,
              ),
            ),
          ),
        ),

        const HeightSpace(space: 0.02),
      ],
    );
  }
}