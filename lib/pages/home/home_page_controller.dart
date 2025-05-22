import 'package:get/get.dart';
import 'package:sismoney/models/assessment.dart';

class HomePageController extends GetxController {
  RxBool isEmpty = true.obs;

  final List<Assessment> assessments = [
    Assessment(id: 1, startDate: '01/01/2025', endDate: '01/02/2025', percent: '1,24', profit: true),
    Assessment(id: 2, startDate: '01/01/2025', endDate: '01/02/2025', percent: '0,24', profit: true),
    Assessment(id: 3, startDate: '01/01/2025', endDate: '01/02/2025', percent: '5,32', profit: false),
  ];
}