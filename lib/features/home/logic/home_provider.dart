import 'package:flutter/material.dart';
import '../../../data/models/device_model.dart';

class HomeProvider extends ChangeNotifier {
  double _usagePercent = 0.85;
  final List<DeviceModel> _devices = [
    DeviceModel(name: 'Air Condition', icon: Icons.ac_unit, usage: 278),
    DeviceModel(name: 'Computer', icon: Icons.computer, usage: 155),
    DeviceModel(name: 'Livingroom', icon: Icons.weekend, usage: 198),
    DeviceModel(name: 'CCTV Camera', icon: Icons.videocam, usage: 88),
  ];

  double get usagePercent => _usagePercent;
  List<DeviceModel> get devices => _devices;

  void setUsagePercent(double newPercent) {
    _usagePercent = newPercent;
    notifyListeners();
  }

}