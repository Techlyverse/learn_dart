import 'package:learn_dart/provider/app_provider.dart';
import 'package:learn_dart/provider/example_provider.dart';
import 'package:learn_dart/provider/onBoardingprovider.dart';
import 'package:learn_dart/provider/playground_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import '../../provider/quiz_provider.dart';
import '../provider/tutorial_provider.dart';

List<SingleChildWidget> listProviders = [
  ChangeNotifierProvider(create: (context) => QuizProvider()),
  ChangeNotifierProvider(create: (context) => AppProvider()),
  ChangeNotifierProvider(create: (context) => ExampleProvider()),
  ChangeNotifierProvider(create: (context) => TutorialProvider()),
  ChangeNotifierProvider(create: (context)=> OnBoardingProvider()),
  ChangeNotifierProvider(create: (context)=> PlaygroundProvider()),
];