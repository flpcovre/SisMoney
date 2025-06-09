import 'package:sismoney/exceptions/base_exception.dart';
import 'package:sismoney/models/contracts/authenticatable.dart';
import 'package:sismoney/models/user.dart';
import 'package:sismoney/repositories/contracts/assessment_repository.dart';
import 'package:sismoney/services/contracts/assessment_service.dart';
import 'package:sismoney/services/contracts/income_service.dart';

class AssessmentServiceImpl implements AssessmentService {
  final AssessmentRepository _assessmentRepository;
  late final IncomeService _incomeService;

  AssessmentServiceImpl(this._assessmentRepository);

  setIncomeService(IncomeService service) {
    _incomeService = service;
  }

  @override
  Stream<List<AssessmentQueryDocumentSnapshot>> getAssessments(Authenticatable user) {
    return _assessmentRepository.getAllByUser(user);
  }

  @override
  Future<AssessmentQueryDocumentSnapshot> ensureAssessmentByMonthYear(Authenticatable user, DateTime date) async {
    final assessmentSnapshot = await _assessmentRepository.getOneByMonthYear(user, date);

    if (assessmentSnapshot == null) {

        final inProgressAssessment = await _assessmentRepository.getOneInProgress(user);

        if (inProgressAssessment != null) {
          throw BaseException('Você ainda possui um mês que não foi finalizado.');
        }

        final balance = await _incomeService.calculateUserIncomeBalance(user);

        final newAssessment = Assessment(month: date.month, year: date.year, inProgress: true, startBalance: balance, endBalance: 0, botResponse: '');
        await _assessmentRepository.create(user, newAssessment);

        return await _assessmentRepository.getOneByMonthYear(user, date)
            ?? (throw BaseException("Erro ao criar e recuperar a nova assessment."));
    }

    if (!assessmentSnapshot.data.inProgress) {
      throw BaseException('Este mês já foi finalizado e não é mais possível realizar lançamentos nele.');
    }

    return assessmentSnapshot;

  }
  
  @override
  Future<void> endAssessment(Authenticatable user, Assessment assessment) async {
    final snapshot = await _assessmentRepository.getOneInProgress(user);
    final balance  = await _incomeService.calculateUserIncomeBalance(user); 

    if (snapshot != null) {
      await _assessmentRepository.updateEndBalance(balance, snapshot);
    }

    await _assessmentRepository.endByMonthYear(user, assessment);
  }
  
  @override
  Future<AssessmentQueryDocumentSnapshot?> getByMonthYear(Authenticatable user,int month, int year) async {
    final date = DateTime(year, month);

    return await _assessmentRepository.getOneByMonthYear(user, date);
  }
  
  @override
  Future<void> setBotResponse(AssessmentQueryDocumentSnapshot assessment, String response) async {
    await _assessmentRepository.updateBotResponse(response, assessment);
  }
}