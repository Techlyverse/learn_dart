import 'package:learn_dart/provider/app_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import '../../provider/leaderboard_provider.dart';
import '../../provider/quizprovider.dart';

List<SingleChildWidget> listProviders = [
  ChangeNotifierProvider(create: (context) => LeaderboardProvider()),
  ChangeNotifierProvider(create: (context) => QuizProvider()),
  ChangeNotifierProvider(create: (context) => AppProvider()),
];