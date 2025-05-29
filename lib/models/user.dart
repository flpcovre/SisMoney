import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sismoney/models/contracts/authenticatable.dart';

part 'user.g.dart';

@JsonSerializable(explicitToJson: true, createFieldMap: true, createPerFieldToJson: true)
class User implements Authenticatable {
  @override
  final String name;
  @override
  final String email;

  User({
    required this.name,
    required this.email,
  });

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);

  Map<String, Object?> toJson() => _$UserToJson(this);
}

@JsonSerializable(explicitToJson: true, createFieldMap: true, createPerFieldToJson: true)
class Assessment {
  final int id;
  final DateTime startDate;
  final DateTime endDate;
  final double percent;
  final bool profit;

  Assessment({
    required this.id,
    required this.startDate,
    required this.endDate,
    required this.percent,
    required this.profit,
  });

  factory Assessment.fromJson(Map<String, Object?> json) => _$AssessmentFromJson(json);

  Map<String, Object?> toJson() => _$AssessmentToJson(this);
}

@Collection<User>('users')
@Collection<Assessment>('users/*/assessments')
final usersRef = UserCollectionReference();