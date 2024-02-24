import 'package:learn_dart/model/quiz_model.dart';

class TutorialModel {
  const TutorialModel({
    required this.title,
    required this.description,
    required this.duration,
    required this.imagePath,
    required this.markdown,
    required this.quiz,
  });
  final String title;
  final String description;
  final String duration;
  final String imagePath;
  final String markdown;
  final QuizModel quiz;
}
