import 'package:flutter/material.dart';
import '../../shared/custom_bottomsheet.dart';

void openBottomBar({
  required BuildContext context,
  required Widget child,
  String? title,
}) {
  showModalBottomSheet(
    context: context,
    builder: (_) => CustomBottomBar(title: title, child: child),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20),
      ),
    ),
  );
}