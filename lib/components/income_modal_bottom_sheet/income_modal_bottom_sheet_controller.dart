import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sismoney/controllers/income_controller.dart';
import 'package:sismoney/layouts/slivers_scaffold.dart';
import 'package:sismoney/models/user.dart';

class IncomeModalBottomSheetController extends GetxController {
  Rx<DateTime?> selectedDate = Rx<DateTime?>(null);
  RxString selectedValue = 'Despesa'.obs;
  RxString formError = ''.obs;

  final TextEditingController amountController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final IncomeController _incomeController = Get.find<IncomeController>();

  void setDate(DateTime? date) {
    selectedDate.value = date;
  }

  bool validateTextFormFields(String value) {
    if (value.trim() == '') {
      formError.value = 'Você precisa preencher os campos corretamente';
      return false;
    }
    formError.value = '';
    return true;
  }

  Future<bool> submitForm() async {
    if (
      !validateTextFormFields(amountController.text) ||
      !validateTextFormFields(descriptionController.text)
    ) {
      return false;
    }
    
    final income = Income(
      day: selectedDate.value!.day, 
      description: descriptionController.text, 
      type: selectedValue.value == 'Despesa' ? 'expense' : 'profit', 
      cast: double.parse(amountController.text.replaceAll(',', '.'))
    );

    await _incomeController.store(income, selectedDate.value!);

    final sliversController = Get.find<SliversScaffoldController>();
    sliversController.refreshBalance();

    return true;
  }
}
