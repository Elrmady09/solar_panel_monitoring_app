
import 'package:flutter/material.dart';
import 'package:solar_panel_monitoring_app/features/onboard/widgets/yellow_shadow.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_images.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: size.width,
          height: size.height * 0.392 ,
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
          child: YellowShadow(),
        ),
        // ظل أصفر شفاف أسفل يسار
        Positioned(
          bottom: size.height * 0.03,
          right: size.width * 0.05,
          child: YellowShadow(),
        ),
      ],
    );
  }
}
