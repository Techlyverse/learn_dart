import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/custom_bottom_sheet.dart';

class UIHelper {
  const UIHelper._();

  static void setUIStyle() {


    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.edgeToEdge,
      overlays: [
        SystemUiOverlay.top,
        SystemUiOverlay.bottom,
      ],
    );

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarDividerColor: Colors.transparent,

        // systemNavigationBarIconBrightness: Brightness.light,
        // statusBarIconBrightness: Brightness.light
      ),
    );
  }

  static void openBottomSheet({
    required BuildContext context,
    required Widget child,
    String? title,
  }) {
    showModalBottomSheet(
      context: context,
      builder: (_) => CustomBottomSheet(title: title, child: child),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
    );
  }
}
