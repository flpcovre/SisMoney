import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sismoney/controllers/answer_controller.dart';
import 'package:sismoney/controllers/auth_controller.dart';
import 'package:sismoney/routes/router_app.dart';

class LoginPageController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

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
    emailController.clear();
    passwordController.clear();
    setFormError('');
  }

  Future<bool> loginUserEmailPassword() async {
    if (!validateForm()) return false;

    final result = await _authController.signInWithEmailAndPassword(
      emailController.text, 
      passwordController.text,
    );
    
    if (result is String) {
      setFormError(result);
      return false;
    }

    clearFormFields();

    if (await verifyAnswers()) {
      Get.toNamed(RouterApp.home);
    } else {
      Get.toNamed(RouterApp.questions);
    }
    return true;
  }

  Future<bool> loginUserGoogle() async {
    final result = await _authController.autheticateWithGoogle();
    if (result is String) {
      setFormError(result);
      return false;
    }

    clearFormFields();
    if (await verifyAnswers()) {
      Get.toNamed(RouterApp.home);
    } else {
      Get.toNamed(RouterApp.questions);
    }
    return true;
  }

  Future<bool> verifyAnswers() async {
    final AnswerController answerController = Get.find<AnswerController>();
    final answers = await answerController.fetch();

    if (answers.isEmpty) return false;
    return true;
  }
}
