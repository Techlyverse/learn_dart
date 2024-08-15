import 'package:flutter/material.dart';
import 'package:flutter_turtle/flutter_turtle.dart';

import '../model/playground_model.dart';

final List<PlaygroundModel> playgroundList = [
  PlaygroundModel(
    title: "Line",
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
  ),
  PlaygroundModel(
    title: "gv",
    commands: [
      PenDown(),
      SetColor((_) => Colors.deepOrange),
      Repeat((_) => 8, [
        Forward((_) => 100),
        Right((_) => 45),
      ]),
      PenUp(),
    ],
  ),
  PlaygroundModel(
    title: "nhh",
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
  ),
  PlaygroundModel(
    title: "Line",
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
  ),
];
