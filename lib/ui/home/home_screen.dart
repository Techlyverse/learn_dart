import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final width = MediaQuery.of(context).size.width - 40;

    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverAppBar(
          stretch: true,
          expandedHeight: 200,
          flexibleSpace: FlexibleSpaceBar(
            stretchModes: const [
              StretchMode.zoomBackground,
              StretchMode.fadeTitle
            ],
            background: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  "assets/bg.jpg",
                ),
                fit: BoxFit.cover,
              )),
              padding: EdgeInsets.all(12),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 100,
                  width: double.maxFinite,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: LinearProgressIndicator(
                              value: 0.7,
                              color: colorScheme.primary,
                              backgroundColor: Colors.white,
                            ),
                          ),
                          SizedBox(width: 20),
                          Text(
                            "12 of 20",
                            style: TextStyle(
                              //  color: Colors.white,
                              fontWeight: FontWeight.bold,
                              background: Paint()
                                ..style = PaintingStyle.stroke
                                ..color = Colors.white
                                ..strokeWidth = 20
                                ..strokeJoin = StrokeJoin.round,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: LinearProgressIndicator(
                              value: 0.5,
                              color: colorScheme.secondary,
                              backgroundColor: Colors.white,
                            ),
                          ),
                          SizedBox(width: 20),
                          Text(
                            "12 of 15",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              background: Paint()
                                ..style = PaintingStyle.stroke
                                ..color = Colors.white
                                ..strokeWidth = 20
                                ..strokeJoin = StrokeJoin.round,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              // const SizedBox(height: 12),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     Container(
              //       height: width / 2,
              //       width: width / 2,
              //       decoration: BoxDecoration(
              //         color: colorScheme.primaryContainer,
              //         borderRadius: BorderRadius.circular(12),
              //       ),
              //       child: Image.asset(
              //         "assets/user-folder.png",
              //         fit: BoxFit.cover,
              //         filterQuality: FilterQuality.none,
              //       ),
              //     ),
              //     Container(
              //       height: width / 2,
              //       width: width / 2,
              //       // decoration: BoxDecoration(
              //       //   //color: Colors.amber,
              //       //   borderRadius: BorderRadius.circular(12),
              //       // ),
              //       child: Wrap(
              //         alignment: WrapAlignment.spaceBetween,
              //         runAlignment: WrapAlignment.spaceBetween,
              //         children: [
              //           Container(
              //             height: (width - 10) / 4,
              //             width: (width - 10) / 4,
              //             decoration: BoxDecoration(
              //               color: colorScheme.secondaryContainer,
              //               borderRadius: BorderRadius.circular(12),
              //             ),
              //           ),
              //           Container(
              //             height: (width - 10) / 4,
              //             width: (width - 10) / 4,
              //             decoration: BoxDecoration(
              //               color: colorScheme.secondaryContainer,
              //               borderRadius: BorderRadius.circular(12),
              //             ),
              //           ),
              //           Container(
              //             height: (width - 10) / 4,
              //             width: (width - 10) / 4,
              //             decoration: BoxDecoration(
              //               color: colorScheme.secondaryContainer,
              //               borderRadius: BorderRadius.circular(12),
              //             ),
              //           ),
              //           Container(
              //             height: (width - 10) / 4,
              //             width: (width - 10) / 4,
              //             decoration: BoxDecoration(
              //               color: colorScheme.secondaryContainer,
              //               borderRadius: BorderRadius.circular(12),
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
              // const SizedBox(height: 12),
              // Container(
              //   height: width / 2,
              //   width: width,
              //   decoration: BoxDecoration(
              //     color: colorScheme.primaryContainer,
              //     borderRadius: BorderRadius.circular(12),
              //   ),
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
