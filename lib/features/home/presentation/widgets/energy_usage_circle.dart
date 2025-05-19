
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solar_panel_monitoring_app/core/constants/app_images.dart';
import 'package:solar_panel_monitoring_app/core/utils/General%20Text.dart';

import '../../../../core/constants/app_colors.dart';
import '../../logic/home_provider.dart';


class EnergyUsageCircle extends StatelessWidget {
  const EnergyUsageCircle({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final usage = context.watch<HomeProvider>().usagePercent;

    return SizedBox(
      width: size.width * 0.55,
      height: size.width * 0.55,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: size.width * 0.5,
            height: size.width * 0.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppImages.border2x),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.15), // 🔹 لون الظل
                  blurRadius: 100, // 🔹 مدى نعومة الظل
                  spreadRadius: 60, // 🔹 مدى انتشار الظل
                  offset: Offset(0, 4), // 🔹 موقع الظل
                ),
              ],

            ),
          ),
          Container(
            width: size.width * 0.4,
            height: size.width * 0.4,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  colors: [AppColors.yellow2,AppColors.yellow2,AppColors.yellow2,AppColors.yellow,AppColors.yellow3],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),

            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  GeneralText(
                    text: "Energy Usages",
                    sizetext:size.width * 0.04 ,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                  GeneralText(
                    text:"${(usage * 100).toInt()}%",
                    sizetext:size.width * 0.13,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
              ],
            ),
          ),
          Positioned(
            bottom: size.height * 0.019,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: size.width * 0.06,
              child: Icon(
                Icons.flash_on,
                color: AppColors.yellow,
                size: size.width * 0.07,
              ),
            ),
          ),

        ],
      ),
    );
  }
}

//
// class SplitBorderCircle extends StatelessWidget {
//   final double size;        // قطر الدائرة الكلي
//   final double borderWidth; // سمك الـ border
//   final double gapDegrees;  // مقدار القطع بالدرجات (هنا 30°)
//
//   const SplitBorderCircle({
//     Key? key,
//     required this.size,
//     this.borderWidth = 15,
//     this.gapDegrees = 30,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return CustomPaint(
//       size: Size(size, size),
//       painter: _SplitBorderCirclePainter(
//         borderWidth: borderWidth,
//         gapDegrees: gapDegrees,
//       ),
//     );
//   }
// }
//
// class _SplitBorderCirclePainter extends CustomPainter {
//   final double borderWidth;
//   final double gapDegrees;
//
//   _SplitBorderCirclePainter({
//     required this.borderWidth,
//     required this.gapDegrees,
//   });
//
//   @override
//   void paint(Canvas canvas, Size size) {
//     final center = size.center(Offset.zero);
//
//     // نصف قطر الدائرة الداخلية (المملوءة بالأصفر) مع الأخذ بالـ gap بعين الاعتبار
//     final innerRadius = size.width / 2 - borderWidth - 5;
//
//     // ﺭﺳﻢ ﻣﻠﺎﺋﻲ (الدائرة الصفراء)
//     canvas.drawCircle(
//       center,
//       innerRadius,
//       Paint()
//         ..color = Colors.yellow
//         ..style = PaintingStyle.fill,
//     );
//
//     // التحويل لرموز زوايا Flutter (راديان)
//     final gapRadians = gapDegrees * pi / 180;
//     // طول القوس المتبقي بعد قطع gap
//     final totalSweep = 2 * pi - gapRadians;
//     // يقسم الباقي على اثنين لنصف أخضر ونصف رمادي
//     final eachSweep = totalSweep / 2;
//     // نبدأ القوس من منتصف الفجوة الموجودة في الأسفل
//     // زاوية منتصف الفجوة = -90° (نقطة أسفل الدائرة) بالـ راديان
//     final startAngle = -pi / 1.4 + gapRadians / 2;
//
//     // إطار القوس الخارجي (نصف قطره = innerRadius + borderWidth/2)
//     final outerRect = Rect.fromCircle(
//       center: center,
//       radius: innerRadius + borderWidth / 2,
//     );
//
//     // Paint للحد
//     final paint = Paint()
//       ..strokeWidth = borderWidth
//       ..style = PaintingStyle.stroke
//       ..strokeCap = StrokeCap.butt;
//
//     // ارسم النصف الأخضر
//     paint.color = Colors.green;
//     canvas.drawArc(
//       outerRect,
//       startAngle,
//       eachSweep,
//       false,
//       paint,
//     );
//
//     // ارسم النصف الرمادي
//     paint.color = Colors.grey;
//     canvas.drawArc(
//       outerRect,
//       startAngle + eachSweep + gapRadians,
//       eachSweep,
//       false,
//       paint,
//     );
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
// }