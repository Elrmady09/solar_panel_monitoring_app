import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../logic/statistics_provider.dart';
import '../widgets/statistics_content.dart';



class StatisticsPage extends StatelessWidget {
  const StatisticsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => StatisticsProvider(),
      child: SafeArea(
        child: Scaffold(
          body: StatisticsContent(),
        ),
      ),
    );
  }
}
