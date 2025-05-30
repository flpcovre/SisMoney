import 'package:sismoney/exceptions/base_exception.dart';
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
  Future<AssessmentQueryDocumentSnapshot> ensureAssessmentByMonthYear(Authenticatable user, DateTime date) async {
    final assessmentSnapshot = await _assessmentRepository.getOneAsssessmentByMonthYear(user, date);

    if (assessmentSnapshot == null) {

        final inProgressAssessment = await _assessmentRepository.getOneAssessmentInProgress(user);

        if (inProgressAssessment == null) {
          throw BaseException('Você ainda possui um mês que não foi finalizado.');
        }

        final newAssessment = Assessment(month: date.month, year: date.year, inProgress: true);
        await _assessmentRepository.createAssessment(user, newAssessment);

        return await _assessmentRepository.getOneAsssessmentByMonthYear(user, date)
            ?? (throw BaseException("Erro ao criar e recuperar a nova assessment."));
    }

    if (!assessmentSnapshot.data.inProgress) {
      throw BaseException('Este mês já foi finalizado, não é mais possível realizar lançamentos nele.');
    }

    return assessmentSnapshot;

  }

}