import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/utils/space.dart';
import '../../../onboard/widgets/devices title.dart';
import '../../../onboard/widgets/header home.dart';
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
          const HeightSpace(space: 0.005),
          // الـ Header
          HeaderHome(),
          const HeightSpace(space: 0.005),
          // دائرة الطاقة
          EnergyUsageCircle(),
          const HeightSpace(space: 0.005),
          // عنوان Devices
          DevicesTitel(),
          const HeightSpace(space: 0.01),
          // شبكة الأجهزة
          Expanded(
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: prov.devices.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 1.55,
              ),
              itemBuilder: (context, i) {
                return DeviceCard(device: prov.devices[i]);
              },
            ),
          ),
          const HeightSpace(space: 0.01),
          // زر Invite
          const InviteButton(),
          const HeightSpace(space: 0.01),
        ],
      ),
    );
  }
}