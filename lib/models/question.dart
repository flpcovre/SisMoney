import 'package:sismoney/models/alternative.dart';

class Question {
  final int id;
  final String description;
  final List<Alternative> alternatives;

  Question({
    required this.id,
    required this.description,
    required this.alternatives
  });
}