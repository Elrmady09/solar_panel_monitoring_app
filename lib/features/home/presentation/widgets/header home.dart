
import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/utils/General Text.dart';
import '../../../../core/utils/space.dart';

class HeaderHome extends StatelessWidget {
  const HeaderHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(AppImages.Profile),
        ),
        const WidthSpace(space: 0.02),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            GeneralText(
              text: 'Good Morning 👋',
              color: AppColors.white,
              sizetext: size.width * 0.033,

            ),
            GeneralText(
              text: 'Fayez Karim',
              color: AppColors.white,
              sizetext: size.width * 0.044,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
        const Spacer(),
        Stack(
          children: [
            const Icon(Icons.notifications_none, color: AppColors.white, size: 28),
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                width: size.width * 0.02,
                height: size.width * 0.02,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
              ),
            ),

          ],
        ),
      ],
    );
  }
}
