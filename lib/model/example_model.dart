class ExampleModel {
  const ExampleModel({
    required this.title,
    required this.description,
    required this.program,
    this.type,
  });
  final String title;
  final String description;
  final String program;
  final List<String>? type;
}
