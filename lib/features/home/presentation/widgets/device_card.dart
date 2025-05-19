import 'package:flutter/material.dart';
import 'package:solar_panel_monitoring_app/core/utils/General%20Text.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../data/models/device_model.dart';


class DeviceCard extends StatelessWidget {
  final DeviceModel device;
  const DeviceCard({Key? key, required this.device}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool isHighlighted = device.name == 'Livingroom';
    return Container(
      decoration: BoxDecoration(
        color: isHighlighted ? AppColors.yellow : AppColors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppColors.yellow.withOpacity(0.1), // 🔹 لون الظل
            blurRadius: 100, // 🔹 مدى نعومة الظل
            spreadRadius: 60, // 🔹 مدى انتشار الظل
            offset: Offset(0, 4), // 🔹 موقع الظل
          ),
        ],
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(device.icon, size: 28, color: isHighlighted ? AppColors.black : AppColors.black54),

          GeneralText(
            padding:EdgeInsets.only(top: size.height * 0.01,bottom: size.height * 0.005),
              text:device.name,
              color:isHighlighted ? AppColors.black : AppColors.black87,
              fontWeight: FontWeight.w400,
              ),
          GeneralText(
              text: '${device.usage} Kwh',
              color: isHighlighted ? AppColors.black : AppColors.black87,
              sizetext:size.width * 0.05 ,
              fontWeight: FontWeight.w900,
          ),
        ],
      ),
    );
  }
}