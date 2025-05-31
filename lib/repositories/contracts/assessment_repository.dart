import 'package:sismoney/models/contracts/authenticatable.dart';
import 'package:sismoney/models/user.dart';

abstract class AssessmentRepository {
  Stream<List<AssessmentQueryDocumentSnapshot>> getAllByUser(Authenticatable user);
  Future<AssessmentQueryDocumentSnapshot?> getOneByMonthYear(Authenticatable user, DateTime date);
  Future<Assessment> create(Authenticatable user, Assessment assessment);
  Future<AssessmentQueryDocumentSnapshot?> getOneInProgress(Authenticatable user);
  Future<void> endByMonthYear(Authenticatable user, Assessment assessment);
}