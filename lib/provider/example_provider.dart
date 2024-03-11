import 'package:flutter/material.dart';
import 'package:learn_dart/constant/app_constant.dart';
import 'package:learn_dart/data/example_list.dart';
import 'package:learn_dart/model/example_model.dart';
import 'package:learn_dart/ui/example/example_screen.dart';

class ExampleProvider extends ChangeNotifier {
  int currentIndex = 0;
  List<ExampleModel> examplelist=[];
  ExampleModel get currentExample => exampleList[currentIndex];
  String? filter;
  final List<ExampleModel> _examples=exampleList;
  List<ExampleModel> get examples => filter==null
  ? _examples
  : _examples.where((e)=>e.type==filter!).toList();

  void applyFilter(String? newFilter) {
  filter = newFilter;
  notifyListeners();
}


void  search(filter){
  print("printing list,$filter");
  if(filter!=null){
    examplelist=_examples;
  }
  else{
   examplelist=  _examples.where((e)=>e.type==filter!).toList();
  }
  notifyListeners();
}

  void updateIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  void openExample({required BuildContext context, int? index}) {
    updateIndex(index ?? currentIndex);
    if (MediaQuery.of(context).size.width < AppConstant.smallBreakPoint) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const ExampleScreen()));
    }
  }

}
