import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sismoney/models/contracts/authenticatable.dart';

part 'user.g.dart';

@JsonSerializable(
  explicitToJson: true,
  createFieldMap: true,
  createPerFieldToJson: true,
)
class User implements Authenticatable {
  @override
  final String name;
  @override
  final String email;

  User({required this.name, required this.email});

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);

  Map<String, Object?> toJson() => _$UserToJson(this);
}

@JsonSerializable(
  explicitToJson: true,
  createFieldMap: true,
  createPerFieldToJson: true,
)
class Assessment {
  final int month;
  final int year;
  final bool inProgress;

  Assessment({
    required this.month,
    required this.year,
    required this.inProgress,
  });

  factory Assessment.fromJson(Map<String, Object?> json) =>
      _$AssessmentFromJson(json);

  Map<String, Object?> toJson() => _$AssessmentToJson(this);
}

@JsonSerializable(
  explicitToJson: true,
  createFieldMap: true,
  createPerFieldToJson: true,
)
class Income {
  final int day;
  final String description;
  final String type;
  final double cast;

  Income({required this.day, required this.description, required this.type, required this.cast});

  factory Income.fromJson(Map<String, Object?> json) =>
      _$IncomeFromJson(json);

  Map<String, Object?> toJson() => _$IncomeToJson(this);
}

@JsonSerializable(
  explicitToJson: true,
  createFieldMap: true,
  createPerFieldToJson: true,
)
class Answer {
  final int questionId;
  final int alternativeId;

  Answer({required this.questionId, required this.alternativeId});

  factory Answer.fromJson(Map<String, Object?> json) =>
    _$AnswerFromJson(json);
  
  Map<String, Object?> toJson() => _$AnswerToJson(this);
}

@Collection<User>('users')
@Collection<Assessment>('users/*/assessments')
@Collection<Income>('users/*/assessments/*/incomes')
@Collection<Answer>('users/*/answers')
final usersRef = UserCollectionReference();
