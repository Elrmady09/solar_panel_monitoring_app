
import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class TopIndicatorSection extends StatelessWidget {
  const TopIndicatorSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(4, (index) {
          final isActive = index == 1;
          return Expanded(
            child: Container(
              height: 4,
              margin: const EdgeInsets.symmetric(horizontal: 4),
              color: isActive ? AppColors.yellow : AppColors.white,
            ),
          );
        }),
      ),
    );
  }
}
