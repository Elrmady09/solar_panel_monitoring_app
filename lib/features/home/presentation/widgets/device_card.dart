import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../data/models/device_model.dart';


class DeviceCard extends StatelessWidget {
  final DeviceModel device;
  const DeviceCard({Key? key, required this.device}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isHighlighted = device.name == 'Livingroom';
    return Container(
      decoration: BoxDecoration(
        color: isHighlighted ? AppColors.yellow : AppColors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(device.icon, size: 28, color: isHighlighted ? AppColors.black : AppColors.black54),
          const Spacer(),
          Text(device.name,
              style: TextStyle(
                color: isHighlighted ? AppColors.black : AppColors.black87,
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(height: 4),
          Text('${device.usage} Kwh',
              style: TextStyle(
                color: isHighlighted ? AppColors.black : AppColors.black87,
                fontSize: 16,
              )),
        ],
      ),
    );
  }
}