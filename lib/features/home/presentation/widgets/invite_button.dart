import 'package:flutter/material.dart';
import 'package:solar_panel_monitoring_app/core/constants/app_images.dart';
import 'package:solar_panel_monitoring_app/core/utils/General%20Text.dart';
import '../../../../core/constants/app_colors.dart';


class InviteButton extends StatelessWidget {
  const InviteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.12,
      decoration: BoxDecoration(
        color: AppColors.yellow,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
        margin: EdgeInsets.only(top: size.height * 0.015),
        height: size.height * 0.1,
        decoration: BoxDecoration(
          color: AppColors.white.withOpacity(0.9),
          borderRadius: BorderRadius.circular(16),
        ),

        child: Row(
          children: [
            SizedBox(
              height: size.height * 0.08,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Invite your friends', style: TextStyle(fontWeight: FontWeight.bold)),

                  // صور الأصدقاء (افتراضية)
                  SizedBox(
                    height: size.height * 0.05,
                    width: size.width * 0.19,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          left: 0,
                            child: CircleAvatar(radius: 14, backgroundImage: AssetImage(AppImages.friends1))
                        ),
                        Positioned(
                          left: size.width * 0.054,
                            child: CircleAvatar(radius: 14, backgroundImage: AssetImage(AppImages.friends2))
                        ),
                        Positioned(
                          left: size.width * 0.105,
                            child: CircleAvatar(radius: 14, backgroundImage: AssetImage(AppImages.friends3))
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            Spacer(),
            Container(
              width: size.width * 0.3,
              height: size.height * 0.06,
              decoration: BoxDecoration(
                color: AppColors.yellow,
                borderRadius: BorderRadius.circular(size.width * 0.035)
              ),
              child: Center(
                child: GeneralText(
                    text: 'Invite Now',
                  sizetext: size.width * 0.037,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}