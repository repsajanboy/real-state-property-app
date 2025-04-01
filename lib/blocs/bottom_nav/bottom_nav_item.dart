import 'package:flutter/material.dart';

class BottomNavItem {
  final Widget page;
  final String title;
  final Widget icon;
  final Widget activeIcon;

  BottomNavItem({
    required this.page,
    required this.title,
    required this.icon,
    required this.activeIcon,
  });
}