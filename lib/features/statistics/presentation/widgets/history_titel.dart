
import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/General Text.dart';

class HistoryTitel extends StatelessWidget {
  const HistoryTitel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:  [
        GeneralText(
            text: 'History',
            color: AppColors.white,
            sizetext: size.width * 0.05,
            fontWeight: FontWeight.w700
        ),
        GeneralText(
            text: 'See More',
            color: AppColors.yellow,
            sizetext: size.width * 0.03,
            fontWeight: FontWeight.w500
        ),
      ],
    );
  }
}
