import 'package:learn_dart/model/example_model.dart';

const List<ExampleModel> examples = [
  ExampleModel(
    title: "For loop",
    subtitle: "this is subtitle",
    program: '''
  void main() { 
   var num = 5; 
   var factorial = 1; 
   
   for( var i = num ; i >= 1; i-- ) { 
      factorial *= i ; 
   } 
   print(factorial); 
}''',
  ),





];
