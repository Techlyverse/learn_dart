import 'package:learn_dart/provider/app_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import '../../provider/quiz_provider.dart';

List<SingleChildWidget> listProviders = [
  ChangeNotifierProvider(create: (context) => QuizProvider()),
  ChangeNotifierProvider(create: (context) => AppProvider()),
];