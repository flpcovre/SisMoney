import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPageController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  final formError = ''.obs;

  bool validateForm() {
    formError.value = '';
    return formKey.currentState?.validate() ?? false;
  }

  void setFormError(String message) {
    formError.value = message;
  }

  bool registerUserEmailPassword() {
    if (!validateForm()) return false;
    
    const registeredEmail = 'user@email.com';
    if (emailController.text == registeredEmail) {
      setFormError('Email já cadastrado');
      return false;
    }

    print('Registering with Email and Password...');
    print('Name: ${nameController.text}');
    print('Email: ${emailController.text}');
    print('Password: ${passwordController.text}');
    return true;
  }

  bool registerUserGoogle() {
    if (!validateForm()) return false;

    print('Registering with Google...');
    print('Email: ${emailController.text}');
    return true;
  }

  @override
  void onClose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }
}
