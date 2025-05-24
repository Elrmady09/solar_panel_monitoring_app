

import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/General Text.dart';

class StatisticsHeader extends StatelessWidget {
  const StatisticsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Row(
      children: [
        GestureDetector(
          onTap: (){
            Navigator.pop(context);

          },
          child: Container(
            width: size.width * 0.075,
            height: size.width * 0.075,
            decoration: BoxDecoration(
              color: AppColors.black54.withOpacity(0.5),
              borderRadius: BorderRadius.circular(size.width * 0.7),
            ),
            child: Center(child: Icon(Icons.arrow_back_ios_new, color: AppColors.white,size: size.width * 0.038,)),
          ),
        ),

        GeneralText(
            padding: EdgeInsets.only(left: size.width * 0.02),
            text: 'Power usages',
            color: AppColors.white,
            sizetext: 20,
            fontWeight: FontWeight.bold
        ),
        const Spacer(),
        GestureDetector(
          child: Container(
            width: size.width * 0.075,
            height: size.width * 0.075,
            decoration: BoxDecoration(
              color: AppColors.black54.withOpacity(0.5),
              borderRadius: BorderRadius.circular(size.width * 0.7),
            ),
            child: Center(child: Icon(Icons.more_vert, color: AppColors.white,size: size.width * 0.047),),
          ),
        ),
      ],
    );
  }
}
