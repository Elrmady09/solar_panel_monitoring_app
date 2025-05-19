import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';


class EnergyUsageCircle extends StatelessWidget {
  final double percent;
  const EnergyUsageCircle({Key? key, required this.percent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.of(context).size.width * 0.6;
    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // الخلفية الرمادية
          CircularProgressIndicator(
            value: 1.0,
            strokeWidth: 12,
            valueColor: AlwaysStoppedAnimation(AppColors.white.withOpacity(0.2)),
          ),
          // الجزء الأبيض
          CircularProgressIndicator(
            value: 1.0 - percent,
            strokeWidth: 12,
            valueColor: AlwaysStoppedAnimation(AppColors.white.withOpacity(0.5)),
          ),
          // الجزء الأصفر
          CircularProgressIndicator(
            value: percent,
            strokeWidth: 12,
            valueColor: AlwaysStoppedAnimation(AppColors.yellow),
          ),
          // النص والرمز
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('${(percent * 100).toInt()}%',
                  style: const TextStyle(color: AppColors.white, fontSize: 32, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                decoration: const BoxDecoration(
                  color: AppColors.white,
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(8),
                child: const Icon(Icons.flash_on, color: AppColors.yellow),
              ),
            ],
          ),
        ],
      ),
    );
  }
}