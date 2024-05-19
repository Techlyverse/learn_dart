import 'package:flutter_turtle/flutter_turtle.dart';

class PlaygroundModel {
  const PlaygroundModel({
    required this.title,
    required this.commands,
  });
  final String title;
  final List<TurtleCommand> commands;
}
