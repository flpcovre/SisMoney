import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';

part 'assessment.g.dart';

@JsonSerializable(explicitToJson: true, createFieldMap: true, createPerFieldToJson: true)
class Assessment {
  final int id;
  final String startDate;
  final String endDate;
  final String percent;
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

@Collection<Assessment>('assessments')
final assessmentsRef = AssessmentCollectionReference();