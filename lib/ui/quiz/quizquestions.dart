import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:learn_dart/provider/quizprovider.dart';
import 'package:provider/provider.dart';

class QuizQuestion extends StatefulWidget {
  const QuizQuestion({Key? key}) : super(key: key);

  @override
  State<QuizQuestion> createState() => _QuizQuestionState();
}

class _QuizQuestionState extends State<QuizQuestion> {
  // int mainIndex = 0;
  // String? selectedAnswer;

  // SwiperController swiperController = SwiperController();

  // List<Map<String, dynamic>> questions = [
  //   {
  //     'question': 'What is the capital of France?',
  //     'options': ['Berlin', 'Madrid', 'Paris', 'Rome'],
  //     'correctAnswer': 'Paris',
  //   },
  //   {
  //     'question': 'Which programming language is Flutter built with?',
  //     'options': ['Dart', 'Java', 'Python', 'Swift'],
  //     'correctAnswer': 'Dart',
  //   },
  //   {
  //     'question': 'Which programming language is Flutter built with?',
  //     'options': ['Dart', 'Java', 'Python', 'Swift'],
  //     'correctAnswer': 'Dart',
  //   },
  //   {
  //     'question': 'Which programming language is Flutter built with?',
  //     'options': ['Dart', 'Java', 'Python', 'Swift'],
  //     'correctAnswer': 'Dart',
  //   },
  // ];

  // void checkAnswer(Map<String, dynamic> question) {
  //   if (selectedAnswer == question['correctAnswer']) {
  //     print('Correct!');
  //   } else {
  //     print('Incorrect!');
  //   }

  //   // Move to the next question
  //   setState(() {
  //     selectedAnswer = null;
  //     if (mainIndex < questions.length - 1) {
  //       mainIndex++;
  //       swiperController.next();
  //     } else {
  //       print('Quiz completed!');
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    QuizProvider quizProvider = Provider.of<QuizProvider>(context);
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text("My Quiz"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Swiper(
              controller: quizProvider.swiperController,
              loop: false,
              itemBuilder: (BuildContext context, int index) {
                return buildQuestion(quizProvider.questions[index]);
              },
              itemCount: quizProvider.questions.length,
              viewportFraction: 0.8,
              scale: 0.9,
              onIndexChanged: (index) {
                quizProvider.updateMainIndex(index);

                // setState(() {
                // quizProvider.mainIndex = index;
                // quizProvider.notifyListeners();
                // });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: colorScheme.primary,
                      foregroundColor: colorScheme.onPrimary),
                  onPressed: quizProvider.isBack()
                      ? () {
                          quizProvider.goBack();
                        }
                      : null,
                  child: Text("Previous"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: colorScheme.primary,
                      foregroundColor: colorScheme.onPrimary),
                  onPressed: () {
                    quizProvider.checkAnswer();
                  },
                  child: Text("Next"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildQuestion(Map<String, dynamic> question) {
    QuizProvider quizProvider = Provider.of<QuizProvider>(context);
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          question['question'],
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 20),
        Column(
          children: List.generate(
            question['options'].length,
            (index) => Padding(
              padding: EdgeInsets.all(
                  (question['options'][index] == quizProvider.selectedAnswer)
                      ? 0
                      : 8.0),
              child: RadioListTile(
                title: Text(question['options'][index]),

                tileColor:
                    question['options'][index] == quizProvider.selectedAnswer
                        ? colorScheme.primaryContainer
                        : colorScheme.secondaryContainer,
                // activeColor: colorScheme.error,
                // fillColor: colorScheme.onError,
                value: question['options'][index],
                groupValue: quizProvider.selectedAnswer,
                onChanged: (value) {
                  quizProvider.updateSelectedAnswer(value);
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
