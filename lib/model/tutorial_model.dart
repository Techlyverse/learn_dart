import 'package:learn_dart/model/quiz_model.dart';

class TutorialModel {
  const TutorialModel({
    required this.title,
    required this.subtitle,
    required this.duration,
    required this.imagePath,
    required this.program,
    required this.quiz,
  });
  final String title;
  final String subtitle;
  final String duration;
  final String imagePath;
  final String program;
  final QuizModel quiz;
}
