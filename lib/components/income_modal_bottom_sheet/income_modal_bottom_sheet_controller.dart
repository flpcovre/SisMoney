import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IncomeModalBottomSheetController extends GetxController {
  Rx<DateTime?> selectedDate = Rx<DateTime?>(null);
  final TextEditingController amountController = TextEditingController();

  void setDate(DateTime? date) {
    selectedDate.value = date;
  }
}
