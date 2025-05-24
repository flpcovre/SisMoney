import 'package:sismoney/models/contracts/authenticatable.dart';
import 'package:sismoney/models/user.dart';
import 'package:sismoney/repositories/contracts/assessment_repository.dart';
import 'package:sismoney/services/contracts/assessment_service.dart';

class AssessmentServiceImpl implements AssessmentService {
  final AssessmentRepository _assessmentRepository;

  AssessmentServiceImpl(this._assessmentRepository);

  @override
  Stream<List<AssessmentQueryDocumentSnapshot>> getAssessments(Authenticatable user) {
    return _assessmentRepository.getAllAssessmentsByUser(user);
  }

  @override
  Future<Assessment> createAssessment(Authenticatable user, Assessment assessment) async {
    return await _assessmentRepository.createAssessment(user, assessment);
  }

}