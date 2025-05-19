
import 'dart:ffi';

import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class YellowShadow extends StatelessWidget {
  const YellowShadow({Key? key, this.width, this.heigh}) : super(key: key);
  final double? width;
  final double? heigh;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: width ?? size.width * 0.4,
      height: heigh ?? size.width * 0.4,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: AppColors.yellow.withOpacity(0.15), // 🔹 لون الظل
            blurRadius: 100, // 🔹 مدى نعومة الظل
            spreadRadius: 60, // 🔹 مدى انتشار الظل
            offset: Offset(0, 4), // 🔹 موقع الظل
          ),
        ],

      ),
    );
  }
}
