import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import '../../provider/leadershiprovider.dart';
import '../../provider/quizprovider.dart';

List<SingleChildWidget> listProviders = [
  ChangeNotifierProvider(create: (context) => LeadershipProvider()),
  ChangeNotifierProvider(create: (context) => QuizProvider())
];