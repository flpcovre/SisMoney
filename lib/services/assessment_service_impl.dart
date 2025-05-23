import 'package:sismoney/models/contracts/autenticatable.dart';
import 'package:sismoney/models/user.dart';
import 'package:sismoney/repositories/contracts/assessment_repository.dart';
import 'package:sismoney/services/contracts/assessment_service.dart';

class AssessmentServiceImpl implements AssessmentService {
  final AssessmentRepository _assessmentRepository;

  AssessmentServiceImpl(this._assessmentRepository);

  @override
  Stream<List<Assessment>> getAssessments(Autenticatable user) {
    return _assessmentRepository.getAllAssessmentsByUser(user);
  }

  @override
  Future<Assessment> createAssessment(Autenticatable user, Assessment assessment) async {
    return await _assessmentRepository.createAssessment(user, assessment);
  }

}