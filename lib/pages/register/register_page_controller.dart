
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sismoney/controllers/auth_controller.dart';
import 'package:sismoney/routes/router_app.dart';

class RegisterPageController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  final _authController = Get.find<AuthController>();

  final formError = ''.obs;

  bool validateForm() {
    formError.value = '';
    return formKey.currentState?.validate() ?? false;
  }

  void setFormError(String message) {
    formError.value = message;
  }

  void clearFormFields() {
    nameController.clear();
    emailController.clear();
    passwordController.clear();
    confirmPasswordController.clear();
    setFormError('');
  }

  Future<bool> signUpUserEmailPassword() async {
    if (!validateForm()) return false;
    
    final result = await _authController.signUpWithEmailAndPassword(nameController.text, emailController.text, passwordController.text);
    if (result is String) {
      setFormError(result);
      return false;
    }

    print('User signed up with Email and Password...');
    print('Name: ${nameController.text}');
    print('Email: ${emailController.text}');
    print('Password: ${passwordController.text}');

    clearFormFields();
    Get.toNamed(RouterApp.home);
    return true;
  }

  Future<bool> signUpGoogle() async {
    final result = await _authController.autheticateWithGoogle();
    if (result is String) {
      setFormError(result);
      return false;
    }

    print('Singing up with Google...');
    print('Email: ${emailController.text}');
    clearFormFields();
    Get.toNamed(RouterApp.home);
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
