import 'package:sismoney/models/assessment.dart';
import 'package:sismoney/repositories/contracts/assessment_repository.dart';
import 'package:sismoney/services/contracts/assessment_service.dart';

class AssessmentServiceImpl implements AssessmentService {
  final AssessmentRepository _assessmentRepository;

  AssessmentServiceImpl(this._assessmentRepository);

  @override
  Stream<List<Assessment>> getAssessments() {
    return _assessmentRepository.getAllAssessmentsByUser();
  }

}