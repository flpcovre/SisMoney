import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IncomeModalBottomSheetController extends GetxController {
  Rx<DateTime?> selectedDate = Rx<DateTime?>(null);
  RxString selectedValue = 'Despesa'.obs;

  final TextEditingController amountController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  void setDate(DateTime? date) {
    selectedDate.value = date;
  }

  bool submitForm() {
    print('Amount: ${amountController.text}');
    print('Description: ${descriptionController.text}');
    print('Date: ${selectedDate.value}');
    print('Type: ${selectedValue.value}');

    return true;
  }
}
