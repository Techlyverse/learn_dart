import 'package:learn_dart/model/quiz_model.dart';

class TutorialModel {
  const TutorialModel({
    required this.title,
    required this.description,
    required this.duration,
    required this.fileName,
    this.imagePath,
    this.quiz,
  });

  final String title;
  final String description;
  final String duration;
  final String fileName;
  final String? imagePath;
  final QuizModel? quiz;
}
