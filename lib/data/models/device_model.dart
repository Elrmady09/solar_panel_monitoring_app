import 'package:flutter/material.dart';

class DeviceModel {
  final String name;
  final IconData icon;
  final int usage; // بالكيلو واط ساعة

  DeviceModel({
    required this.name,
    required this.icon,
    required this.usage,
  });
}