import 'package:flutter/material.dart';
import '../../../data/models/usage_model.dart';

class StatisticsProvider extends ChangeNotifier {
  // بيانات استخدام الطاقة لكل شهر
  final List<UsageModel> monthlyUsage = [
    UsageModel(label: 'Jan', value: 40),
    UsageModel(label: 'Feb', value: 55),
    UsageModel(label: 'Mar', value: 70),
    UsageModel(label: 'Apr', value: 65),
    UsageModel(label: 'May', value: 80),
    UsageModel(label: 'Jun', value: 75),
    UsageModel(label: 'Jul', value: 90),
    UsageModel(label: 'Aug', value: 85),
    UsageModel(label: 'Sep', value: 60),
  ];

  // بيانات الـ history
  final List<Map<String, dynamic>> history = [
    {
      'title': 'Computer System',
      'devices': 2,
      'percent': 20,
      'icon': Icons.computer,
    },
    {
      'title': 'Air Conditioner',
      'devices': 5,
      'percent': 40,
      'icon': Icons.ac_unit,
    },
    {
      'title': 'Livingroom',
      'devices': 6,
      'percent': 60,
      'icon': Icons.weekend,
    },
    {
      'title': 'CCTV Camera',
      'devices': 3,
      'percent': 50,
      'icon': Icons.videocam,
    },
  ];
}