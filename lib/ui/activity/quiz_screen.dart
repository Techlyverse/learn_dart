import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:learn_dart/provider/quiz_provider.dart';
import 'package:provider/provider.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    QuizProvider quizProvider = Provider.of<QuizProvider>(context);
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text("My Quiz"),
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
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: quizProvider.isBack()
                      ? () {
                          quizProvider.goBack();
                        }
                      : null,
                  child: const Text("Previous"),
                ),
                ElevatedButton(
                  onPressed: () {
                    quizProvider.checkAnswer();
                  },
                  child: const Text("Next"),
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
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 20),
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
