import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';
import 'package:learn_dart/model/quiz_model.dart';
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

    return Scaffold(
      appBar: AppBar(
        title: const Text("My Quiz"),
      ),
      body: Column(
        children: [
          Expanded(
            child: AppinioSwiper(
              cardCount: quizProvider.questions.length,
              controller: quizProvider.swiperController,
              onSwipeEnd: (previousIndex, targetIndex, activity) {
                quizProvider.mainIndex = previousIndex;
                // print("the position ${position.index} ");
                // quizProvider.updateMainIndex(position.index);
                quizProvider.checkAnswer(previousIndex);
              },
              onCardPositionChanged: (position) {},
              cardBuilder: (BuildContext context, int index) {
                return buildQuestion(quizProvider.questions[index]);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: quizProvider.mainIndex > 0
                      ? () {
                          // quizProvider.swiperController.unswipe();
                          quizProvider.goBack();
                        }
                      : null,
                  child: const Text("Previous"),
                ),
                ElevatedButton(
                  onPressed: () {
                    // quizProvider.checkAnswer(quizProvider.mainIndex);
                    quizProvider.swiperController.swipeRight();
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

  Widget buildQuestion(QuizModel question) {
    QuizProvider quizProvider = Provider.of<QuizProvider>(context);
    final colorScheme = Theme.of(context).colorScheme;

    return Card(
      // color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            question.question,
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          Column(
            children: List.generate(
              question.options.length,
              (index) => Padding(
                padding: EdgeInsets.all(
                    (question.options[index] == quizProvider.selectedAnswer)
                        ? 0
                        : 8.0),
                child: RadioListTile(
                  title: Text(question.options[index]),

                  tileColor:
                      question.options[index] == quizProvider.selectedAnswer
                          ? colorScheme.primaryContainer
                          : colorScheme.secondaryContainer,
                  // activeColor: colorScheme.error,
                  // fillColor: colorScheme.onError,
                  value: question.options[index],
                  groupValue: quizProvider.selectedAnswer,
                  onChanged: (value) {
                    quizProvider.updateSelectedAnswer(value);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
