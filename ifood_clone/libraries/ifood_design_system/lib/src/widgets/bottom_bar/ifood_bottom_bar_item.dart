import 'package:flutter/material.dart';

class IfoodBottomBarItem {
  final String label;
  final IconData icon;
  final IconData activeIcon;
  final int countBage;

  IfoodBottomBarItem(
      {required this.label,
      required this.icon,
      required this.activeIcon,
      this.countBage = 0});
}
