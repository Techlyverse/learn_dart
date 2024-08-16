import 'package:cloud_firestore/cloud_firestore.dart';

class ExampleModel {
  final String id;
  // final String name;
  final String title; // Add this line
  final String description;
  final String program;
  final String type;

  ExampleModel(
      {required this.id,
      // required this.name,
      required this.title, // Add this line
      required this.description,
      required this.program,
      required this.type});

  factory ExampleModel.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    return ExampleModel(
        id: doc.id,
        // name: data['name'] ?? '',
        title: data['title'] ?? '', // Add this line
        description: data["description"],
        program: data["program"],
        type: data["type"]);
  }
}
