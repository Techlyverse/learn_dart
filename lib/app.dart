import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'data/provider_list.dart';
import 'theme/dark_theme.dart';
import 'theme/light_theme.dart';
import 'ui/main_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: listProviders,
      child: MaterialApp(
        theme: lightTheme(),
        darkTheme: darkTheme(),
        themeMode: ThemeMode.light,
        home: const MainScreen(),
      ),
    );
  }
}

// class BouncingBall extends StatefulWidget {
//   @override
//   _BouncingBallState createState() => _BouncingBallState();
// }
//
// class _BouncingBallState extends State<BouncingBall>
//     with TickerProviderStateMixin {
//   late final AnimationController _controller;
//   late final SpringSimulation _simulation;
//   // late final double endValue;
//   final double ballRadius = 30.0;
//
//   @override
//   void initState() {
//     super.initState();
//     // endValue = MediaQuery.of(context).size.height - ballRadius;
//     _simulation = SpringSimulation(
//       const SpringDescription(mass: 1.0, stiffness: 100.0, damping: 1.0),
//       0.0,
//       300,
//       10.0,
//       tolerance: Tolerance.defaultTolerance,
//     );
//
//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 800),
//     )..addListener(() {setState(() {});});
//
//     _controller.animateWith(_simulation);
//     _controller.repeat(reverse: true);
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     double position =
//         (MediaQuery.of(context).size.height - ballRadius) * _controller.value;
//     return AnimatedBuilder(
//       animation: _controller,
//       builder: (context, child) => Stack(
//         children: [
//           Positioned(
//             bottom: position,
//             left: MediaQuery.of(context).size.width / 2 - ballRadius,
//             child: Container(
//               width: ballRadius * 2,
//               height: ballRadius * 2,
//               decoration: const BoxDecoration(
//                 color: Colors.red,
//                 shape: BoxShape.circle,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
