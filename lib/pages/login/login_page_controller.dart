import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPageController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  final formError = ''.obs;

  bool validateForm() {
    formError.value = '';
    return formKey.currentState?.validate() ?? false;
  }

  void setFormError(String message) {
    formError.value = message;
  }

  bool loginUserEmailPassword() {
    if (!validateForm()) return false;
    
    const registeredEmail = 'user@email.com';
    const registeredPassword = '123456';
    if (emailController.text != registeredEmail || passwordController.text != registeredPassword) {
      setFormError('Email ou senha incorretos');
      return false;
    }

    print('Logging in with Email and Password...');
    print('Email: ${emailController.text}');
    print('Password: ${passwordController.text}');
    return true;
  }

  bool loginUserGoogle() {
    if (!validateForm()) return false;

    print('Loggin in with Google...');
    print('Email: ${emailController.text}');
    return true;
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
