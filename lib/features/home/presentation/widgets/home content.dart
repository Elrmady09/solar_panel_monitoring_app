import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solar_panel_monitoring_app/core/constants/app_images.dart';


import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/space.dart';
import '../../logic/home_provider.dart';
import '../widgets/energy_usage_circle.dart';
import '../widgets/device_card.dart';
import '../widgets/invite_button.dart';


class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<HomeProvider>(context);
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: Column(
        children: [
          const HeightSpace(space: 0.02),
          // الـ Header
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(AppImages.Profile),
              ),
              const WidthSpace(space: 0.02),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Good Morning 👋',
                      style: TextStyle(color: AppColors.white, fontSize: 14)),
                  Text('Fayez Karim',
                      style: TextStyle(color: AppColors.white, fontSize: 18, fontWeight: FontWeight.bold)),
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
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),

          const HeightSpace(space: 0.04),

          // دائرة الطاقة
          EnergyUsageCircle(),

          const HeightSpace(space: 0.04),

          // عنوان Devices
          Row(
            children: const [
              Text('Devices',
                  style: TextStyle(color: AppColors.white, fontSize: 20, fontWeight: FontWeight.bold)),
              Spacer(),
              Text('See More',
                  style: TextStyle(color: AppColors.yellow, fontSize: 14)),
            ],
          ),

          const HeightSpace(space: 0.02),

          // شبكة الأجهزة
          Expanded(
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: prov.devices.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 1.3,
              ),
              itemBuilder: (context, i) {
                return DeviceCard(device: prov.devices[i]);
              },
            ),
          ),

          const HeightSpace(space: 0.02),

          // زر Invite
          const InviteButton(),

          const HeightSpace(space: 0.02),
        ],
      ),
    );
  }
}