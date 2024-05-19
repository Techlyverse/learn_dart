import 'package:flutter/material.dart';
import 'package:flutter_turtle/flutter_turtle.dart';

class PlaygroundScreen extends StatelessWidget {
  const PlaygroundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Playground")),
      body: Center(
        child: AnimatedTurtleView(
          animationDuration: const Duration(seconds: 1),
          commands: [
            PenDown(),
            SetColor((_) => Colors.deepOrange),
            Repeat((_) => 20, [
              Repeat((_) => 180, [
                Forward((_) => 3),
                Right((_) => 2),
              ]),
              Right((_) => 20),
            ]),
            PenUp(),
          ],
          // commands: [
          //   PenDown(),
          //   SetColor((_) => Colors.deepOrange),
          //   Repeat((_) => 3, [
          //     Forward((_) => 100),
          //     Right((_) => 120),
          //   ]),
          //   PenUp(),
          // ],
        ),
      ),
    );
  }
}

/*
commands: [
            PenDown(),
            SetColor((_) => Colors.deepOrange),
            Repeat((_) => 8, [
              Forward((_) => 100),
              Right((_) => 45),
            ]),
            PenUp(),
          ],
 */

/*
commands: [
            PenDown(),
            SetColor((_) => Colors.deepOrange),
            Repeat((_) => 10, [
              Repeat((_) => 180, [
                Forward((_) => 3),
                Right((_) => 2),
              ]),
              Right((_) => 20),
            ]),
            PenUp(),
          ],
 */
