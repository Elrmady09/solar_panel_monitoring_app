import 'package:flutter/material.dart';
import 'package:solar_panel_monitoring_app/core/constants/app_images.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/space.dart';

class InviteButton extends StatelessWidget {
  const InviteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Row(
        children: [
          const Text('Invite your friends', style: TextStyle(fontWeight: FontWeight.bold)),
          const Spacer(),
          // صور الأصدقاء (افتراضية)
          CircleAvatar(radius: 12, backgroundImage: AssetImage(AppImages.friends1)),
          const SizedBox(width: 4),
          CircleAvatar(radius: 12, backgroundImage: AssetImage(AppImages.friends2)),
          const SizedBox(width: 4),
          CircleAvatar(radius: 12, backgroundImage: AssetImage(AppImages.friends3)),
          const WidthSpace(space: 0.02),
          SizedBox(
            width: size.width * 0.25,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Invite Now'),
            ),
          ),
        ],
      ),
    );
  }
}