import 'package:flutter/widgets.dart';

class TabModel {
  const TabModel({
    required this.label,
    required this.icon,
    required this.selectedIcon,
    required this.primaryPage,
    required this.secondaryPage,
  });
  final String label;
  final IconData icon;
  final IconData selectedIcon;
  final Widget primaryPage;
  final Widget secondaryPage;
}
