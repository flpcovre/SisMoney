import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';

part 'question.g.dart';

@JsonSerializable(explicitToJson: true, createFieldMap: true, createPerFieldToJson: true)
class Question {
  final int id;
  final String description;
  final List<Map<String, dynamic>> alternatives;

  Question({
    required this.id,
    required this.description,
    required this.alternatives,
  });

  
  factory Question.fromJson(Map<String, Object?> json) => _$QuestionFromJson(json);

  Map<String, Object?> toJson() => _$QuestionToJson(this);
}

@Collection<Question>('questions')
final questionsRef = QuestionCollectionReference();