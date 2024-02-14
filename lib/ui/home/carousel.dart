// import 'dart:async';
// import 'package:flutter/material.dart';
//
// List<String> images = ["assets/ad1.jpg", "assets/ad2.jpg", "assets/ad3.jpg"];
//
// class Carousel extends StatefulWidget {
//   const Carousel({super.key});
//
//   @override
//   State<Carousel> createState() => _CarouselState();
// }
//
// class _CarouselState extends State<Carousel> {
//   final PageController pageController = PageController();
//
//   late Timer timer;
//   int currentSlide = 0;
//
//   void updateSlide() {
//     setState(() {
//       currentSlide < images.length ? currentSlide++ : currentSlide--;
//     });
//   }
//
//   @override
//   void initState() {
//     timer = Timer.periodic(const Duration(seconds: 3), (timer) {
//       updateSlide();
//     });
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     timer.cancel();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 220,
//       child: PageView.builder(
//           scrollDirection: Axis.horizontal,
//           itemCount: images.length,
//           itemBuilder: (context, index) {
//             return BuildBackground(index: index);
//           }),
//     );
//   }
// }
//
//
//
//
//
//
//
// class BuildBackground extends StatelessWidget {
//   const BuildBackground({super.key, required this.index});
//   final int index;
//   static final GlobalKey _backgroundImageKey = GlobalKey();
//
//   @override
//   Widget build(BuildContext context) {
//     return Image.asset(
//       images[index],
//       key: _backgroundImageKey,
//       fit: BoxFit.cover,
//       filterQuality: FilterQuality.none,
//     );
//   }
// }
//
//
//
